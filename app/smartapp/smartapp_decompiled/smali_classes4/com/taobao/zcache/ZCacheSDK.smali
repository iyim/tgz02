.class public Lcom/taobao/zcache/ZCacheSDK;
.super Ljava/lang/Object;
.source "ZCacheSDK.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init(Lcom/taobao/zcache/ZCacheParams;)V
    .locals 5

    .line 9
    iget v0, p0, Lcom/taobao/zcache/ZCacheParams;->env:I

    invoke-static {v0}, Lcom/taobao/zcache/ZCacheParams;->getEnvironment(I)Lcom/taobao/zcache/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/zcache/ZCache;->setEnv(Lcom/taobao/zcache/Environment;)V

    .line 10
    iget-object v0, p0, Lcom/taobao/zcache/ZCacheParams;->locale:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/zcache/ZCache;->setLocale(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/taobao/zcache/ZCacheParams;->configPrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/zcache/ZCacheParams;->zipPrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/taobao/zcache/ZCacheParams;->updateInterval:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 12
    :cond_0
    new-instance v0, Lcom/taobao/zcache/ZCacheConfig;

    invoke-direct {v0}, Lcom/taobao/zcache/ZCacheConfig;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/taobao/zcache/ZCacheParams;->configPrefix:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/zcache/ZCacheConfig;->configPrefixRelease:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/taobao/zcache/ZCacheParams;->zipPrefix:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/zcache/ZCacheConfig;->zipPrefixRelease:Ljava/lang/String;

    .line 15
    iget-wide v1, p0, Lcom/taobao/zcache/ZCacheParams;->updateInterval:D

    iput-wide v1, v0, Lcom/taobao/zcache/ZCacheConfig;->configUpdateInterval:D

    .line 16
    invoke-static {v0}, Lcom/taobao/zcache/ZCache;->setConfig(Lcom/taobao/zcache/ZCacheConfig;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/taobao/zcache/ZCacheParams;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/zcache/ZCacheParams;->appKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/taobao/zcache/ZCacheParams;->appVersion:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/taobao/zcache/ZCache;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initExtra()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initSub()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {v0, v0, v0}, Lcom/taobao/zcache/ZCache;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
