.class final Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;
.super Lcom/alibaba/mbg/unet/internal/UploadDataProvider;
.source "UploadDataProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/UploadDataProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputStreamUploadProvider"
.end annotation


# static fields
.field private static final BUF_LEN:I = 0x8000


# instance fields
.field private mBodyLength:J

.field private mBuffer:[B

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/UploadDataProvider;-><init>()V

    .line 186
    iput-wide p2, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mBodyLength:J

    .line 187
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mInputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-super {p0}, Lcom/alibaba/mbg/unet/internal/UploadDataProvider;->close()V

    .line 229
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getLength()J
    .locals 5

    .line 192
    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mBodyLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, -0x1

    .line 194
    iput-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mBodyLength:J

    .line 196
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mBodyLength:J

    return-wide v0
.end method

.method public read(Lcom/alibaba/mbg/unet/internal/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mBuffer:[B

    const v1, 0x8000

    if-nez v0, :cond_0

    .line 205
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mBuffer:[B

    .line 208
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le v0, v1, :cond_1

    const v0, 0x8000

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_2

    .line 212
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mBuffer:[B

    invoke-virtual {p2, v1, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 216
    :cond_2
    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;->mBodyLength:J

    const-wide/16 v4, -0x1

    cmp-long p2, v1, v4

    if-nez p2, :cond_3

    if-gtz v0, :cond_3

    const/4 v3, 0x1

    .line 217
    :cond_3
    invoke-interface {p1, v3}, Lcom/alibaba/mbg/unet/internal/UploadDataSink;->onReadSucceeded(Z)V

    return-void

    .line 202
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cronet passed a buffer with no bytes remaining"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rewind(Lcom/alibaba/mbg/unet/internal/UploadDataSink;)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "rewind not support by InputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/alibaba/mbg/unet/internal/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
