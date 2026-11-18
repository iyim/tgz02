.class Lcom/taobao/alivfssdk/cache/AVFSBaseCache$8;
.super Ljava/lang/Object;
.source "AVFSBaseCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->removeObjectForKey(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

.field final synthetic val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$8;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$8;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObjectRemoveCallback(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    iget-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$8;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;

    invoke-interface {p2, p1, p3}, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;->onObjectRemoveCallback(Ljava/lang/String;Z)V

    return-void
.end method
