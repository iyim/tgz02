.class Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;
.super Ljava/lang/Object;
.source "AVFSBaseCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

.field final synthetic val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;

.field final synthetic val$inputStream:Ljava/io/InputStream;

.field final synthetic val$key1:Ljava/lang/String;

.field final synthetic val$key2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;

    iput-object p3, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;->val$key1:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;->val$key2:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;->val$inputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 222
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;->val$callback:Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;->val$key1:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;->val$key2:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;->this$0:Lcom/taobao/alivfssdk/cache/AVFSBaseCache;

    iget-object v4, p0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;->val$inputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;->onStreamSetCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
