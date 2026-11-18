.class public Lcom/taobao/zcache/ZCacheInitializer;
.super Ljava/lang/Object;
.source "ZCacheInitializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 15
    invoke-static {p3}, Lcom/taobao/zcache/ZCacheParams;->getEnvironment(I)Lcom/taobao/zcache/Environment;

    move-result-object p3

    invoke-static {p3}, Lcom/taobao/zcache/ZCache;->setEnv(Lcom/taobao/zcache/Environment;)V

    .line 16
    invoke-static {p7}, Lcom/taobao/zcache/ZCache;->setLocale(Ljava/lang/String;)V

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    const-wide/16 p3, 0x0

    cmpl-double p7, p8, p3

    if-lez p7, :cond_1

    .line 18
    :cond_0
    new-instance p3, Lcom/taobao/zcache/ZCacheConfig;

    invoke-direct {p3}, Lcom/taobao/zcache/ZCacheConfig;-><init>()V

    .line 19
    iput-object p5, p3, Lcom/taobao/zcache/ZCacheConfig;->configPrefixRelease:Ljava/lang/String;

    .line 20
    iput-object p6, p3, Lcom/taobao/zcache/ZCacheConfig;->zipPrefixRelease:Ljava/lang/String;

    .line 21
    iput-wide p8, p3, Lcom/taobao/zcache/ZCacheConfig;->configUpdateInterval:D

    .line 22
    invoke-static {p3}, Lcom/taobao/zcache/ZCache;->setConfig(Lcom/taobao/zcache/ZCacheConfig;)V

    .line 24
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/taobao/zcache/ZCache;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initConfig()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initSubProcess()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0, v0, v0}, Lcom/taobao/zcache/ZCache;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static startUpdateQueue()V
    .locals 0

    .line 29
    invoke-static {}, Lcom/taobao/zcache/ZCache;->startUpdateQueue()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
