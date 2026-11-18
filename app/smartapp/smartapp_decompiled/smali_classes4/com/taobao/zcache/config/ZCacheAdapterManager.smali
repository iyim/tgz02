.class public Lcom/taobao/zcache/config/ZCacheAdapterManager;
.super Ljava/lang/Object;
.source "ZCacheAdapterManager.java"


# static fields
.field private static instance:Lcom/taobao/zcache/config/ZCacheAdapterManager;


# instance fields
.field private update:Lcom/taobao/zcache/config/IZCacheUpdate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/zcache/config/ZCacheAdapterManager;
    .locals 2

    .line 8
    sget-object v0, Lcom/taobao/zcache/config/ZCacheAdapterManager;->instance:Lcom/taobao/zcache/config/ZCacheAdapterManager;

    if-nez v0, :cond_1

    .line 9
    const-class v0, Lcom/taobao/zcache/config/ZCacheAdapterManager;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/taobao/zcache/config/ZCacheAdapterManager;->instance:Lcom/taobao/zcache/config/ZCacheAdapterManager;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/taobao/zcache/config/ZCacheAdapterManager;

    invoke-direct {v1}, Lcom/taobao/zcache/config/ZCacheAdapterManager;-><init>()V

    sput-object v1, Lcom/taobao/zcache/config/ZCacheAdapterManager;->instance:Lcom/taobao/zcache/config/ZCacheAdapterManager;

    .line 13
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 15
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/zcache/config/ZCacheAdapterManager;->instance:Lcom/taobao/zcache/config/ZCacheAdapterManager;

    return-object v0
.end method


# virtual methods
.method public getRequest()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpdateImpl()Lcom/taobao/zcache/config/IZCacheUpdate;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/taobao/zcache/config/ZCacheAdapterManager;->update:Lcom/taobao/zcache/config/IZCacheUpdate;

    return-object v0
.end method

.method public setRequest(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setUpdateImpl(Lcom/taobao/zcache/config/IZCacheUpdate;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/taobao/zcache/config/ZCacheAdapterManager;->update:Lcom/taobao/zcache/config/IZCacheUpdate;

    return-void
.end method
