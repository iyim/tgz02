.class public Lcom/blankj/ALog$Config;
.super Ljava/lang/Object;
.source "ALog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/ALog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-static {}, Lcom/blankj/ALog;->access$100()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "log"

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/ALog;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 447
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/ALog;->access$102(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/blankj/ALog$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcom/blankj/ALog$Config;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public setBorderSwitch(Z)Lcom/blankj/ALog$Config;
    .locals 0

    .line 506
    invoke-static {p1}, Lcom/blankj/ALog;->access$1202(Z)Z

    return-object p0
.end method

.method public setConsoleFilter(I)Lcom/blankj/ALog$Config;
    .locals 0

    .line 511
    invoke-static {p1}, Lcom/blankj/ALog;->access$1302(I)I

    return-object p0
.end method

.method public setConsoleSwitch(Z)Lcom/blankj/ALog$Config;
    .locals 0

    .line 457
    invoke-static {p1}, Lcom/blankj/ALog;->access$402(Z)Z

    return-object p0
.end method

.method public setDir(Ljava/io/File;)Lcom/blankj/ALog$Config;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/blankj/ALog;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setDir(Ljava/lang/String;)Lcom/blankj/ALog$Config;
    .locals 1

    .line 483
    invoke-static {p1}, Lcom/blankj/ALog;->access$500(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 484
    invoke-static {p1}, Lcom/blankj/ALog;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 486
    :cond_0
    invoke-static {}, Lcom/blankj/ALog;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/blankj/ALog;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setFileFilter(I)Lcom/blankj/ALog$Config;
    .locals 0

    .line 516
    invoke-static {p1}, Lcom/blankj/ALog;->access$1402(I)I

    return-object p0
.end method

.method public setFilePrefix(Ljava/lang/String;)Lcom/blankj/ALog$Config;
    .locals 1

    .line 497
    invoke-static {p1}, Lcom/blankj/ALog;->access$500(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "alog"

    .line 498
    invoke-static {p1}, Lcom/blankj/ALog;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 500
    :cond_0
    invoke-static {p1}, Lcom/blankj/ALog;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setGlobalTag(Ljava/lang/String;)Lcom/blankj/ALog$Config;
    .locals 1

    .line 462
    invoke-static {p1}, Lcom/blankj/ALog;->access$500(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 463
    invoke-static {p1}, Lcom/blankj/ALog;->access$602(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 464
    invoke-static {p1}, Lcom/blankj/ALog;->access$702(Z)Z

    goto :goto_0

    .line 466
    :cond_0
    invoke-static {p1}, Lcom/blankj/ALog;->access$602(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 467
    invoke-static {p1}, Lcom/blankj/ALog;->access$702(Z)Z

    :goto_0
    return-object p0
.end method

.method public setLog2FileSwitch(Z)Lcom/blankj/ALog$Config;
    .locals 0

    .line 478
    invoke-static {p1}, Lcom/blankj/ALog;->access$902(Z)Z

    return-object p0
.end method

.method public setLogHeadSwitch(Z)Lcom/blankj/ALog$Config;
    .locals 0

    .line 473
    invoke-static {p1}, Lcom/blankj/ALog;->access$802(Z)Z

    return-object p0
.end method

.method public setLogSwitch(Z)Lcom/blankj/ALog$Config;
    .locals 0

    .line 452
    invoke-static {p1}, Lcom/blankj/ALog;->access$302(Z)Z

    return-object p0
.end method

.method public setStackDeep(I)Lcom/blankj/ALog$Config;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    .line 521
    invoke-static {p1}, Lcom/blankj/ALog;->access$1502(I)I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$300()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 528
    invoke-static {}, Lcom/blankj/ALog;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "console: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$400()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 529
    invoke-static {}, Lcom/blankj/ALog;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/ALog;->access$600()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-static {}, Lcom/blankj/ALog;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "head: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$800()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 531
    invoke-static {}, Lcom/blankj/ALog;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$900()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 532
    invoke-static {}, Lcom/blankj/ALog;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$1000()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/blankj/ALog;->access$100()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/blankj/ALog;->access$1000()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-static {}, Lcom/blankj/ALog;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filePrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-static {}, Lcom/blankj/ALog;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "border: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$1200()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {}, Lcom/blankj/ALog;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "consoleFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$1700()[C

    move-result-object v1

    invoke-static {}, Lcom/blankj/ALog;->access$1300()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    invoke-static {}, Lcom/blankj/ALog;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fileFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$1700()[C

    move-result-object v1

    invoke-static {}, Lcom/blankj/ALog;->access$1400()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    invoke-static {}, Lcom/blankj/ALog;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stackDeep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/ALog;->access$1500()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
