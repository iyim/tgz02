.class public final Lc/e/a/a/g$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/e/a/a/g$a;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lc/e/a/a/g$a;->c:I

    iput-boolean v0, p0, Lc/e/a/a/g$a;->d:Z

    iput-boolean v0, p0, Lc/e/a/a/g$a;->e:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    iput-object p1, p0, Lc/e/a/a/g$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lc/e/a/a/g$a;->d:Z

    iput-boolean p3, p0, Lc/e/a/a/g$a;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public final a(ZZZ)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lc/e/a/a/g$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    const-wide/16 v4, 0x0

    const-string v6, "lt"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "="

    const-string v10, "`"

    if-eqz p1, :cond_8

    const-string v0, "uc"

    invoke-static {v2, v6, v0}, Lc/e/a/a/g;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v0, v0, Lc/e/a/g/b;->a:Ljava/lang/String;

    const-string v11, "pre"

    .line 2
    invoke-static {v2, v11, v9, v0, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lc/e/a/b;->a:Ljava/lang/String;

    const-string v11, "pkg"

    .line 4
    invoke-static {v2, v11, v9, v0, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v11, "rom"

    .line 6
    invoke-static {v2, v11, v9, v0, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v11, "brd"

    .line 8
    invoke-static {v2, v11, v9, v0, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v11, "model"

    .line 10
    invoke-static {v2, v11, v9, v0, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v11, v0

    .line 12
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v11, "sdk"

    .line 13
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {}, Lc/e/a/f;->o()Ljava/lang/String;

    move-result-object v0

    const-string v11, "cpu"

    .line 15
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    sget-object v0, Lc/e/a/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc/e/a/f;->h()V

    :cond_1
    sget-object v0, Lc/e/a/f;->j:Ljava/lang/String;

    const-string v11, "hdw"

    .line 17
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    new-instance v0, Ljava/io/File;

    const-string v11, "/proc/meminfo"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x2

    invoke-static {v0, v11}, Lc/e/a/a/f;->a(Ljava/io/File;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "MemTotal:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    :try_start_0
    const-string v0, "\\D+"

    const-string v12, ""

    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-static {v0, v7}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_3
    move-wide v11, v4

    .line 20
    :goto_0
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v13, "ram"

    .line 21
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v13, 0x80000

    cmp-long v0, v11, v13

    if-gez v0, :cond_4

    const-string v0, "512M"

    goto :goto_1

    :cond_4
    const-wide/16 v13, 0x400

    .line 22
    div-long/2addr v11, v13

    const-wide/16 v15, 0x200

    add-long/2addr v11, v15

    div-long/2addr v11, v13

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v13, v7

    const-string v11, "%dG"

    invoke-static {v0, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v11, "aram"

    .line 23
    invoke-static {v2, v11, v9, v0, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cver"

    const-string v11, "3.2.2.2"

    invoke-static {v2, v0, v9, v11, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cseq"

    const-string v11, "200521164010"

    invoke-static {v2, v0, v9, v11, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctag"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "release"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {}, Lc/e/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v11, "aver"

    .line 25
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {}, Lc/e/a/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v11, "ver"

    .line 27
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {}, Lc/e/a/i;->d()Ljava/lang/String;

    move-result-object v0

    const-string v11, "sver"

    .line 29
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {}, Lc/e/a/i;->e()Ljava/lang/String;

    move-result-object v0

    const-string v11, "seq"

    .line 31
    invoke-static {v2, v11, v9, v0, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-boolean v0, Lc/e/a/c;->X:Z

    if-nez v0, :cond_6

    invoke-static {}, Lc/e/a/c;->q()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v7

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v8

    :goto_3
    if-eqz v0, :cond_7

    const-string v0, "fg"

    goto :goto_4

    :cond_7
    const-string v0, "bg"

    :goto_4
    const-string v11, "grd"

    .line 33
    invoke-static {v2, v11, v9, v0, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os"

    const-string v11, "android"

    invoke-static {v2, v0, v9, v11, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, v1, Lc/e/a/a/g$a;->a:Ljava/lang/String;

    invoke-static {v2, v6, v0}, Lc/e/a/a/g;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    .line 35
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 36
    invoke-static {v2, v11, v9, v12, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 37
    :cond_9
    iget-boolean v0, v1, Lc/e/a/a/g$a;->d:Z

    if-eqz v0, :cond_c

    if-nez p2, :cond_c

    iget-wide v11, v1, Lc/e/a/a/g$a;->b:J

    cmp-long v0, v11, v4

    if-eqz v0, :cond_a

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "up"

    .line 38
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v0, "%d"

    if-eqz p3, :cond_b

    .line 39
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_b
    iget v4, v1, Lc/e/a/a/g$a;->c:I

    if-eqz v4, :cond_c

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    const-string v4, "pid"

    .line 40
    invoke-static {v2, v4, v9, v0, v10}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 5

    .line 42
    iget-object v0, p0, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-static {v0}, Lc/e/a/a/f;->c(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, p2

    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p2, v0, v3

    if-gez p2, :cond_1

    move-wide p2, v3

    goto :goto_0

    :cond_1
    move-wide p2, v0

    .line 44
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 45
    iget-object p3, p0, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 10

    invoke-static {p1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lc/e/a/a/g;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v6, v2

    move v2, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "lt"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v0, v8

    goto :goto_0

    :cond_1
    iget-boolean v9, p0, Lc/e/a/a/g$a;->d:Z

    if-eqz v9, :cond_2

    const-string v9, "up"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v8}, Lc/e/a/a/f;->c(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_2
    iget-boolean v9, p0, Lc/e/a/a/g$a;->d:Z

    if-eqz v9, :cond_3

    const-string v9, "pid"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v8}, Lc/e/a/a/f;->c(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    :cond_3
    invoke-interface {v4, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lc/e/a/a/g$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    iput-wide v6, p0, Lc/e/a/a/g$a;->b:J

    iput v2, p0, Lc/e/a/a/g$a;->c:I

    iput-object v0, p0, Lc/e/a/a/g$a;->a:Ljava/lang/String;

    iput-object v4, p0, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Ljava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lc/e/a/a/f;->c(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
