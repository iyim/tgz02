.class Lcom/taobao/alivfssdk/cache/AVFSBaseCache$13;
.super Ljava/lang/Object;
.source "AVFSBaseCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

.field final synthetic val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$13;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$13;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamSetCallback(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 212
    iget-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$13;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;

    invoke-interface {p2, p1, p3}, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;->onStreamSetCallback(Ljava/lang/String;Z)V

    return-void
.end method
