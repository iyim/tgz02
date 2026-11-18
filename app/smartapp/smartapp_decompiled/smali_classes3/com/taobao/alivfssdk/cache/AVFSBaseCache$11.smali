.class Lcom/taobao/alivfssdk/cache/AVFSBaseCache$11;
.super Ljava/lang/Object;
.source "AVFSBaseCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->inputStreamForKey(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

.field final synthetic val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$11;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$11;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamGetCallback(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    iget-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$11;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback;

    invoke-interface {p2, p1, p3}, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback;->onStreamGetCallback(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method
