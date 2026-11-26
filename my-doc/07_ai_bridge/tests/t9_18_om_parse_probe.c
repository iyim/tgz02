/*
 * t9_18_om_parse_probe.c -- T9-18.2 device-side (ARM32) JSON parse validation.
 * Parses the actual Open-Meteo response fetched on the device using the SAME
 * restricted parser (model_json.c) that production ai_worker ships with, then
 * prints the fields the future weather skill needs. Exit 0 = parse clean.
 */
#include "model_json.h"

#include <stdio.h>
#include <string.h>

static char buf[64 * 1024];

static int read_file(const char *path)
{
    FILE *f = fopen(path, "rb");
    size_t n;
    if (f == NULL) { printf("open %s failed\n", path); return -1; }
    n = fread(buf, 1, sizeof(buf) - 1, f);
    fclose(f);
    buf[n] = '\0';
    return (int)n;
}

/* root[a][b] as a number, via the find/cursor API */
static int num_field(const char *json, size_t len, const char *a, const char *b, double *out)
{
    mj root;

    mj_open(&root, json, len);
    if (mj_obj_open(&root) != 0) return -1;
    if (mj_obj_find(&root, a) != 1) return -1;
    if (mj_obj_open(&root) != 0) return -1;
    if (mj_obj_find(&root, b) != 1) return -1;
    if (mj_num_value(&root, out) != 0) return -1;
    return 0;
}

/* root[a][b] as a string */
static int str_field(const char *json, size_t len, const char *a, const char *b,
                     char *out, size_t cap)
{
    mj root;
    size_t used;

    mj_open(&root, json, len);
    if (mj_obj_open(&root) != 0) return -1;
    if (mj_obj_find(&root, a) != 1) return -1;
    if (mj_obj_open(&root) != 0) return -1;
    if (mj_obj_find(&root, b) != 1) return -1;
    if (mj_str_value(&root, out, cap, &used) != 0) return -1;
    return 0;
}

/* root["daily"]["time"] array: print first N elements */
static int arr_strings(const char *json, size_t len, const char *a, const char *b,
                       int maxn)
{
    mj root;
    char val[32];
    size_t used;
    int k = 0;

    mj_open(&root, json, len);
    if (mj_obj_open(&root) != 0) return -1;
    if (mj_obj_find(&root, a) != 1) return -1;
    if (mj_obj_open(&root) != 0) return -1;
    if (mj_obj_find(&root, b) != 1) return -1;
    if (mj_arr_open(&root) != 0) return -1;
    while (k < maxn && mj_peek_c(&root) == '"') {
        if (mj_str_value(&root, val, sizeof(val), &used) != 0) return -1;
        printf("%s[%d] = %s\n", b, k, val);
        k++;
        if (mj_arr_next(&root) != 1) break;
    }
    return 0;
}

int main(int argc, char **argv)
{
    int n;
    double temp = -999, feels = -999, hum = -999;
    size_t len;
    char tz[32];

    if (argc < 2) { printf("usage: %s <json-file>\n", argv[0]); return 2; }
    n = read_file(argv[1]);
    if (n <= 0) return 2;
    len = (size_t)n;
    printf("loaded %d bytes\n", n);

    /* sanity: full-document skip = grammar check */
    {
        mj j;
        mj_open(&j, buf, len);
        if (mj_skip(&j) != 0 || mj_bad(&j)) {
            printf("GRAMMAR FAIL (mj_skip/mj_bad)\n");
            return 1;
        }
        printf("grammar: OK (full document consumed, no bad state)\n");
    }

    if (num_field(buf, len, "current", "temperature_2m", &temp) == 0)
        printf("current.temperature_2m = %.1f\n", temp);
    else
        printf("current.temperature_2m = <not found>\n");

    if (num_field(buf, len, "current", "apparent_temperature", &feels) == 0)
        printf("current.apparent_temperature = %.1f\n", feels);
    else
        printf("current.apparent_temperature = <not found>\n");

    if (num_field(buf, len, "current", "relative_humidity_2m", &hum) == 0)
        printf("current.relative_humidity_2m = %.0f\n", hum);
    else
        printf("current.relative_humidity_2m = <not found>\n");

    if (str_field(buf, len, "current", "time", tz, sizeof(tz)) == 0)
        printf("current.time = %s\n", tz);
    else
        printf("current.time = <not found>\n");

    printf("--- daily.time (first 4) ---\n");
    (void)arr_strings(buf, len, "daily", "time", 4);

    printf("=== parse probe done ===\n");
    return 0;
}
