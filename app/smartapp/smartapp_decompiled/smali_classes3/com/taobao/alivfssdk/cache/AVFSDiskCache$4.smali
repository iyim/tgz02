.class Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;
.super Ljava/lang/Object;
.source "AVFSDiskCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSDiskCache;

.field final synthetic val$key:Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;Ljava/lang/Object;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;->this$0:Lcom/taobao/alivfssdk/cache/AVFSDiskCache;

    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;->val$key:Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    iput-object p3, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;->this$0:Lcom/taobao/alivfssdk/cache/AVFSDiskCache;

    invoke-static {v0}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->access$100(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;)Lcom/taobao/alivfssdk/cache/LruCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4$1;-><init>(Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 385
    :cond_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 388
    :goto_0
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;->val$object:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-object v0
.end method
