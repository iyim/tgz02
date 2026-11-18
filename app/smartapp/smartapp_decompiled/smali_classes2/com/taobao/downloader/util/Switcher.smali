.class public Lcom/taobao/downloader/util/Switcher;
.super Ljava/lang/Object;
.source "Switcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static canUseAnetConnection(JLcom/taobao/downloader/download/protocol/DLConfig;)Z
    .locals 8

    .line 50
    sget-object v0, Lcom/taobao/downloader/Configuration;->cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    sget-object v0, Lcom/taobao/downloader/Configuration;->cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter;

    const-string v2, "dlconnection_anet"

    invoke-interface {v0, v2}, Lcom/taobao/downloader/adpater/CloundConfigAdapter;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    sget-object v3, Lcom/taobao/downloader/Configuration;->cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter;

    const-string v4, "sizeSwitch_anet"

    invoke-interface {v3, v4}, Lcom/taobao/downloader/adpater/CloundConfigAdapter;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    sget-object v4, Lcom/taobao/downloader/Configuration;->cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter;

    const-string v5, "lastUseHuc_anet"

    invoke-interface {v4, v5}, Lcom/taobao/downloader/adpater/CloundConfigAdapter;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    .line 58
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v0, v6, p0

    if-eqz v0, :cond_2

    int-to-long v3, v3

    cmp-long v0, p0, v3

    if-lez v0, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    .line 61
    invoke-virtual {p2}, Lcom/taobao/downloader/download/protocol/DLConfig;->isLastConnect()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/taobao/downloader/download/protocol/DLConfig;->isLastRead()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public static getConnection(Lcom/taobao/downloader/request/Item;Lcom/taobao/downloader/download/protocol/DLConfig;)Lcom/taobao/downloader/download/protocol/DLConnection;
    .locals 2

    .line 29
    sget-object v0, Lcom/taobao/downloader/Configuration;->dlConnectionClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 30
    new-instance p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;

    invoke-direct {p0}, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;-><init>()V

    return-object p0

    .line 34
    :cond_0
    iget-wide v0, p0, Lcom/taobao/downloader/request/Item;->size:J

    invoke-static {v0, v1, p1}, Lcom/taobao/downloader/util/Switcher;->canUseAnetConnection(JLcom/taobao/downloader/download/protocol/DLConfig;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 36
    :try_start_0
    sget-object p0, Lcom/taobao/downloader/Configuration;->dlConnectionClazz:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/downloader/download/protocol/DLConnection;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 44
    :cond_1
    :goto_0
    new-instance p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;

    invoke-direct {p0}, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;-><init>()V

    return-object p0
.end method

.method public static getDLReadBufferSize()I
    .locals 2

    .line 67
    sget-object v0, Lcom/taobao/downloader/Configuration;->cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter;

    if-nez v0, :cond_0

    .line 68
    sget v0, Lcom/taobao/downloader/download/protocol/DLConfig;->LARGE_BUFFER_SIZE:I

    return v0

    .line 71
    :cond_0
    sget-object v0, Lcom/taobao/downloader/Configuration;->cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter;

    const-string v1, "dl_buffersize"

    invoke-interface {v0, v1}, Lcom/taobao/downloader/adpater/CloundConfigAdapter;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 77
    :cond_1
    sget v0, Lcom/taobao/downloader/download/protocol/DLConfig;->LARGE_BUFFER_SIZE:I

    return v0
.end method

.method public static useUniformTmpDir()Z
    .locals 2

    .line 20
    sget-object v0, Lcom/taobao/downloader/Configuration;->cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 23
    :cond_0
    sget-object v0, Lcom/taobao/downloader/Configuration;->cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter;

    const-string v1, "uniform_tmpdir"

    invoke-interface {v0, v1}, Lcom/taobao/downloader/adpater/CloundConfigAdapter;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
