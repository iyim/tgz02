.class Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4$1;
.super Ljava/io/BufferedOutputStream;
.source "AVFSDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;->write(Ljava/io/OutputStream;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$1:Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;Ljava/io/OutputStream;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4$1;->this$1:Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;

    invoke-direct {p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 354
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4$1;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

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

    .line 379
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4$1;->this$1:Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;

    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;->this$0:Lcom/taobao/alivfssdk/cache/AVFSDiskCache;

    invoke-static {v0}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->access$100(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;)Lcom/taobao/alivfssdk/cache/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4$1;->this$1:Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;

    iget-object v1, v1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;->val$key:Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    iget-object v2, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4$1;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/alivfssdk/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4$1;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 366
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4$1;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 360
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
