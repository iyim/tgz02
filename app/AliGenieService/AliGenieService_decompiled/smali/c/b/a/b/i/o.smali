.class public Lc/b/a/b/i/o;
.super Lc/b/a/b/i/i;
.source ""


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lc/b/a/b/i/i;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/b/k/b;
    .locals 6

    new-instance v0, Lc/b/a/b/k/b;

    invoke-direct {v0}, Lc/b/a/b/k/b;-><init>()V

    const-string v1, "_tag"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "am_activity_launch_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "_time"

    const-string v5, "tag"

    if-eqz v2, :cond_0

    invoke-virtual {v0, v5, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {p0, v4}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_time"

    .line 2
    invoke-virtual {v0, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "activity_name_original"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "activity_name"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "this_time"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "total_time"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "start_type"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "network_fail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "code"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "reason"

    :goto_0
    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "am_crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "process_name"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "exception"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "message"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "file"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "line"

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v4}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "am_pss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Native"

    const-string v4, "SwapPss"

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "Pid"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "UID"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "Process Name"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "Pss"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "Uss"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {p0, v4}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "am_meminfo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "Cached"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "Free"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "Zram"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v1, "Kernel"

    invoke-virtual {p0, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {p0, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v3, v1}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    :cond_4
    :goto_3
    return-object v0
.end method
