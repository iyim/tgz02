.class public final Lcom/alibaba/mbg/unet/internal/UploadDataProviders;
.super Ljava/lang/Object;
.source "UploadDataProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;,
        Lcom/alibaba/mbg/unet/internal/UploadDataProviders$ByteBufferUploadProvider;,
        Lcom/alibaba/mbg/unet/internal/UploadDataProviders$FileUploadProvider;,
        Lcom/alibaba/mbg/unet/internal/UploadDataProviders$FileChannelProvider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static create(Landroid/os/ParcelFileDescriptor;)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;
    .locals 2

    .line 38
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$FileUploadProvider;

    new-instance v1, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$2;

    invoke-direct {v1, p0}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$2;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$FileUploadProvider;-><init>(Lcom/alibaba/mbg/unet/internal/UploadDataProviders$FileChannelProvider;Lcom/alibaba/mbg/unet/internal/UploadDataProviders$1;)V

    return-object v0
.end method

.method public static create(Ljava/io/File;)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;
    .locals 2

    .line 23
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$FileUploadProvider;

    new-instance v1, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$1;

    invoke-direct {v1, p0}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$1;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$FileUploadProvider;-><init>(Lcom/alibaba/mbg/unet/internal/UploadDataProviders$FileChannelProvider;Lcom/alibaba/mbg/unet/internal/UploadDataProviders$1;)V

    return-object v0
.end method

.method public static create(Ljava/io/InputStream;J)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;
    .locals 1

    .line 75
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$InputStreamUploadProvider;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static create(Ljava/nio/ByteBuffer;)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;
    .locals 2

    .line 55
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$ByteBufferUploadProvider;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$ByteBufferUploadProvider;-><init>(Ljava/nio/ByteBuffer;Lcom/alibaba/mbg/unet/internal/UploadDataProviders$1;)V

    return-object v0
.end method

.method public static create([B)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;
    .locals 2

    .line 65
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders;->create([BII)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public static create([BII)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;
    .locals 1

    .line 60
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$ByteBufferUploadProvider;

    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataProviders$ByteBufferUploadProvider;-><init>(Ljava/nio/ByteBuffer;Lcom/alibaba/mbg/unet/internal/UploadDataProviders$1;)V

    return-object v0
.end method
