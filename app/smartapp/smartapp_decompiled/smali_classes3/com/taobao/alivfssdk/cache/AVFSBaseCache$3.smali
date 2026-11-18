.class Lcom/taobao/alivfssdk/cache/AVFSBaseCache$3;
.super Ljava/lang/Object;
.source "AVFSBaseCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->objectForKey(Ljava/lang/String;Ljava/lang/Class;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

.field final synthetic val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$3;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$3;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObjectGetCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    iget-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$3;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;

    invoke-interface {p2, p1, p3}, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;->onObjectGetCallback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
