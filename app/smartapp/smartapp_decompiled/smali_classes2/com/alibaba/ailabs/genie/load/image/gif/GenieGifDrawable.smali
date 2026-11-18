.class public Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;
.super Lpl/droidsonroids/gif/GifDrawable;
.source "GenieGifDrawable.java"


# instance fields
.field private mResBuffer:Ljava/nio/ByteBuffer;

.field private mResInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/io/InputStream;)V

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;->mResInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/nio/ByteBuffer;)V

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;->mResBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getResBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;->mResBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getResInputStream()Ljava/io/InputStream;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;->mResInputStream:Ljava/io/InputStream;

    return-object v0
.end method
