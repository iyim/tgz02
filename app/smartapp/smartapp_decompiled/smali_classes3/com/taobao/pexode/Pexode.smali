.class public Lcom/taobao/pexode/Pexode;
.super Ljava/lang/Object;
.source "Pexode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/pexode/Pexode$ForcedDegradationListener;,
        Lcom/taobao/pexode/Pexode$Singleton;
    }
.end annotation


# static fields
.field public static final APPEND_DECODE_CHUNK_SIZE:I = 0x800

.field public static final MB:I = 0x100000

.field public static final MINIMUM_HEADER_BUFFER_SIZE:I = 0x40

.field public static final TAG:Ljava/lang/String; = "Pexode"


# instance fields
.field private forcedDegrade2System:Z

.field private final installedDecoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/pexode/decoder/Decoder;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedDegradationListener:Lcom/taobao/pexode/Pexode$ForcedDegradationListener;

.field private preparedContext:Landroid/content/Context;

.field private final systemDecoder:Lcom/taobao/pexode/decoder/Decoder;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/taobao/pexode/decoder/SystemDecoder;

    invoke-direct {v0}, Lcom/taobao/pexode/decoder/SystemDecoder;-><init>()V

    iput-object v0, p0, Lcom/taobao/pexode/Pexode;->systemDecoder:Lcom/taobao/pexode/decoder/Decoder;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    new-instance v1, Lcom/taobao/pexode/decoder/WebPDecoder;

    invoke-direct {v1}, Lcom/taobao/pexode/decoder/WebPDecoder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    new-instance v1, Lcom/taobao/pexode/decoder/GifDecoder;

    invoke-direct {v1}, Lcom/taobao/pexode/decoder/GifDecoder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    iget-object v1, p0, Lcom/taobao/pexode/Pexode;->systemDecoder:Lcom/taobao/pexode/decoder/Decoder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/pexode/Pexode$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/taobao/pexode/Pexode;-><init>()V

    return-void
.end method

.method public static canSupport(Lcom/taobao/pexode/mimetype/MimeType;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 236
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/pexode/decoder/Decoder;

    .line 237
    invoke-interface {v1, p0}, Lcom/taobao/pexode/decoder/Decoder;->isSupported(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static canSystemSupport(Lcom/taobao/pexode/mimetype/MimeType;)Z
    .locals 1

    .line 231
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/pexode/Pexode;->systemDecoder:Lcom/taobao/pexode/decoder/Decoder;

    invoke-interface {v0, p0}, Lcom/taobao/pexode/decoder/Decoder;->isSupported(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result p0

    return p0
.end method

.method private static checkOptions(Lcom/taobao/pexode/PexodeOptions;)V
    .locals 4

    .line 198
    iget-boolean v0, p0, Lcom/taobao/pexode/PexodeOptions;->enableAshmem:Z

    const-string v1, "Pexode"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/pexode/Pexode;->isAshmemSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "cannot use ashmem in the runtime, disabled ashmem already!"

    invoke-static {v1, v3, v0}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iput-boolean v2, p0, Lcom/taobao/pexode/PexodeOptions;->enableAshmem:Z

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/taobao/pexode/PexodeOptions;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taobao/pexode/Pexode;->isInBitmapSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "cannot reuse bitmap in the runtime, disabled inBitmap already!"

    invoke-static {v1, v2, v0}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/taobao/pexode/PexodeOptions;->inBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public static decode(Ljava/io/File;Lcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/PexodeResult;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/pexode/PexodeOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1, p1}, Lcom/taobao/pexode/Pexode;->decode(Ljava/io/InputStream;Lcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/PexodeResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 254
    :catch_2
    :cond_0
    throw p0

    :catch_3
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 253
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_1
    return-object v0
.end method

.method public static decode(Ljava/io/FileDescriptor;Lcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/PexodeResult;
    .locals 2
    .param p0    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/pexode/PexodeOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .line 276
    new-instance v0, Lcom/taobao/pexode/entity/RewindableFileInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/high16 p0, 0x100000

    invoke-direct {v0, v1, p0}, Lcom/taobao/pexode/entity/RewindableFileInputStream;-><init>(Ljava/io/FileInputStream;I)V

    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/taobao/pexode/Pexode;->doDecode(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;Lcom/taobao/pexode/common/DegradeEventListener;)Lcom/taobao/pexode/PexodeResult;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/io/InputStream;Lcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/PexodeResult;
    .locals 2
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/pexode/PexodeOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .line 289
    instance-of v0, p0, Lcom/taobao/pexode/entity/RewindableStream;

    if-eqz v0, :cond_0

    .line 290
    nop

    nop

    move-object v0, p0

    goto :goto_0

    .line 291
    :cond_0
    instance-of v0, p0, Ljava/io/FileInputStream;

    const/high16 v1, 0x100000

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Lcom/taobao/pexode/entity/RewindableFileInputStream;

    check-cast p0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0, v1}, Lcom/taobao/pexode/entity/RewindableFileInputStream;-><init>(Ljava/io/FileInputStream;I)V

    goto :goto_0

    .line 294
    :cond_1
    new-instance v0, Lcom/taobao/pexode/entity/RewindableInputStream;

    invoke-direct {v0, p0, v1}, Lcom/taobao/pexode/entity/RewindableInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 296
    :goto_0
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/taobao/pexode/Pexode;->doDecode(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;Lcom/taobao/pexode/common/DegradeEventListener;)Lcom/taobao/pexode/PexodeResult;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;Lcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/PexodeResult;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/pexode/PexodeOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1, p1}, Lcom/taobao/pexode/Pexode;->decode(Ljava/io/InputStream;Lcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/PexodeResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 269
    :catch_2
    :cond_0
    throw p0

    :catch_3
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 268
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_1
    return-object v0
.end method

.method public static decode([BIILcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/PexodeResult;
    .locals 1
    .param p0    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/taobao/pexode/PexodeOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .line 280
    new-instance v0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/pexode/entity/RewindableByteArrayStream;-><init>([BII)V

    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object p0

    invoke-static {v0, p3, p0}, Lcom/taobao/pexode/Pexode;->doDecode(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;Lcom/taobao/pexode/common/DegradeEventListener;)Lcom/taobao/pexode/PexodeResult;

    move-result-object p0

    return-object p0
.end method

.method private static doDecode(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;Lcom/taobao/pexode/common/DegradeEventListener;)Lcom/taobao/pexode/PexodeResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .line 301
    invoke-static {p1}, Lcom/taobao/pexode/Pexode;->checkOptions(Lcom/taobao/pexode/PexodeOptions;)V

    .line 303
    iget-object v0, p1, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    if-nez v0, :cond_0

    const/16 v0, 0x40

    .line 304
    invoke-static {p0, p1, v0}, Lcom/taobao/pexode/Pexode;->resolveDecoderWithHeader(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;I)Lcom/taobao/pexode/decoder/Decoder;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p1, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-static {v0}, Lcom/taobao/pexode/Pexode;->resolveDecoderWithMimeType(Lcom/taobao/pexode/mimetype/MimeType;)Lcom/taobao/pexode/decoder/Decoder;

    move-result-object v0

    .line 309
    :goto_0
    iget-object v1, p1, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {v1}, Lcom/taobao/pexode/mimetype/MimeType;->hasAlpha()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p1, Lcom/taobao/pexode/PexodeOptions;->outAlpha:Z

    .line 311
    iget-boolean v4, p1, Lcom/taobao/pexode/PexodeOptions;->enableAshmem:Z

    .line 312
    iget-object v5, p1, Lcom/taobao/pexode/PexodeOptions;->inBitmap:Landroid/graphics/Bitmap;

    .line 314
    iget-boolean v6, p1, Lcom/taobao/pexode/PexodeOptions;->incrementalDecode:Z

    const-string v7, "incremental decoding not supported for type["

    if-eqz v6, :cond_3

    invoke-interface {v0, v1}, Lcom/taobao/pexode/decoder/Decoder;->canDecodeIncrementally(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 315
    :cond_2
    new-instance p0, Lcom/taobao/pexode/exception/IncrementalDecodeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/pexode/exception/IncrementalDecodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 318
    :cond_3
    :goto_2
    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/pexode/decoder/Decoder;->decode(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;Lcom/taobao/pexode/common/DegradeEventListener;)Lcom/taobao/pexode/PexodeResult;

    move-result-object v6

    const/16 v8, 0x8

    .line 319
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v3

    .line 320
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/RewindableStream;->getInputType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x2

    iget-boolean v10, p1, Lcom/taobao/pexode/PexodeOptions;->justDecodeBounds:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {p1}, Lcom/taobao/pexode/PexodeOptions;->isSizeAvailable()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-boolean v10, p1, Lcom/taobao/pexode/PexodeOptions;->enableAshmem:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p1, Lcom/taobao/pexode/PexodeOptions;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x6

    iget-boolean v3, p1, Lcom/taobao/pexode/PexodeOptions;->incrementalDecode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x7

    aput-object v6, v8, v2

    const-string v2, "Pexode"

    const-string v3, "decoder=%s, type=%d, justBounds=%b, sizeAvailable=%b, ashmem=%b, inBitmap=%b, increment=%b, result=%s"

    .line 319
    invoke-static {v2, v3, v8}, Lcom/taobao/tcommon/log/FLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-static {v6, p1}, Lcom/taobao/pexode/DecodeHelper;->resultEnd(Lcom/taobao/pexode/PexodeResult;Lcom/taobao/pexode/PexodeOptions;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/pexode/Pexode;->systemDecoder:Lcom/taobao/pexode/decoder/Decoder;

    if-ne v0, v2, :cond_5

    goto/16 :goto_4

    .line 326
    :cond_5
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/pexode/Pexode;->systemDecoder:Lcom/taobao/pexode/decoder/Decoder;

    if-eqz v1, :cond_9

    .line 329
    invoke-interface {v0, v1}, Lcom/taobao/pexode/decoder/Decoder;->isSupported(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p1, Lcom/taobao/pexode/PexodeOptions;->incrementalDecode:Z

    if-eqz v2, :cond_6

    invoke-interface {v0, v1}, Lcom/taobao/pexode/decoder/Decoder;->canDecodeIncrementally(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 330
    :cond_6
    iget-boolean v2, p1, Lcom/taobao/pexode/PexodeOptions;->allowDegrade2System:Z

    if-eqz v2, :cond_8

    .line 331
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/RewindableStream;->rewind()V

    .line 333
    iput-boolean v4, p1, Lcom/taobao/pexode/PexodeOptions;->enableAshmem:Z

    .line 334
    iput-object v5, p1, Lcom/taobao/pexode/PexodeOptions;->inBitmap:Landroid/graphics/Bitmap;

    .line 335
    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/pexode/decoder/Decoder;->decode(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;Lcom/taobao/pexode/common/DegradeEventListener;)Lcom/taobao/pexode/PexodeResult;

    move-result-object p0

    .line 337
    iget-boolean v0, p1, Lcom/taobao/pexode/PexodeOptions;->cancelled:Z

    if-nez v0, :cond_7

    .line 338
    invoke-static {p0, p1}, Lcom/taobao/pexode/DecodeHelper;->resultOK(Lcom/taobao/pexode/PexodeResult;Lcom/taobao/pexode/PexodeOptions;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/taobao/pexode/common/DegradeEventListener;->onDegraded2System(Z)V

    :cond_7
    return-object p0

    .line 342
    :cond_8
    new-instance p0, Lcom/taobao/pexode/exception/DegradeNotAllowedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unfortunately, system supported type["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] but not allow degrading to system"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/pexode/exception/DegradeNotAllowedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 345
    :cond_9
    iget-boolean p0, p1, Lcom/taobao/pexode/PexodeOptions;->incrementalDecode:Z

    if-eqz p0, :cond_a

    .line 346
    new-instance p0, Lcom/taobao/pexode/exception/IncrementalDecodeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] when degraded to system"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/pexode/exception/IncrementalDecodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 349
    :cond_a
    new-instance p0, Lcom/taobao/pexode/exception/NotSupportedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "type["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] not supported when degraded to system"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/pexode/exception/NotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_4
    return-object v6
.end method

.method public static enableCancellability(Z)V
    .locals 0

    .line 133
    sput-boolean p0, Lcom/taobao/pexode/PexodeOptions;->sEnabledCancellability:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static forceDegrade2NoAshmem(Z)V
    .locals 2

    .line 114
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v0

    iput-boolean p0, v0, Lcom/taobao/pexode/DecodeHelper;->forcedDegrade2NoAshmem:Z

    const/4 v0, 0x1

    .line 115
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Pexode"

    const-string v1, "force degrading to no ashmem, result=%b"

    invoke-static {p0, v1, v0}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static forceDegrade2NoInBitmap(Z)V
    .locals 2

    .line 119
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v0

    iput-boolean p0, v0, Lcom/taobao/pexode/DecodeHelper;->forcedDegrade2NoInBitmap:Z

    const/4 v0, 0x1

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Pexode"

    const-string v1, "force degrading to no inBitmap, result=%b"

    invoke-static {p0, v1, v0}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static forceDegrade2System(Z)V
    .locals 6

    .line 98
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-boolean v1, v1, Lcom/taobao/pexode/Pexode;->forcedDegrade2System:Z

    if-ne p0, v1, :cond_0

    .line 100
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "Pexode"

    const-string v2, "force degrading to system decoder, result=%b"

    const/4 v3, 0x1

    .line 102
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/pexode/Pexode;->systemDecoder:Lcom/taobao/pexode/decoder/Decoder;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p0, :cond_1

    .line 105
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/pexode/Pexode;->systemDecoder:Lcom/taobao/pexode/decoder/Decoder;

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/pexode/Pexode;->systemDecoder:Lcom/taobao/pexode/decoder/Decoder;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :goto_0
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iput-boolean p0, v1, Lcom/taobao/pexode/Pexode;->forcedDegrade2System:Z

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getAllSupportDecoders(Lcom/taobao/pexode/mimetype/MimeType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/pexode/mimetype/MimeType;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/pexode/decoder/Decoder;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/pexode/decoder/Decoder;

    .line 143
    invoke-interface {v2, p0}, Lcom/taobao/pexode/decoder/Decoder;->isSupported(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static getForcedDegradationListener()Lcom/taobao/pexode/Pexode$ForcedDegradationListener;
    .locals 1

    .line 124
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/pexode/Pexode;->mForcedDegradationListener:Lcom/taobao/pexode/Pexode$ForcedDegradationListener;

    return-object v0
.end method

.method public static installDecoder(Lcom/taobao/pexode/decoder/Decoder;)V
    .locals 3

    .line 76
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-boolean v1, v1, Lcom/taobao/pexode/Pexode;->forcedDegrade2System:Z

    if-eqz v1, :cond_0

    .line 78
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    :goto_0
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/pexode/Pexode;->preparedContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 83
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/pexode/Pexode;->preparedContext:Landroid/content/Context;

    invoke-interface {p0, v1}, Lcom/taobao/pexode/decoder/Decoder;->prepare(Landroid/content/Context;)V

    .line 85
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isAshmemSupported()Z
    .locals 2

    .line 187
    invoke-static {}, Lcom/taobao/pexode/common/NdkCore;->isSoInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isForcedDegrade2System()Z
    .locals 1

    .line 137
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taobao/pexode/Pexode;->forcedDegrade2System:Z

    return v0
.end method

.method public static isInBitmapSupported()Z
    .locals 2

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static preferInputType(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/mimetype/MimeType;Z)I
    .locals 3

    .line 211
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/RewindableStream;->getInputType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return p0

    .line 217
    :cond_0
    invoke-static {p1}, Lcom/taobao/pexode/Pexode;->resolveDecoderWithMimeType(Lcom/taobao/pexode/mimetype/MimeType;)Lcom/taobao/pexode/decoder/Decoder;

    move-result-object v1

    .line 218
    invoke-interface {v1, p0, p1, p2}, Lcom/taobao/pexode/decoder/Decoder;->acceptInputType(ILcom/taobao/pexode/mimetype/MimeType;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return p0

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    const/4 p0, 0x3

    .line 223
    invoke-interface {v1, p0, p1, p2}, Lcom/taobao/pexode/decoder/Decoder;->acceptInputType(ILcom/taobao/pexode/mimetype/MimeType;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    return p0

    :cond_2
    return v0
.end method

.method public static prepare(Landroid/content/Context;)V
    .locals 3

    .line 65
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iput-object p0, v1, Lcom/taobao/pexode/Pexode;->preparedContext:Landroid/content/Context;

    .line 67
    invoke-static {p0}, Lcom/taobao/pexode/common/SoInstallMgrSdk;->init(Landroid/content/Context;)V

    .line 68
    invoke-static {p0}, Lcom/taobao/pexode/common/NdkCore;->prepare(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/pexode/decoder/Decoder;

    .line 70
    invoke-interface {v2, p0}, Lcom/taobao/pexode/decoder/Decoder;->prepare(Landroid/content/Context;)V

    goto :goto_0

    .line 72
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static resolveDecoderWithHeader(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;I)Lcom/taobao/pexode/decoder/Decoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/pexode/DecodeHelper;->offerBytes(I)[B

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/pexode/PexodeOptions;->tempHeaderBuffer:[B

    const/4 v0, 0x0

    .line 154
    :try_start_0
    iget-object v1, p1, Lcom/taobao/pexode/PexodeOptions;->tempHeaderBuffer:[B

    invoke-virtual {p0, v1, v0, p2}, Lcom/taobao/pexode/entity/RewindableStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/RewindableStream;->rewind()V

    if-lez v0, :cond_1

    .line 160
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/pexode/decoder/Decoder;

    .line 161
    iget-object v0, p1, Lcom/taobao/pexode/PexodeOptions;->tempHeaderBuffer:[B

    invoke-interface {p2, v0}, Lcom/taobao/pexode/decoder/Decoder;->detectMimeType([B)Lcom/taobao/pexode/mimetype/MimeType;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    if-eqz v0, :cond_0

    return-object p2

    .line 168
    :cond_1
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/pexode/Pexode;->systemDecoder:Lcom/taobao/pexode/decoder/Decoder;

    return-object p0
.end method

.method private static resolveDecoderWithMimeType(Lcom/taobao/pexode/mimetype/MimeType;)Lcom/taobao/pexode/decoder/Decoder;
    .locals 3

    if-eqz p0, :cond_1

    .line 173
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/pexode/decoder/Decoder;

    .line 174
    invoke-interface {v1, p0}, Lcom/taobao/pexode/decoder/Decoder;->isSupported(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 180
    :cond_1
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/pexode/Pexode;->systemDecoder:Lcom/taobao/pexode/decoder/Decoder;

    return-object p0
.end method

.method public static setBytesPool(Lcom/taobao/tcommon/core/BytesPool;)V
    .locals 1

    .line 93
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/pexode/DecodeHelper;->setBytesPool(Lcom/taobao/tcommon/core/BytesPool;)V

    return-void
.end method

.method public static setForcedDegradationListener(Lcom/taobao/pexode/Pexode$ForcedDegradationListener;)V
    .locals 1

    .line 128
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    iput-object p0, v0, Lcom/taobao/pexode/Pexode;->mForcedDegradationListener:Lcom/taobao/pexode/Pexode$ForcedDegradationListener;

    return-void
.end method

.method public static uninstallDecoder(Lcom/taobao/pexode/decoder/Decoder;)V
    .locals 1

    .line 89
    invoke-static {}, Lcom/taobao/pexode/Pexode$Singleton;->access$100()Lcom/taobao/pexode/Pexode;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/pexode/Pexode;->installedDecoders:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
