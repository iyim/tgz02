.class public Lcom/taobao/zcache/custom/ZCustomCacheManager;
.super Ljava/lang/Object;
.source "ZCustomCacheManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static instance:Lcom/taobao/zcache/custom/ZCustomCacheManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/zcache/custom/ZCustomCacheManager;
    .locals 2

    .line 13
    sget-object v0, Lcom/taobao/zcache/custom/ZCustomCacheManager;->instance:Lcom/taobao/zcache/custom/ZCustomCacheManager;

    if-nez v0, :cond_1

    .line 14
    const-class v0, Lcom/taobao/zcache/custom/ZCustomCacheManager;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/taobao/zcache/custom/ZCustomCacheManager;->instance:Lcom/taobao/zcache/custom/ZCustomCacheManager;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/taobao/zcache/custom/ZCustomCacheManager;

    invoke-direct {v1}, Lcom/taobao/zcache/custom/ZCustomCacheManager;-><init>()V

    sput-object v1, Lcom/taobao/zcache/custom/ZCustomCacheManager;->instance:Lcom/taobao/zcache/custom/ZCustomCacheManager;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/zcache/custom/ZCustomCacheManager;->instance:Lcom/taobao/zcache/custom/ZCustomCacheManager;

    return-object v0
.end method


# virtual methods
.method public getCacheResource(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerHandler(Lcom/taobao/zcache/custom/ZCustomCacheHandler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
