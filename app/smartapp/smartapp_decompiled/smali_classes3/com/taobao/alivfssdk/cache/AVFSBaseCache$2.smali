.class Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;
.super Ljava/lang/Object;
.source "AVFSBaseCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->containObjectForKey(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

.field final synthetic val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;

.field final synthetic val$key1:Ljava/lang/String;

.field final synthetic val$key2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;

    iput-object p3, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;->val$key1:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;->val$key2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;->val$key1:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;->val$key2:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    invoke-virtual {v3, v1, v2}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->containObjectForKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;->onObjectContainedCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
