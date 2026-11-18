.class public Lcom/taobao/downloader/download/protocol/huc/HUCInputStream;
.super Ljava/lang/Object;
.source "HUCInputStream.java"

# interfaces
.implements Lcom/taobao/downloader/download/protocol/DLInputStream;


# instance fields
.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/io/BufferedInputStream;

    sget v1, Lcom/taobao/downloader/download/protocol/DLConfig;->LARGE_BUFFER_SIZE:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCInputStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCInputStream;->inputStream:Ljava/io/InputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
