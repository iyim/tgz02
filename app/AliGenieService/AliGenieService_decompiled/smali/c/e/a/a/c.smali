.class public Lc/e/a/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z

.field public static final b:Ljava/lang/Object;

.field public static c:Z

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static final g:Ljava/lang/Object;

.field public static h:Ljava/lang/String;

.field public static final synthetic i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lc/e/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lc/e/a/a/c;->i:Z

    sput-boolean v1, Lc/e/a/a/c;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/a/c;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lc/e/a/a/c;->c:Z

    const-string v0, "hsdk"

    sput-object v0, Lc/e/a/a/c;->d:Ljava/lang/String;

    const-string v0, "alid "

    sput-object v0, Lc/e/a/a/c;->e:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lc/e/a/a/c;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/e/a/a/c;->g:Ljava/lang/Object;

    sput-object v0, Lc/e/a/a/c;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static a()V
    .locals 5

    .line 1
    sget-boolean v0, Lc/e/a/c;->e0:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xdbba0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x15f90

    :goto_0
    const/4 v2, 0x0

    .line 2
    new-instance v3, Lc/e/a/a/d;

    const/16 v4, 0x1f4

    invoke-direct {v3, v4}, Lc/e/a/a/d;-><init>(I)V

    invoke-static {v2, v3, v0, v1}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_1

    sget-boolean p0, Lc/e/a/a/c;->i:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lc/e/a/a/c;->b:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lc/e/a/a/c;->f:Ljava/lang/String;

    invoke-static {}, Lc/e/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/c;->a(Z)Z

    sget-object v0, Lc/e/a/a/c;->f:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lc/e/a/a/c;->f:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/g;->a(Ljava/lang/String;)V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Z)Z
    .locals 15

    sget-boolean v0, Lc/e/a/a/c;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    xor-int/lit8 v0, p0, 0x1

    sput-boolean v0, Lc/e/a/a/c;->c:Z

    sget-object v0, Lc/e/a/b;->b:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/high16 v0, 0x20000000

    .line 3
    sget v3, Lc/e/a/c;->H:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    sget-boolean v0, Lc/e/a/c;->X:Z

    if-nez v0, :cond_4

    invoke-static {}, Lc/e/a/c;->q()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_5

    return v1

    .line 5
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bvu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lc/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v6, :cond_6

    const-string v6, " "

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    if-ne v6, v7, :cond_6

    aget-object v4, v3, v1

    aget-object v5, v3, v2

    invoke-static {v5}, Lc/e/a/a/f;->c(Ljava/lang/String;)J

    move-result-wide v5

    aget-object v3, v3, v10

    invoke-static {v3}, Lc/e/a/a/f;->c(Ljava/lang/String;)J

    move-result-wide v11

    long-to-int v3, v11

    move-wide v13, v5

    move v6, v3

    move-object v3, v4

    move-wide v4, v13

    goto :goto_3

    :cond_6
    move v6, v1

    move-object v3, v9

    :goto_3
    sput-boolean v2, Lc/e/a/a/c;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    const-wide/32 v4, 0xf731400

    cmp-long v4, v11, v4

    if-gez v4, :cond_9

    const-string v4, "o"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sput-boolean v1, Lc/e/a/a/c;->a:Z

    :goto_4
    move v4, v1

    goto :goto_5

    :cond_8
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sput-boolean v1, Lc/e/a/a/c;->a:Z

    :cond_9
    move v4, v2

    :goto_5
    if-eqz v4, :cond_1b

    if-eqz p0, :cond_a

    goto/16 :goto_f

    :cond_a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    if-ne v6, p0, :cond_b

    return v1

    :cond_b
    const-string p0, "per"

    sput-object p0, Lc/e/a/a/c;->f:Ljava/lang/String;

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    sget-object v4, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v4, v4, Lc/e/a/g/b;->a:Ljava/lang/String;

    const-string v5, "platform"

    .line 9
    invoke-static {p0, v5, v4}, Lc/e/a/a/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lc/e/a/b;->a:Ljava/lang/String;

    const-string v5, "pkgname"

    invoke-static {p0, v5, v4}, Lc/e/a/a/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v4

    const-string v5, "process"

    invoke-static {p0, v5, v4}, Lc/e/a/a/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc/e/a/b;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "version"

    invoke-static {p0, v5, v4}, Lc/e/a/a/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cver"

    const-string v5, "3.2.2.2"

    invoke-static {p0, v4, v5}, Lc/e/a/a/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ctag"

    const-string v5, "release"

    invoke-static {p0, v4, v5}, Lc/e/a/a/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    sget-object v4, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v4, v4, Lc/e/a/g/b;->U:Z

    if-eqz v4, :cond_c

    const-string v4, "true"

    goto :goto_6

    :cond_c
    const-string v4, "false"

    :goto_6
    const-string v5, "inter"

    .line 11
    invoke-static {p0, v5, v4}, Lc/e/a/a/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "os"

    const-string v5, "android"

    invoke-static {p0, v4, v5}, Lc/e/a/a/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-static {}, Lc/e/a/a/g;->c()[B

    move-result-object v5

    invoke-static {v4, v1, v5}, Lc/e/a/a/b;->a([BI[B)V

    invoke-static {}, Lc/e/a/a/b;->a()[B

    move-result-object v5

    invoke-static {v4, v8, v5}, Lc/e/a/a/b;->a([BI[B)V

    const/16 v5, 0x8

    invoke-static {}, Lc/e/a/a/c;->d()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lc/e/a/a/b;->a([BI[B)V

    const/16 v5, 0xc

    invoke-static {}, Lc/e/a/b;->d()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lc/e/a/a/b;->a([BI[B)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 12
    invoke-static {p0, v4, v2, v2}, Lc/e/a/a/b;->a([B[BZZ)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    move-object p0, v9

    :goto_7
    if-nez p0, :cond_d

    goto :goto_9

    .line 14
    :cond_d
    invoke-static {}, Lc/e/a/a/c;->f()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e

    goto :goto_9

    :cond_e
    invoke-static {v5, p0}, Lc/e/a/a/b;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_9

    .line 15
    :cond_f
    :try_start_1
    invoke-static {p0, v4, v1, v2}, Lc/e/a/a/b;->a([B[BZZ)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p0

    .line 16
    invoke-static {p0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    move-object p0, v9

    :goto_8
    if-eqz p0, :cond_10

    .line 17
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p0}, Ljava/lang/String;-><init>([B)V

    :cond_10
    :goto_9
    if-eqz v9, :cond_19

    const-string p0, "retcode="

    .line 18
    invoke-virtual {v9, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "retcode=0"

    invoke-virtual {v9, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    sput-boolean v2, Lc/e/a/a/c;->a:Z

    const-string p0, "aus"

    sput-object p0, Lc/e/a/a/c;->f:Ljava/lang/String;

    const-string p0, "o"

    goto :goto_a

    :cond_11
    sput-boolean v1, Lc/e/a/a/c;->a:Z

    const-string p0, "1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "auf2"

    sput-object p0, Lc/e/a/a/c;->f:Ljava/lang/String;

    const-string p0, "2"

    goto :goto_a

    :cond_12
    const-string p0, "auf1"

    sput-object p0, Lc/e/a/a/c;->f:Ljava/lang/String;

    const-string p0, "1"

    :goto_a
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v10

    const-string p0, "%s %d %d"

    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lc/e/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v9}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/16 p0, 0x1e

    const-string v0, "`"

    invoke-virtual {v9, v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v3, v1

    :goto_b
    if-ge v3, v0, :cond_18

    aget-object v4, p0, v3

    const-string v5, "="

    invoke-virtual {v4, v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v10, :cond_17

    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "http"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v6, v2

    goto :goto_c

    :cond_13
    move v6, v1

    :goto_c
    const-string v7, "logurl"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    if-eqz v6, :cond_17

    invoke-static {v4}, Lc/e/a/f;->b(Ljava/lang/String;)V

    goto :goto_d

    :cond_14
    const-string v7, "staturl"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    if-eqz v6, :cond_17

    invoke-static {v4}, Lc/e/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_d

    :cond_15
    const-string v7, "policyurl"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    if-eqz v6, :cond_17

    sget-object v5, Lc/e/a/a/c;->g:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    sput-object v4, Lc/e/a/a/c;->h:Ljava/lang/String;

    invoke-static {}, Lc/e/a/c;->u()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lc/e/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v5

    goto :goto_d

    :catchall_2
    move-exception p0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_16
    const-string v6, "logpolicy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v4}, Lc/e/a/f;->c(Ljava/lang/String;)V

    :cond_17
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_18
    return v2

    :cond_19
    if-nez v9, :cond_1a

    const-string p0, "ner"

    goto :goto_e

    :cond_1a
    const-string p0, "ser"

    :goto_e
    sput-object p0, Lc/e/a/a/c;->f:Ljava/lang/String;

    return v1

    :cond_1b
    :goto_f
    return v2
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc/e/a/a/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc/e/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    const-string v0, ""

    return-object v0
.end method

.method public static c()V
    .locals 2

    sget-object v0, Lc/e/a/a/c;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lc/e/a/a/c;->h:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d()[B
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x6t
        0x0t
        0x17t
        0x8t
    .end array-data
.end method

.method public static e()Z
    .locals 2

    .line 1
    :try_start_0
    sget-boolean v0, Lc/e/a/f;->Y:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lc/e/a/a/c;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :catchall_0
    :goto_1
    sget-boolean v0, Lc/e/a/a/c;->a:Z

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 4

    sget-object v0, Lc/e/a/a/c;->h:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lc/e/a/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "https://woodpecker.uc.cn"

    .line 1
    sget-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v2, v2, Lc/e/a/g/b;->U:Z

    if-eqz v2, :cond_0

    const-string v0, "https://wpk-auth.ucweb.com"

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/crashsdk/validate"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/e/a/c;->u()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lc/e/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/a/c;->h:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
