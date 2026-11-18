.class public Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;
.super Ljava/lang/Object;
.source "LoggerStub.java"


# static fields
.field public static final LOG_DIR:Ljava/lang/String; = "/log/ap"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getCurrentLogFileName()Ljava/lang/String;
    .locals 3

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->prepareLogTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/security/mobile/module/logger/LogTag;

    move-result-object p1

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/log/ap"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->getCurrentLogFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alipay/security/mobile/module/logger/LogTag;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/alipay/security/mobile/module/logger/Logger;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isConnectedWifi(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static declared-synchronized logException(Ljava/lang/Throwable;)V
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-static {p0}, Lcom/alipay/security/mobile/module/logger/Logger;->logException(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized logMessage(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/alipay/security/mobile/module/logger/Logger;->logMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized logMessage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/alipay/security/mobile/module/logger/Logger;->logMessage(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static prepareLogTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/security/mobile/module/logger/LogTag;
    .locals 8

    .line 72
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 76
    new-instance p0, Lcom/alipay/security/mobile/module/logger/LogTag;

    const-string v3, "security-sdk-token"

    const-string v4, "3.1.3-20160401174126"

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/alipay/security/mobile/module/logger/LogTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static uploadLog(Landroid/content/Context;Lcom/alipay/security/mobile/module/http/v2/IUploadV2;)V
    .locals 2

    .line 55
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/macro/LoggerStub;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/storage/SettingsStorage;->getLogSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/log/ap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/alipay/security/mobile/module/logger/LogUploadManager;

    invoke-direct {v1, v0, p1}, Lcom/alipay/security/mobile/module/logger/LogUploadManager;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/module/http/v2/IUploadV2;)V

    .line 58
    invoke-virtual {v1, p0}, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->uploadLog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
