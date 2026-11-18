.class public Landroid/taobao/windvane/packageapp/ZCacheConfigManager;
.super Ljava/lang/Object;
.source "ZCacheConfigManager.java"


# static fields
.field private static instance:Landroid/taobao/windvane/packageapp/ZCacheConfigManager;


# instance fields
.field private configPath:Ljava/lang/String;

.field private oldConfig:Ljava/lang/String;

.field private slideEnable:Ljava/lang/String;

.field private updateFromLocal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->updateFromLocal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "3"

    .line 25
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->zType:Ljava/lang/String;

    const-string v0, "false"

    .line 26
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->oldConfig:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->slideEnable:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->configPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/packageapp/ZCacheConfigManager;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->configPath:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance()Landroid/taobao/windvane/packageapp/ZCacheConfigManager;
    .locals 2

    .line 33
    sget-object v0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->instance:Landroid/taobao/windvane/packageapp/ZCacheConfigManager;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->instance:Landroid/taobao/windvane/packageapp/ZCacheConfigManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;

    invoke-direct {v1}, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->instance:Landroid/taobao/windvane/packageapp/ZCacheConfigManager;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->instance:Landroid/taobao/windvane/packageapp/ZCacheConfigManager;

    return-object v0
.end method

.method private initOrange()V
    .locals 3

    const-string v0, "ZCache"

    .line 115
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    new-instance v2, Landroid/taobao/windvane/packageapp/ZCacheConfigManager$1;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/packageapp/ZCacheConfigManager$1;-><init>(Landroid/taobao/windvane/packageapp/ZCacheConfigManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    return-void
.end method

.method private triggerLocalConfig()V
    .locals 7

    .line 72
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->updateFromLocal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 75
    :try_start_0
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->configPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/taobao/windvane/file/FileAccesser;->read(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v3

    .line 81
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->updateFromLocal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get zcache local config=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ZCache"

    invoke-static {v5, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ","

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    array-length v3, v0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    .line 88
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 89
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    aget-object v6, v0, v2

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_3

    .line 96
    iget-object v2, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->zType:Ljava/lang/String;

    const-string v4, "3"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->oldConfig:Ljava/lang/String;

    aget-object v4, v0, v3

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ZCache 3.0 \u65b0\u65e7\u5e73\u53f0\u5207\u6362\uff0c\u9700\u8981\u5237\u65b0\u672c\u5730\u914d\u7f6e"

    .line 97
    invoke-static {v5, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/taobao/zcache/ZCacheManager;->instance()Lcom/taobao/zcache/ZCacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/zcache/ZCacheManager;->removeAllZCache()V

    .line 100
    :cond_2
    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->oldConfig:Ljava/lang/String;

    .line 102
    :cond_3
    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 103
    aget-object v0, v0, v3

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->slideEnable:Ljava/lang/String;

    goto :goto_2

    .line 90
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip local config for dispatching appVersion. require=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], real=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v5, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getzType()Ljava/lang/String;
    .locals 3

    const-string v0, "2"

    .line 140
    iget-object v1, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->zType:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    const-string v2, "ZCache3"

    invoke-static {v1, v2}, Lcom/taobao/android/speed/TBSpeed;->isSpeedEdition(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->zType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 145
    :catch_0
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->zType:Ljava/lang/String;

    .line 148
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->zType:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->isZcacheType3()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->zType:Ljava/lang/String;

    .line 47
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->useZcacheOldConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    goto :goto_1

    :cond_1
    const-string v0, "false"

    :goto_1
    iput-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->oldConfig:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "ZCache"

    .line 52
    invoke-static {p1, v0}, Landroid/taobao/windvane/file/FileManager;->createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "orange"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->configPath:Ljava/lang/String;

    .line 54
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->configPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    :cond_3
    :goto_2
    invoke-direct {p0}, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->triggerLocalConfig()V

    .line 65
    :try_start_1
    invoke-direct {p0}, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->initOrange()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public slideEnable()Z
    .locals 2

    .line 152
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->slideEnable:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public triggerZCacheConfig()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public useOldConfig()Z
    .locals 2

    .line 136
    iget-object v0, p0, Landroid/taobao/windvane/packageapp/ZCacheConfigManager;->oldConfig:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
