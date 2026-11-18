.class Lcom/taobao/alivfssdk/cache/AVFSDiskCache$3;
.super Ljava/io/BufferedInputStream;
.source "AVFSDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSDiskCache;

.field final synthetic val$key:Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;Ljava/io/InputStream;ILcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$3;->this$0:Lcom/taobao/alivfssdk/cache/AVFSDiskCache;

    iput-object p4, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$3;->val$key:Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    invoke-direct {p0, p2, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$3;->this$0:Lcom/taobao/alivfssdk/cache/AVFSDiskCache;

    invoke-static {v0}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->access$100(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;)Lcom/taobao/alivfssdk/cache/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$3;->val$key:Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    iget-object v2, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$3;->buf:[B

    invoke-interface {v0, v1, v2}, Lcom/taobao/alivfssdk/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    return-void
.end method
