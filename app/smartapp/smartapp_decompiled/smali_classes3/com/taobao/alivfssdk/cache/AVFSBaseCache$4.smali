.class Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;
.super Ljava/lang/Object;
.source "AVFSBaseCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

.field final synthetic val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;

.field final synthetic val$key1:Ljava/lang/String;

.field final synthetic val$key2:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;

    iput-object p3, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;->val$key1:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;->val$key2:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;->val$key1:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;->val$key2:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    iget-object v4, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;->val$type:Ljava/lang/Class;

    invoke-virtual {v3, v1, v2, v4}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;->onObjectGetCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
