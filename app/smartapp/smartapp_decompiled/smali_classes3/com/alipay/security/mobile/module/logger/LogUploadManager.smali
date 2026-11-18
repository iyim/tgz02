.class public Lcom/alipay/security/mobile/module/logger/LogUploadManager;
.super Ljava/lang/Object;
.source "LogUploadManager.java"


# static fields
.field private static final LOG_JSON_STR_CODE:Ljava/lang/String; = "type"

.field private static final LOG_JSON_STR_ERROR:Ljava/lang/String; = "error"


# instance fields
.field private logFileDir:Ljava/io/File;

.field private uploader:Lcom/alipay/security/mobile/module/http/v2/IUploadV2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/security/mobile/module/http/v2/IUploadV2;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->logFileDir:Ljava/io/File;

    .line 22
    iput-object v0, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->uploader:Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    .line 25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->logFileDir:Ljava/io/File;

    .line 26
    iput-object p2, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->uploader:Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/module/logger/LogUploadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->uploadLogFile()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getCurrentLogFileName()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pkgLogString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "id"

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error"

    .line 98
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private declared-synchronized uploadLogFile()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->logFileDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 46
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->logFileDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->logFileDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->logFileDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 53
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->logFileDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 55
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 63
    invoke-static {}, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->getCurrentLogFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x2

    if-ge v1, v4, :cond_3

    .line 66
    monitor-exit p0

    return-void

    .line 68
    :cond_3
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    .line 72
    :cond_4
    iget-object v4, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->logFileDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alipay/security/mobile/module/commonutils/FileUtil;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->pkgLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v4, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->uploader:Lcom/alipay/security/mobile/module/http/v2/IUploadV2;

    invoke-interface {v4, v1}, Lcom/alipay/security/mobile/module/http/v2/IUploadV2;->logCollect(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    :goto_1
    if-ge v3, v2, :cond_6

    .line 85
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->logFileDir:Ljava/io/File;

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    :cond_6
    monitor-exit p0

    return-void

    .line 50
    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public uploadLog(Landroid/content/Context;)V
    .locals 1

    .line 33
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/security/mobile/module/logger/LogUploadManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/module/logger/LogUploadManager$1;-><init>(Lcom/alipay/security/mobile/module/logger/LogUploadManager;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
