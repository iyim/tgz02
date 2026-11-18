.class public Lcom/taobao/phenix/decode/DecodeProducer;
.super Lcom/taobao/rxm/produce/BaseChainProducer;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/taobao/rxm/request/RequestCancelListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/rxm/produce/BaseChainProducer<",
        "Lcom/taobao/phenix/entity/DecodedImage;",
        "Lcom/taobao/phenix/entity/EncodedImage;",
        "Lcom/taobao/phenix/request/ImageRequest;",
        ">;",
        "Lcom/taobao/rxm/request/RequestCancelListener<",
        "Lcom/taobao/phenix/request/ImageRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, v0, v1}, Lcom/taobao/rxm/produce/BaseChainProducer;-><init>(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private dispatchError(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/decode/DecodeException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "Lcom/taobao/phenix/entity/DecodedImage;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;Z",
            "Lcom/taobao/phenix/entity/EncodedImage;",
            "Lcom/taobao/phenix/decode/DecodeException;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Decoder"

    if-eqz p2, :cond_1

    .line 220
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {p2}, Lcom/taobao/phenix/request/ImageRequest;->getImageUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/phenix/request/ImageUriInfo;->isLocalUri()Z

    move-result p2

    invoke-virtual {p4, p2}, Lcom/taobao/phenix/decode/DecodeException;->setLocalUri(Z)V

    if-eqz p3, :cond_0

    .line 222
    iget-boolean p2, p3, Lcom/taobao/phenix/entity/EncodedImage;->fromDisk:Z

    invoke-virtual {p4, p2}, Lcom/taobao/phenix/decode/DecodeException;->dataFromDisk(Z)V

    .line 223
    iget-boolean p2, p3, Lcom/taobao/phenix/entity/EncodedImage;->fromDisk:Z

    if-nez p2, :cond_0

    iget-boolean p2, p3, Lcom/taobao/phenix/entity/EncodedImage;->completed:Z

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lcom/taobao/phenix/entity/EncodedImage;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 224
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/phenix/request/ImageRequest;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p4, p3, v0

    const-string p4, "actual decode error=%s, convert to error=IncompleteContentError"

    invoke-static {v2, p2, p4, p3}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    new-instance p4, Lcom/taobao/phenix/loader/network/IncompleteResponseException;

    invoke-direct {p4}, Lcom/taobao/phenix/loader/network/IncompleteResponseException;-><init>()V

    .line 228
    :cond_0
    invoke-interface {p1, p4}, Lcom/taobao/rxm/consume/Consumer;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/phenix/request/ImageRequest;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p4, p2, v0

    const-string p3, "intermediate result decode error=%s, request not failed yet"

    invoke-static {v2, p1, p3, p2}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private inspectEncodedImage(Lcom/taobao/phenix/entity/EncodedImage;)Lcom/taobao/phenix/entity/EncodedImage;
    .locals 4

    .line 50
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->getEncodedDataInspector()Lcom/taobao/phenix/decode/EncodedDataInspector;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 54
    :cond_0
    iget-object v1, p1, Lcom/taobao/phenix/entity/EncodedImage;->path:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/taobao/phenix/decode/EncodedDataInspector;->inspectEncodedData(Ljava/lang/String;Lcom/taobao/phenix/entity/EncodedData;)Lcom/taobao/phenix/entity/EncodedData;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/taobao/phenix/entity/EncodedData;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "inspected data cannot be null or not available!"

    invoke-static {v2, v3}, Lcom/taobao/tcommon/core/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-ne v0, p1, :cond_2

    return-object p1

    .line 60
    :cond_2
    iget v2, p1, Lcom/taobao/phenix/entity/EncodedImage;->sizeLevel:I

    invoke-virtual {p1, v0, v2}, Lcom/taobao/phenix/entity/EncodedImage;->cloneExcept(Lcom/taobao/phenix/entity/EncodedData;I)Lcom/taobao/phenix/entity/EncodedImage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/phenix/entity/EncodedImage;->forceNoCache(Z)Lcom/taobao/phenix/entity/EncodedImage;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected conductResult(Lcom/taobao/rxm/consume/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "Lcom/taobao/phenix/entity/DecodedImage;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "Lcom/taobao/phenix/entity/DecodedImage;",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;Z",
            "Lcom/taobao/phenix/entity/EncodedImage;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    .line 65
    invoke-interface/range {p1 .. p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/phenix/request/ImageRequest;

    const-string v7, "Decoder"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_15

    .line 70
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/phenix/entity/EncodedImage;->isAvailable()Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_9

    .line 74
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/taobao/phenix/decode/DecodeProducer;->onConsumeStart(Lcom/taobao/rxm/consume/Consumer;Z)V

    .line 76
    invoke-direct {v1, v4}, Lcom/taobao/phenix/decode/DecodeProducer;->inspectEncodedImage(Lcom/taobao/phenix/entity/EncodedImage;)Lcom/taobao/phenix/entity/EncodedImage;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 78
    :try_start_1
    invoke-static {}, Lcom/taobao/pexode/Pexode;->isAshmemSupported()Z

    move-result v11

    .line 79
    new-instance v12, Lcom/taobao/pexode/PexodeOptions;

    invoke-direct {v12}, Lcom/taobao/pexode/PexodeOptions;-><init>()V

    .line 80
    iput-boolean v9, v12, Lcom/taobao/pexode/PexodeOptions;->justDecodeBounds:Z

    .line 81
    iput-boolean v9, v12, Lcom/taobao/pexode/PexodeOptions;->allowDegrade2System:Z

    .line 82
    iget-object v13, v10, Lcom/taobao/phenix/entity/EncodedImage;->resourceValue:Landroid/util/TypedValue;

    iput-object v13, v12, Lcom/taobao/pexode/PexodeOptions;->resourceValue:Landroid/util/TypedValue;

    .line 83
    invoke-virtual {v5}, Lcom/taobao/phenix/request/ImageRequest;->isForcedAnimationStatic()Z

    move-result v13

    iput-boolean v13, v12, Lcom/taobao/pexode/PexodeOptions;->forceStaticIfAnimation:Z

    .line 86
    iget v13, v10, Lcom/taobao/phenix/entity/EncodedImage;->type:I

    if-ne v13, v9, :cond_1

    .line 87
    new-instance v13, Lcom/taobao/pexode/entity/RewindableByteArrayStream;

    iget-object v14, v10, Lcom/taobao/phenix/entity/EncodedImage;->bytes:[B

    iget v15, v10, Lcom/taobao/phenix/entity/EncodedImage;->offset:I

    iget v6, v10, Lcom/taobao/phenix/entity/EncodedImage;->length:I

    invoke-direct {v13, v14, v15, v6}, Lcom/taobao/pexode/entity/RewindableByteArrayStream;-><init>([BII)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v6, v10, Lcom/taobao/phenix/entity/EncodedImage;->inputStream:Ljava/io/InputStream;

    .line 91
    instance-of v13, v6, Ljava/io/FileInputStream;

    const/high16 v14, 0x100000

    if-eqz v13, :cond_2

    .line 92
    new-instance v13, Lcom/taobao/pexode/entity/RewindableFileInputStream;

    check-cast v6, Ljava/io/FileInputStream;

    invoke-direct {v13, v6, v14}, Lcom/taobao/pexode/entity/RewindableFileInputStream;-><init>(Ljava/io/FileInputStream;I)V

    goto :goto_0

    .line 94
    :cond_2
    new-instance v13, Lcom/taobao/pexode/entity/RewindableInputStream;

    invoke-direct {v13, v6, v14}, Lcom/taobao/pexode/entity/RewindableInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 99
    :goto_0
    invoke-static {v13, v12}, Lcom/taobao/pexode/Pexode;->decode(Ljava/io/InputStream;Lcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/PexodeResult;

    .line 100
    invoke-virtual {v13}, Lcom/taobao/pexode/entity/RewindableStream;->rewind()V

    .line 101
    iget-object v6, v12, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {v10, v6}, Lcom/taobao/phenix/entity/EncodedImage;->setMimeType(Lcom/taobao/pexode/mimetype/MimeType;)V

    if-eqz v3, :cond_3

    .line 104
    invoke-virtual {v5}, Lcom/taobao/phenix/request/ImageRequest;->getStatistics()Lcom/taobao/phenix/request/ImageStatistics;

    move-result-object v6

    invoke-virtual {v10}, Lcom/taobao/phenix/entity/EncodedImage;->getMimeType()Lcom/taobao/pexode/mimetype/MimeType;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/taobao/phenix/request/ImageStatistics;->setCompressFormat(Lcom/taobao/pexode/mimetype/MimeType;)V

    .line 108
    :cond_3
    iget-object v6, v12, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-static {v13, v6, v11}, Lcom/taobao/pexode/Pexode;->preferInputType(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/mimetype/MimeType;Z)I

    move-result v6

    .line 109
    invoke-virtual {v13}, Lcom/taobao/pexode/entity/RewindableStream;->getInputType()I

    move-result v14

    const/4 v15, 0x3

    if-eq v6, v14, :cond_5

    if-ne v6, v15, :cond_4

    .line 111
    invoke-virtual {v13}, Lcom/taobao/pexode/entity/RewindableStream;->back2StreamType()V

    :cond_4
    if-ne v6, v9, :cond_5

    .line 114
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/phenix/intf/Phenix;->bytesPoolBuilder()Lcom/taobao/phenix/builder/BytesPoolBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/phenix/builder/BytesPoolBuilder;->build()Lcom/taobao/tcommon/core/BytesPool;

    move-result-object v6

    .line 115
    new-array v14, v9, [I

    iget v15, v10, Lcom/taobao/phenix/entity/EncodedImage;->length:I

    aput v15, v14, v8

    invoke-static {v13, v6, v14}, Lcom/taobao/phenix/common/StreamUtil;->readBytes(Ljava/io/InputStream;Lcom/taobao/tcommon/core/BytesPool;[I)Lcom/taobao/phenix/entity/EncodedData;

    move-result-object v6

    .line 116
    new-instance v13, Lcom/taobao/pexode/entity/RewindableByteArrayStream;

    iget-object v14, v6, Lcom/taobao/phenix/entity/EncodedData;->bytes:[B

    iget v15, v6, Lcom/taobao/phenix/entity/EncodedData;->offset:I

    iget v6, v6, Lcom/taobao/phenix/entity/EncodedData;->length:I

    invoke-direct {v13, v14, v15, v6}, Lcom/taobao/pexode/entity/RewindableByteArrayStream;-><init>([BII)V

    .line 121
    :cond_5
    iget-object v6, v12, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    if-eqz v6, :cond_7

    iget-object v6, v12, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {v6}, Lcom/taobao/pexode/mimetype/MimeType;->isAnimation()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 122
    :cond_7
    :goto_2
    invoke-virtual {v5}, Lcom/taobao/phenix/request/ImageRequest;->getMaxViewWidth()I

    move-result v6

    .line 123
    invoke-virtual {v5}, Lcom/taobao/phenix/request/ImageRequest;->getMaxViewHeight()I

    move-result v14

    .line 124
    iget-object v15, v12, Lcom/taobao/pexode/PexodeOptions;->resourceValue:Landroid/util/TypedValue;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v15, :cond_9

    :try_start_2
    invoke-virtual {v12}, Lcom/taobao/pexode/PexodeOptions;->isSizeAvailable()Z

    move-result v15

    if-eqz v15, :cond_9

    if-nez v6, :cond_8

    if-eqz v14, :cond_9

    .line 125
    :cond_8
    iget v15, v12, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    iget v9, v12, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    invoke-static {v6, v14, v15, v9}, Lcom/taobao/phenix/common/SizeUtil;->getResizedDimension(IIII)I

    move-result v9

    .line 126
    iget v15, v12, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    iget v8, v12, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    invoke-static {v14, v6, v15, v8}, Lcom/taobao/phenix/common/SizeUtil;->getResizedDimension(IIII)I

    move-result v8

    .line 127
    iget v15, v12, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    iget v2, v12, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    invoke-static {v15, v2, v9, v8}, Lcom/taobao/phenix/common/SizeUtil;->findBestSampleSize(IIII)I

    move-result v2

    iput v2, v12, Lcom/taobao/pexode/PexodeOptions;->sampleSize:I

    const-string v2, "limit with maxSize, sampleSize=%d, maxSize=%dx%d, actualSize=%dx%d"

    const/4 v8, 0x5

    .line 128
    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v12, Lcom/taobao/pexode/PexodeOptions;->sampleSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x0

    aput-object v9, v8, v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v8, v9

    iget v6, v12, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v8, v9

    iget v6, v12, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x4

    aput-object v6, v8, v9

    invoke-static {v7, v5, v2, v8}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_9
    iget v2, v10, Lcom/taobao/phenix/entity/EncodedImage;->type:I

    const/4 v6, 0x1

    if-eq v2, v6, :cond_a

    .line 132
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v12, Lcom/taobao/pexode/PexodeOptions;->outPadding:Landroid/graphics/Rect;

    :cond_a
    if-eqz v11, :cond_b

    const/4 v2, 0x1

    .line 135
    iput-boolean v2, v12, Lcom/taobao/pexode/PexodeOptions;->enableAshmem:Z

    .line 136
    iput-boolean v2, v12, Lcom/taobao/pexode/PexodeOptions;->allowDegrade2NoAshmem:Z

    .line 139
    :cond_b
    iget-object v2, v12, Lcom/taobao/pexode/PexodeOptions;->resourceValue:Landroid/util/TypedValue;

    if-nez v2, :cond_6

    invoke-static {}, Lcom/taobao/pexode/Pexode;->isInBitmapSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/intf/Phenix;->bitmapPoolBuilder()Lcom/taobao/phenix/builder/BitmapPoolBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->build()Lcom/taobao/phenix/bitmap/BitmapPool;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 141
    iget v6, v12, Lcom/taobao/pexode/PexodeOptions;->sampleSize:I

    const/4 v8, 0x1

    if-le v6, v8, :cond_c

    .line 142
    invoke-static {v13, v12}, Lcom/taobao/pexode/Pexode;->decode(Ljava/io/InputStream;Lcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/PexodeResult;

    .line 143
    invoke-virtual {v13}, Lcom/taobao/pexode/entity/RewindableStream;->rewind()V

    .line 145
    :cond_c
    iget v6, v12, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    iget v8, v12, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    sget-object v9, Lcom/taobao/pexode/PexodeOptions;->CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-interface {v2, v6, v8, v9}, Lcom/taobao/phenix/bitmap/BitmapPool;->getFromPool(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v12, Lcom/taobao/pexode/PexodeOptions;->inBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    .line 146
    iput-boolean v2, v12, Lcom/taobao/pexode/PexodeOptions;->allowDegrade2NoInBitmap:Z

    .line 147
    invoke-virtual {v5}, Lcom/taobao/phenix/request/ImageRequest;->getStatistics()Lcom/taobao/phenix/request/ImageStatistics;

    move-result-object v2

    iget-object v6, v12, Lcom/taobao/pexode/PexodeOptions;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_3

    :cond_d
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v2, v6}, Lcom/taobao/phenix/request/ImageStatistics;->onBitmapPoolLookedUp(Z)V

    goto/16 :goto_1

    .line 152
    :goto_4
    iput-boolean v2, v12, Lcom/taobao/pexode/PexodeOptions;->justDecodeBounds:Z

    .line 154
    invoke-virtual {v5}, Lcom/taobao/phenix/request/ImageRequest;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "request is cancelled before image decoding"

    .line 155
    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v5, v6, v8}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-interface/range {p1 .. p1}, Lcom/taobao/rxm/consume/Consumer;->onCancellation()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_e

    .line 197
    invoke-virtual {v10}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_e
    if-eqz v4, :cond_f

    if-eq v4, v10, :cond_f

    .line 201
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_f
    return-void

    .line 162
    :cond_10
    :try_start_3
    invoke-virtual {v5, v12}, Lcom/taobao/phenix/request/ImageRequest;->setPexodeOptions(Lcom/taobao/pexode/PexodeOptions;)V

    .line 163
    invoke-virtual {v5, v1}, Lcom/taobao/phenix/request/ImageRequest;->registerCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)Z

    .line 165
    invoke-static {v13, v12}, Lcom/taobao/pexode/Pexode;->decode(Ljava/io/InputStream;Lcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/PexodeResult;

    move-result-object v2

    .line 167
    invoke-virtual {v5, v1}, Lcom/taobao/phenix/request/ImageRequest;->unregisterCancelListener(Lcom/taobao/rxm/request/RequestCancelListener;)Z

    const/4 v6, 0x0

    .line 168
    invoke-virtual {v5, v6}, Lcom/taobao/phenix/request/ImageRequest;->setPexodeOptions(Lcom/taobao/pexode/PexodeOptions;)V

    if-eqz v2, :cond_11

    .line 173
    new-instance v6, Lcom/taobao/phenix/entity/DecodedImage;

    iget-object v8, v2, Lcom/taobao/pexode/PexodeResult;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, v2, Lcom/taobao/pexode/PexodeResult;->animated:Lcom/taobao/pexode/animate/AnimatedImage;

    iget-object v9, v12, Lcom/taobao/pexode/PexodeOptions;->outPadding:Landroid/graphics/Rect;

    invoke-direct {v6, v10, v8, v2, v9}, Lcom/taobao/phenix/entity/DecodedImage;-><init>(Lcom/taobao/phenix/entity/EncodedImage;Landroid/graphics/Bitmap;Lcom/taobao/pexode/animate/AnimatedImage;Landroid/graphics/Rect;)V

    .line 174
    invoke-virtual {v6}, Lcom/taobao/phenix/entity/DecodedImage;->isAvailable()Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v2, p1

    goto :goto_5

    :cond_11
    move-object/from16 v2, p1

    const/4 v8, 0x0

    .line 176
    :goto_5
    :try_start_4
    invoke-virtual {v1, v2, v8, v3}, Lcom/taobao/phenix/decode/DecodeProducer;->onConsumeFinish(Lcom/taobao/rxm/consume/Consumer;ZZ)V

    if-nez v8, :cond_14

    const-string v6, "decoded image not available, cancelled=%b, mimeType=%s"

    const/4 v8, 0x2

    .line 179
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/taobao/phenix/request/ImageRequest;->isCancelled()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v8, v11

    iget-object v9, v12, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-static {v7, v5, v6, v8}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    new-instance v6, Lcom/taobao/phenix/decode/DecodeException;

    sget-object v8, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_OUTPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "result image null, WxH="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v12, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v12, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/taobao/phenix/decode/DecodeException;-><init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v10, v6}, Lcom/taobao/phenix/decode/DecodeProducer;->dispatchError(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/decode/DecodeException;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v10, :cond_12

    .line 197
    invoke-virtual {v10}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_12
    if-eqz v4, :cond_13

    if-eq v4, v10, :cond_13

    .line 201
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_13
    return-void

    .line 185
    :cond_14
    :try_start_5
    invoke-interface {v2, v6, v3}, Lcom/taobao/rxm/consume/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    const-string v8, "decode complete, result=%s, WxH=%dx%d, mimeType=%s"

    const/4 v9, 0x4

    .line 186
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v9, v11

    iget v6, v12, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v9, v11

    iget v6, v12, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x2

    aput-object v6, v9, v11

    iget-object v6, v12, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    const/4 v11, 0x3

    aput-object v6, v9, v11

    invoke-static {v7, v5, v8, v9}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_1a

    if-eq v4, v10, :cond_1a

    goto/16 :goto_14

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/16 v16, 0x0

    goto/16 :goto_16

    :catch_0
    move-exception v0

    move-object v6, v0

    const/4 v8, 0x0

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v6, v10

    const/4 v8, 0x0

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v6, v10

    const/4 v8, 0x0

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :catch_6
    move-exception v0

    :goto_6
    move-object v6, v0

    const/4 v8, 0x1

    goto :goto_d

    :catch_7
    move-exception v0

    :goto_7
    move-object v5, v0

    move-object v6, v10

    goto/16 :goto_f

    :catch_8
    move-exception v0

    :goto_8
    move-object v5, v0

    move-object v6, v10

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    goto :goto_a

    :catch_9
    move-exception v0

    const/4 v6, 0x0

    goto :goto_c

    :catch_a
    move-exception v0

    const/4 v6, 0x0

    goto :goto_e

    :catch_b
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_15
    :goto_9
    const/4 v6, 0x0

    .line 71
    :try_start_6
    new-instance v8, Lcom/taobao/phenix/decode/DecodeException;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    sget-object v9, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNAVAILABLE_INPUT_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-direct {v8, v9}, Lcom/taobao/phenix/decode/DecodeException;-><init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;)V

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/taobao/phenix/decode/DecodeProducer;->dispatchError(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/decode/DecodeException;)V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_16

    if-eqz v4, :cond_16

    .line 201
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_16
    return-void

    :catch_c
    move-exception v0

    goto :goto_e

    :catch_d
    move-exception v0

    goto :goto_11

    :catchall_3
    move-exception v0

    :goto_a
    move-object v2, v0

    move-object v10, v6

    :goto_b
    const/16 v16, 0x1

    goto/16 :goto_16

    :catch_e
    move-exception v0

    :goto_c
    move-object v10, v6

    const/4 v8, 0x1

    move-object v6, v0

    :goto_d
    :try_start_8
    const-string v9, "unknown error, throwable=%s"

    const/4 v11, 0x1

    .line 192
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v7, v5, v9, v11}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v5, Lcom/taobao/phenix/decode/DecodeException;

    sget-object v7, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNKNOWN_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-direct {v5, v7, v6}, Lcom/taobao/phenix/decode/DecodeException;-><init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3, v10, v5}, Lcom/taobao/phenix/decode/DecodeProducer;->dispatchError(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/decode/DecodeException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v8, :cond_17

    if-eqz v10, :cond_17

    .line 197
    invoke-virtual {v10}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_17
    if-eqz v4, :cond_1a

    if-eq v4, v10, :cond_1a

    goto :goto_14

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_15

    :catch_f
    move-exception v0

    const/4 v11, 0x1

    :goto_e
    move-object v5, v0

    :goto_f
    const/4 v8, 0x1

    .line 190
    :goto_10
    :try_start_9
    new-instance v7, Lcom/taobao/phenix/decode/DecodeException;

    sget-object v9, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->UNLINK_SO_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-direct {v7, v9, v5}, Lcom/taobao/phenix/decode/DecodeException;-><init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/taobao/phenix/decode/DecodeProducer;->dispatchError(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/decode/DecodeException;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v8, :cond_18

    if-eqz v6, :cond_18

    .line 197
    invoke-virtual {v6}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_18
    if-eqz v4, :cond_1a

    if-eq v4, v6, :cond_1a

    goto :goto_14

    :catch_10
    move-exception v0

    const/4 v11, 0x1

    :goto_11
    move-object v5, v0

    :goto_12
    const/4 v8, 0x1

    .line 188
    :goto_13
    :try_start_a
    new-instance v7, Lcom/taobao/phenix/decode/DecodeException;

    sget-object v9, Lcom/taobao/phenix/decode/DecodeException$DecodedError;->OOM_ERROR:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-direct {v7, v9, v5}, Lcom/taobao/phenix/decode/DecodeException;-><init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/taobao/phenix/decode/DecodeProducer;->dispatchError(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;Lcom/taobao/phenix/decode/DecodeException;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v8, :cond_19

    if-eqz v6, :cond_19

    .line 197
    invoke-virtual {v6}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_19
    if-eqz v4, :cond_1a

    if-eq v4, v6, :cond_1a

    .line 201
    :goto_14
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_1a
    return-void

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v10, v6

    :goto_15
    move/from16 v16, v8

    :goto_16
    if-eqz v16, :cond_1b

    if-eqz v10, :cond_1b

    .line 197
    invoke-virtual {v10}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_1b
    if-eqz v4, :cond_1c

    if-eq v4, v10, :cond_1c

    .line 201
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/phenix/entity/EncodedImage;->release()V

    :cond_1c
    goto :goto_18

    :goto_17
    throw v2

    :goto_18
    goto :goto_17
.end method

.method public bridge synthetic consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/rxm/common/Releasable;)V
    .locals 0

    .line 37
    check-cast p3, Lcom/taobao/phenix/entity/EncodedImage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/phenix/decode/DecodeProducer;->consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;)V

    return-void
.end method

.method public bridge synthetic consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLjava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p3, Lcom/taobao/phenix/entity/EncodedImage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/phenix/decode/DecodeProducer;->consumeNewResult(Lcom/taobao/rxm/consume/Consumer;ZLcom/taobao/phenix/entity/EncodedImage;)V

    return-void
.end method

.method public onCancel(Lcom/taobao/phenix/request/ImageRequest;)V
    .locals 4

    const/4 v0, 0x0

    .line 208
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Decoder"

    const-string v3, "received cancellation"

    invoke-static {v2, p1, v3, v1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->getPexodeOptions()Lcom/taobao/pexode/PexodeOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    .line 211
    invoke-virtual {p1, v3}, Lcom/taobao/phenix/request/ImageRequest;->setPexodeOptions(Lcom/taobao/pexode/PexodeOptions;)V

    .line 212
    invoke-virtual {v1}, Lcom/taobao/pexode/PexodeOptions;->requestCancel()Z

    move-result v1

    const/4 v3, 0x1

    .line 213
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "cancelled image decoding, result=%b"

    invoke-static {v2, p1, v0, v3}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCancel(Lcom/taobao/rxm/request/RequestContext;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/decode/DecodeProducer;->onCancel(Lcom/taobao/phenix/request/ImageRequest;)V

    return-void
.end method
