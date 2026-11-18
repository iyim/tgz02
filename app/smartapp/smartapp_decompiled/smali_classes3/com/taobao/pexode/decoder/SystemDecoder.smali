.class public Lcom/taobao/pexode/decoder/SystemDecoder;
.super Ljava/lang/Object;
.source "SystemDecoder.java"

# interfaces
.implements Lcom/taobao/pexode/decoder/Decoder;


# static fields
.field private static final sIsWebPASupported:Z

.field private static final sIsWebPSupported:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/taobao/pexode/decoder/SystemDecoder;->sIsWebPSupported:Z

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/taobao/pexode/decoder/SystemDecoder;->sIsWebPASupported:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkInputSafety(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/RewindableStream;->getInputType()I

    move-result v0

    const-string v1, "Pexode"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ne v0, v3, :cond_1

    .line 93
    iget-boolean v0, p1, Lcom/taobao/pexode/PexodeOptions;->justDecodeBounds:Z

    if-nez v0, :cond_0

    .line 94
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "maybe leak when system decoding with fd, back to input stream type!"

    invoke-static {v1, v3, v0}, Lcom/taobao/tcommon/log/FLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/RewindableStream;->back2StreamType()V

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/RewindableStream;->getInputType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 100
    iget-boolean p0, p1, Lcom/taobao/pexode/PexodeOptions;->enableAshmem:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 101
    new-array p0, v0, [Ljava/lang/Object;

    iget-boolean v3, p1, Lcom/taobao/pexode/PexodeOptions;->justDecodeBounds:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p0, v2

    const-string v3, "cannot use ashmem when system decoding with input stream(justBounds=%b), disabled already!"

    invoke-static {v1, v3, p0}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iput-boolean v2, p1, Lcom/taobao/pexode/PexodeOptions;->enableAshmem:Z

    .line 106
    :cond_2
    sget-object p0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP:Lcom/taobao/pexode/mimetype/MimeType;

    iget-object v3, p1, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {p0, v3}, Lcom/taobao/pexode/mimetype/MimeType;->isSame(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/taobao/pexode/decoder/SystemDecoder;->sIsWebPASupported:Z

    if-nez p0, :cond_3

    .line 107
    new-array p0, v0, [Ljava/lang/Object;

    iget-boolean p1, p1, Lcom/taobao/pexode/PexodeOptions;->justDecodeBounds:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "maybe error black image when system decoding webp with input stream(justBounds=%b)!"

    invoke-static {v1, p1, p0}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static varargs max([I)I
    .locals 3

    const/4 v0, 0x0

    .line 27
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 28
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 29
    aget v2, p0, v1

    if-le v2, v0, :cond_0

    .line 30
    aget v0, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static newSystemOptions(Lcom/taobao/pexode/PexodeOptions;)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .line 121
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 122
    iget-boolean v1, p0, Lcom/taobao/pexode/PexodeOptions;->justDecodeBounds:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 123
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v1

    iget-boolean v1, v1, Lcom/taobao/pexode/DecodeHelper;->forcedDegrade2NoInBitmap:Z

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/taobao/pexode/PexodeOptions;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/pexode/PexodeOptions;->isSizeAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget v1, p0, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 128
    iget v1, p0, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/taobao/pexode/PexodeOptions;->outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {v1}, Lcom/taobao/pexode/mimetype/MimeType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 133
    :cond_2
    iget v1, p0, Lcom/taobao/pexode/PexodeOptions;->sampleSize:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    .line 134
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 135
    sget-object v2, Lcom/taobao/pexode/PexodeOptions;->CONFIG:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 136
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v2

    iget-boolean v2, v2, Lcom/taobao/pexode/DecodeHelper;->forcedDegrade2NoAshmem:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/taobao/pexode/PexodeOptions;->enableAshmem:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/taobao/pexode/decoder/SystemDecoder;->setupAshmemOptions(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 137
    invoke-static {p0, v0}, Lcom/taobao/pexode/DecodeHelper;->setUponSysOptions(Lcom/taobao/pexode/PexodeOptions;Landroid/graphics/BitmapFactory$Options;)V

    return-object v0
.end method

.method public static setupAshmemOptions(Landroid/graphics/BitmapFactory$Options;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 114
    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v0, :cond_0

    .line 115
    iput-boolean p1, p0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 116
    iput-boolean p1, p0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    :cond_0
    return-void
.end method

.method private static updateFromSysOptions(Lcom/taobao/pexode/PexodeOptions;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 142
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    .line 143
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    const/4 p1, 0x0

    .line 144
    invoke-static {p0, p1}, Lcom/taobao/pexode/DecodeHelper;->setUponSysOptions(Lcom/taobao/pexode/PexodeOptions;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method


# virtual methods
.method public acceptInputType(ILcom/taobao/pexode/mimetype/MimeType;Z)Z
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-nez p3, :cond_1

    sget-object p1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP:Lcom/taobao/pexode/mimetype/MimeType;

    .line 60
    invoke-virtual {p1, p2}, Lcom/taobao/pexode/mimetype/MimeType;->isSame(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/taobao/pexode/decoder/SystemDecoder;->sIsWebPASupported:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public canDecodeIncrementally(Lcom/taobao/pexode/mimetype/MimeType;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public decode(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;Lcom/taobao/pexode/common/DegradeEventListener;)Lcom/taobao/pexode/PexodeResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Pexode"

    .line 149
    invoke-static {p1, p2}, Lcom/taobao/pexode/decoder/SystemDecoder;->checkInputSafety(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;)V

    .line 152
    invoke-static {p2}, Lcom/taobao/pexode/decoder/SystemDecoder;->newSystemOptions(Lcom/taobao/pexode/PexodeOptions;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 153
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 154
    :goto_0
    iget-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/pexode/entity/RewindableStream;->getInputType()I

    move-result v8

    if-eq v8, v3, :cond_5

    if-eq v8, v6, :cond_4

    .line 165
    iget-object v8, p2, Lcom/taobao/pexode/PexodeOptions;->resourceValue:Landroid/util/TypedValue;

    if-eqz v8, :cond_3

    .line 166
    iget-object v8, p0, Lcom/taobao/pexode/decoder/SystemDecoder;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/taobao/pexode/decoder/SystemDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object v8, v7

    :goto_2
    iget-object v9, p2, Lcom/taobao/pexode/PexodeOptions;->resourceValue:Landroid/util/TypedValue;

    iget-object v10, p2, Lcom/taobao/pexode/PexodeOptions;->outPadding:Landroid/graphics/Rect;

    invoke-static {v8, v9, p1, v10, v1}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_3

    .line 168
    :cond_3
    iget-object v8, p2, Lcom/taobao/pexode/PexodeOptions;->outPadding:Landroid/graphics/Rect;

    invoke-static {p1, v8, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_3

    .line 162
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/pexode/entity/RewindableStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    iget-object v9, p2, Lcom/taobao/pexode/PexodeOptions;->outPadding:Landroid/graphics/Rect;

    invoke-static {v8, v9, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_3

    .line 159
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/pexode/entity/RewindableStream;->getBuffer()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/taobao/pexode/entity/RewindableStream;->getBufferOffset()I

    move-result v9

    invoke-virtual {p1}, Lcom/taobao/pexode/entity/RewindableStream;->getBufferLength()I

    move-result v10

    invoke-static {v8, v9, v10, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :goto_3
    :try_start_1
    invoke-static {p2, v1}, Lcom/taobao/pexode/decoder/SystemDecoder;->updateFromSysOptions(Lcom/taobao/pexode/PexodeOptions;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v8, v7

    .line 174
    :goto_4
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/taobao/pexode/entity/RewindableStream;->getInputType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v4

    aput-object v1, v6, v3

    const-string v1, "SystemDecoder type=%d, error=%s"

    invoke-static {v0, v1, v6}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    if-eqz v8, :cond_6

    if-eqz v2, :cond_6

    .line 179
    :try_start_2
    invoke-static {v8}, Lcom/taobao/pexode/common/NdkCore;->nativePinBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    .line 182
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "NdkCore nativePinBitmap error=%s"

    invoke-static {v0, v1, v3}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v8, v7

    .line 186
    :cond_6
    :goto_6
    invoke-static {v8}, Lcom/taobao/pexode/PexodeResult;->wrap(Landroid/graphics/Bitmap;)Lcom/taobao/pexode/PexodeResult;

    move-result-object v0

    .line 187
    invoke-static {v0, p2}, Lcom/taobao/pexode/DecodeHelper;->resultEnd(Lcom/taobao/pexode/PexodeResult;Lcom/taobao/pexode/PexodeOptions;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v2, :cond_7

    .line 188
    iget-boolean v1, p2, Lcom/taobao/pexode/PexodeOptions;->allowDegrade2NoAshmem:Z

    if-eqz v1, :cond_7

    .line 189
    invoke-virtual {p1}, Lcom/taobao/pexode/entity/RewindableStream;->rewind()V

    .line 190
    iput-boolean v4, p2, Lcom/taobao/pexode/PexodeOptions;->enableAshmem:Z

    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/pexode/decoder/SystemDecoder;->decode(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;Lcom/taobao/pexode/common/DegradeEventListener;)Lcom/taobao/pexode/PexodeResult;

    move-result-object v0

    .line 193
    invoke-static {p2}, Lcom/taobao/pexode/DecodeHelper;->cancelledInOptions(Lcom/taobao/pexode/PexodeOptions;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 194
    invoke-static {v0, p2}, Lcom/taobao/pexode/DecodeHelper;->resultOK(Lcom/taobao/pexode/PexodeResult;Lcom/taobao/pexode/PexodeOptions;)Z

    move-result p1

    invoke-interface {p3, p1}, Lcom/taobao/pexode/common/DegradeEventListener;->onDegraded2NoAshmem(Z)V

    goto :goto_7

    :cond_7
    if-eqz v5, :cond_8

    .line 196
    iget-boolean v1, p2, Lcom/taobao/pexode/PexodeOptions;->allowDegrade2NoInBitmap:Z

    if-eqz v1, :cond_8

    .line 197
    invoke-virtual {p1}, Lcom/taobao/pexode/entity/RewindableStream;->rewind()V

    .line 198
    iput-object v7, p2, Lcom/taobao/pexode/PexodeOptions;->inBitmap:Landroid/graphics/Bitmap;

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/pexode/decoder/SystemDecoder;->decode(Lcom/taobao/pexode/entity/RewindableStream;Lcom/taobao/pexode/PexodeOptions;Lcom/taobao/pexode/common/DegradeEventListener;)Lcom/taobao/pexode/PexodeResult;

    move-result-object v0

    .line 201
    invoke-static {p2}, Lcom/taobao/pexode/DecodeHelper;->cancelledInOptions(Lcom/taobao/pexode/PexodeOptions;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 202
    invoke-static {v0, p2}, Lcom/taobao/pexode/DecodeHelper;->resultOK(Lcom/taobao/pexode/PexodeResult;Lcom/taobao/pexode/PexodeOptions;)Z

    move-result p1

    invoke-interface {p3, p1}, Lcom/taobao/pexode/common/DegradeEventListener;->onDegraded2NoInBitmap(Z)V

    :cond_8
    :goto_7
    return-object v0
.end method

.method public detectMimeType([B)Lcom/taobao/pexode/mimetype/MimeType;
    .locals 1

    .line 70
    sget-boolean v0, Lcom/taobao/pexode/decoder/SystemDecoder;->sIsWebPSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {v0, p1}, Lcom/taobao/pexode/mimetype/MimeType;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object p1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP:Lcom/taobao/pexode/mimetype/MimeType;

    return-object p1

    .line 73
    :cond_0
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->JPEG:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {v0, p1}, Lcom/taobao/pexode/mimetype/MimeType;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object p1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->JPEG:Lcom/taobao/pexode/mimetype/MimeType;

    return-object p1

    .line 76
    :cond_1
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->PNG:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {v0, p1}, Lcom/taobao/pexode/mimetype/MimeType;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object p1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->PNG:Lcom/taobao/pexode/mimetype/MimeType;

    return-object p1

    .line 79
    :cond_2
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->PNG_A:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {v0, p1}, Lcom/taobao/pexode/mimetype/MimeType;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    sget-object p1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->PNG_A:Lcom/taobao/pexode/mimetype/MimeType;

    return-object p1

    .line 82
    :cond_3
    sget-boolean v0, Lcom/taobao/pexode/decoder/SystemDecoder;->sIsWebPASupported:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP_A:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {v0, p1}, Lcom/taobao/pexode/mimetype/MimeType;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    sget-object p1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP_A:Lcom/taobao/pexode/mimetype/MimeType;

    return-object p1

    .line 85
    :cond_4
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->BMP:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-virtual {v0, p1}, Lcom/taobao/pexode/mimetype/MimeType;->isMyHeader([B)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 86
    sget-object p1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->BMP:Lcom/taobao/pexode/mimetype/MimeType;

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public isSupported(Lcom/taobao/pexode/mimetype/MimeType;)Z
    .locals 1

    if-eqz p1, :cond_3

    .line 46
    sget-boolean v0, Lcom/taobao/pexode/decoder/SystemDecoder;->sIsWebPSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP:Lcom/taobao/pexode/mimetype/MimeType;

    .line 47
    invoke-virtual {p1, v0}, Lcom/taobao/pexode/mimetype/MimeType;->isSame(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->JPEG:Lcom/taobao/pexode/mimetype/MimeType;

    .line 48
    invoke-virtual {p1, v0}, Lcom/taobao/pexode/mimetype/MimeType;->isSame(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->PNG:Lcom/taobao/pexode/mimetype/MimeType;

    .line 49
    invoke-virtual {p1, v0}, Lcom/taobao/pexode/mimetype/MimeType;->isSame(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->PNG_A:Lcom/taobao/pexode/mimetype/MimeType;

    .line 50
    invoke-virtual {p1, v0}, Lcom/taobao/pexode/mimetype/MimeType;->isSame(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/taobao/pexode/decoder/SystemDecoder;->sIsWebPASupported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP_A:Lcom/taobao/pexode/mimetype/MimeType;

    .line 51
    invoke-virtual {p1, v0}, Lcom/taobao/pexode/mimetype/MimeType;->isSame(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->BMP:Lcom/taobao/pexode/mimetype/MimeType;

    .line 52
    invoke-virtual {p1, v0}, Lcom/taobao/pexode/mimetype/MimeType;->isSame(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public prepare(Landroid/content/Context;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/taobao/pexode/decoder/SystemDecoder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemDecoder@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
