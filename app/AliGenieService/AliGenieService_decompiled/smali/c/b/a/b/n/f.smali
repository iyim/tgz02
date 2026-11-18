.class public Lc/b/a/b/n/f;
.super Lc/b/a/b/n/g;
.source ""


# instance fields
.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 2

    invoke-direct {p0, p1}, Lc/b/a/b/n/g;-><init>(Lc/b/a/b/h/i$a;)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lc/b/a/b/n/f;->i:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/b/a/b/n/f;->d:J

    iget-wide v0, p0, Lc/b/a/b/n/f;->d:J

    iput-wide v0, p0, Lc/b/a/b/n/f;->e:J

    iput-wide v0, p0, Lc/b/a/b/n/f;->f:J

    iget-object p1, p0, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    invoke-static {p1}, Lc/b/a/b/o/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/b/n/f;->h:Ljava/lang/String;

    iget-object p1, p0, Lc/b/a/b/n/g;->b:Landroid/content/Context;

    invoke-static {p1}, Lc/b/a/b/o/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/b/n/f;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lc/b/a/b/o/j;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "event_type"

    const-string v3, "usage"

    const-string v4, "event_name"

    const-string v5, "activity_change"

    invoke-static {v2, v3, v4, v5}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-wide v4, p0, Lc/b/a/b/n/f;->e:J

    sub-long v4, v0, v4

    .line 1
    iget-object v6, p1, Lc/b/a/b/o/j;->a:Ljava/lang/String;

    :try_start_0
    const-string v6, "pre_acitivity"

    .line 2
    iget-object v7, p0, Lc/b/a/b/n/f;->g:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "pre_package_lable"

    sget-object v7, Lc/b/a/b/o/g;->o:Ljava/lang/String;

    invoke-static {v7}, Lc/b/a/b/o/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "pre_package_version"

    sget-object v7, Lc/b/a/b/o/g;->o:Ljava/lang/String;

    invoke-static {v7}, Lc/b/a/b/o/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cur_activity"

    .line 3
    iget-object v7, p1, Lc/b/a/b/o/j;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "start_time"

    iget-wide v7, p0, Lc/b/a/b/n/f;->e:J

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "start_time_format"

    iget-object v7, p0, Lc/b/a/b/n/f;->i:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    iget-wide v9, p0, Lc/b/a/b/n/f;->e:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "end_time"

    invoke-virtual {v3, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "end_time_format"

    iget-object v7, p0, Lc/b/a/b/n/f;->i:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "activity_screen_time"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "activity_screen_time_format"

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    const-string v6, "JSONException:"

    invoke-static {v5, v6, v4}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v4, "payload"

    invoke-virtual {v2, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    iput-wide v0, p0, Lc/b/a/b/n/f;->e:J

    .line 5
    iget-object p1, p1, Lc/b/a/b/o/j;->a:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lc/b/a/b/n/f;->g:Ljava/lang/String;

    return-void
.end method

.method public c(Lc/b/a/b/o/j;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "event_type"

    const-string v3, "usage"

    const-string v4, "event_name"

    const-string v5, "package_change"

    invoke-static {v2, v3, v4, v5}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-wide v4, p0, Lc/b/a/b/n/f;->f:J

    sub-long v4, v0, v4

    .line 1
    iget-object p1, p1, Lc/b/a/b/o/j;->a:Ljava/lang/String;

    .line 2
    :try_start_0
    sget-object v6, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    if-eqz v6, :cond_0

    sget-object v6, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    sget-object v6, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/b/a/b/o/m;

    iget-wide v6, v6, Lc/b/a/b/o/m;->g:J

    sub-long v6, v0, v6

    const-string v8, "cur_procTime"

    invoke-virtual {v3, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "cur_component"

    sget-object v7, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/o/m;

    iget-object v7, v7, Lc/b/a/b/o/m;->b:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cur_startType"

    sget-object v7, Lc/b/a/b/h/s;->c:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/a/b/o/m;

    iget-object v7, v7, Lc/b/a/b/o/m;->c:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v6, "pre_package"

    iget-object v7, p0, Lc/b/a/b/n/f;->h:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "pre_package_lable"

    iget-object v7, p0, Lc/b/a/b/n/f;->h:Ljava/lang/String;

    invoke-static {v7}, Lc/b/a/b/o/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "pre_package_version"

    iget-object v7, p0, Lc/b/a/b/n/f;->h:Ljava/lang/String;

    invoke-static {v7}, Lc/b/a/b/o/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cur_package"

    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "start_time"

    iget-wide v7, p0, Lc/b/a/b/n/f;->f:J

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "start_time_format"

    iget-object v7, p0, Lc/b/a/b/n/f;->i:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    iget-wide v9, p0, Lc/b/a/b/n/f;->f:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "end_time"

    invoke-virtual {v3, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "end_time_format"

    iget-object v7, p0, Lc/b/a/b/n/f;->i:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "package_screen_time"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "package_screen_time_format"

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Lc/b/a/b/n/g;->c:Ljava/lang/String;

    const-string v6, "JSONException:"

    invoke-static {v5, v6, v4}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v4, "payload"

    invoke-virtual {v2, v4, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lc/b/a/b/k/b;

    invoke-static {v2}, Lc/b/a/b/o/d;->a(Lc/b/a/b/k/b;)V

    iput-wide v0, p0, Lc/b/a/b/n/f;->f:J

    iput-object p1, p0, Lc/b/a/b/n/f;->h:Ljava/lang/String;

    return-void
.end method
