.class final Lcom/taobao/zcache/ZCache$3;
.super Ljava/lang/Object;
.source "ZCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/zcache/ZCache;->getResource(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/taobao/zcache/ResourceResponseCallback;

.field final synthetic val$request:Lcom/taobao/zcache/ResourceRequest;


# direct methods
.method constructor <init>(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/taobao/zcache/ZCache$3;->val$request:Lcom/taobao/zcache/ResourceRequest;

    iput-object p2, p0, Lcom/taobao/zcache/ZCache$3;->val$callback:Lcom/taobao/zcache/ResourceResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 394
    invoke-static {}, Lcom/taobao/zcache/ZCacheCoreProxy;->core()Lcom/taobao/zcache/core/IZCacheCore;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/zcache/ZCache$3;->val$request:Lcom/taobao/zcache/ResourceRequest;

    iget-object v2, p0, Lcom/taobao/zcache/ZCache$3;->val$callback:Lcom/taobao/zcache/ResourceResponseCallback;

    invoke-interface {v0, v1, v2}, Lcom/taobao/zcache/core/IZCacheCore;->getResource(Lcom/taobao/zcache/ResourceRequest;Lcom/taobao/zcache/ResourceResponseCallback;)V

    return-void
.end method
