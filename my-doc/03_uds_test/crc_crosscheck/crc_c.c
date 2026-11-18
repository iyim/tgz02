/*
 * crc_c.c -- FNV-1a reference side of the JS/C cross-check.
 *
 * Uses the real header (../tgz2_frame.h), i.e. the exact function the bridge
 * protocol is defined by:  tgz2_fnv1a().
 *
 * build: gcc -O2 -o crc_c crc_c.c        (Windows TDM-GCC / Linux / NDK 均可)
 * run  : ./crc_c [cases.bin]             -> "idx  len  crc_hex  name" per line
 */
#include "../tgz2_frame.h"

int main(int argc, char **argv)
{
    const char *path = argc > 1 ? argv[1] : "cases.bin";
    FILE *f = fopen(path, "rb");
    if (!f) { fprintf(stderr, "cannot open %s\n", path); return 2; }

    char magic[8];
    if (fread(magic, 1, 8, f) != 8 || memcmp(magic, "TGZ2CRC1", 8) != 0) {
        fprintf(stderr, "bad magic in %s\n", path);
        fclose(f);
        return 2;
    }
    uint32_t count = 0;
    if (fread(&count, 4, 1, f) != 1) { fclose(f); return 2; }
    printf("C side: header = %s, cases = %u\n", "../tgz2_frame.h", count);

    static uint8_t data[1 << 20];
    for (uint32_t i = 0; i < count; i++) {
        uint8_t nlen = 0;
        char name[64] = {0};
        uint32_t dlen = 0;
        if (fread(&nlen, 1, 1, f) != 1) break;
        if (fread(name, 1, nlen, f) != nlen) break;
        if (fread(&dlen, 4, 1, f) != 1) break;
        if (dlen > sizeof(data)) { fprintf(stderr, "case too big\n"); break; }
        if (dlen && fread(data, 1, dlen, f) != dlen) break;

        uint32_t crc = tgz2_fnv1a(data, dlen);
        printf("%u\t%u\t%08x\t%s\n", i, dlen, crc, name);
    }
    fclose(f);
    return 0;
}
