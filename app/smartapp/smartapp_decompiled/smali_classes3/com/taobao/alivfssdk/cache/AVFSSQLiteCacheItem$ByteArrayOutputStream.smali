.class public Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem$ByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "AVFSSQLiteCacheItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ByteArrayOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;


# direct methods
.method public constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem$ByteArrayOutputStream;->this$0:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;I)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem$ByteArrayOutputStream;->this$0:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    .line 388
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 394
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem$ByteArrayOutputStream;->this$0:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem$ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    .line 395
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem$ByteArrayOutputStream;->this$0:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem$ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->size:J

    return-void
.end method
