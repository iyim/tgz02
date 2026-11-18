.class Lcom/taobao/alivfssdk/cache/AVFSBaseCache$10;
.super Ljava/lang/Object;
.source "AVFSBaseCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->removeAllObject(Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

.field final synthetic val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$10;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$10;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$10;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$10;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    invoke-virtual {v1}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->removeAllObject()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;->onAllObjectRemoveCallback(Z)V

    return-void
.end method
