.class public Landroid/support/rastermill/FrameSequence;
.super Ljava/lang/Object;
.source "FrameSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/FrameSequence$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameSequence"


# instance fields
.field private final mDefaultLoopCount:I

.field private final mFrameCount:I

.field private final mHeight:I

.field private mLazy:Z

.field private final mNativeFrameSequence:J

.field private final mOpaque:Z

.field private mOptions:Lcom/bumptech/glide/load/Options;

.field private mRawBufferData:Ljava/nio/ByteBuffer;

.field private mRawByteData:[B

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "framesequence"

    .line 37
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(JIIZII)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    .line 93
    iput p3, p0, Landroid/support/rastermill/FrameSequence;->mWidth:I

    .line 94
    iput p4, p0, Landroid/support/rastermill/FrameSequence;->mHeight:I

    .line 95
    iput-boolean p5, p0, Landroid/support/rastermill/FrameSequence;->mOpaque:Z

    .line 96
    iput p6, p0, Landroid/support/rastermill/FrameSequence;->mFrameCount:I

    .line 97
    iput p7, p0, Landroid/support/rastermill/FrameSequence;->mDefaultLoopCount:I

    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Landroid/support/rastermill/FrameSequence;->nativeDestroyState(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(JILandroid/graphics/Bitmap;I)J
    .locals 0

    .line 33
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/rastermill/FrameSequence;->nativeGetFrame(JILandroid/graphics/Bitmap;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static decodeByteArray([B)Landroid/support/rastermill/FrameSequence;
    .locals 2

    .line 119
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/support/rastermill/FrameSequence;->decodeByteArray([BII)Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    return-object p0
.end method

.method public static decodeByteArray([BII)Landroid/support/rastermill/FrameSequence;
    .locals 2

    if-eqz p0, :cond_1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v0, p1, p2

    .line 124
    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 128
    invoke-static {p0, p1, p2}, Landroid/support/rastermill/FrameSequence;->nativeDecodeByteArray([BII)Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    return-object p0

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid offset/length parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;
    .locals 1

    const/16 v0, 0x4000

    .line 132
    new-array v0, v0, [B

    invoke-static {p0, v0}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;[B)Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStream(Ljava/io/InputStream;[B)Landroid/support/rastermill/FrameSequence;
    .locals 0

    if-eqz p0, :cond_0

    .line 137
    invoke-static {p0, p1}, Landroid/support/rastermill/FrameSequence;->nativeDecodeStream(Ljava/io/InputStream;[B)Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    return-object p0

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static lazyDecode(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/Options;)Landroid/support/rastermill/FrameSequence;
    .locals 9
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    new-instance v8, Landroid/support/rastermill/FrameSequence;

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/support/rastermill/FrameSequence;-><init>(JIIZII)V

    .line 103
    invoke-static {}, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;->getInstance()Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const-class v0, [B

    invoke-interface {p1, p2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 105
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 108
    iput-object p0, v8, Landroid/support/rastermill/FrameSequence;->mRawBufferData:Ljava/nio/ByteBuffer;

    .line 109
    iput-object p2, v8, Landroid/support/rastermill/FrameSequence;->mRawByteData:[B

    const/4 p0, 0x1

    .line 110
    iput-boolean p0, v8, Landroid/support/rastermill/FrameSequence;->mLazy:Z

    .line 111
    iput-object p3, v8, Landroid/support/rastermill/FrameSequence;->mOptions:Lcom/bumptech/glide/load/Options;

    .line 113
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    return-object v8
.end method

.method private static native nativeCreateState(J)J
.end method

.method private static native nativeDecodeByteArray([BII)Landroid/support/rastermill/FrameSequence;
.end method

.method private static native nativeDecodeByteBuffer(Ljava/nio/ByteBuffer;II)Landroid/support/rastermill/FrameSequence;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[B)Landroid/support/rastermill/FrameSequence;
.end method

.method private static native nativeDestroyFrameSequence(J)V
.end method

.method private static native nativeDestroyState(J)V
.end method

.method private static native nativeGetFrame(JILandroid/graphics/Bitmap;I)J
.end method


# virtual methods
.method public active()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Landroid/support/rastermill/FrameSequence;->mLazy:Z

    return-void
.end method

.method createState()Landroid/support/rastermill/FrameSequence$State;
    .locals 5

    .line 141
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 145
    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequence;->nativeCreateState(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    new-instance v2, Landroid/support/rastermill/FrameSequence$State;

    invoke-direct {v2, v0, v1}, Landroid/support/rastermill/FrameSequence$State;-><init>(J)V

    return-object v2

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempted to use incorrectly built FrameSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 5

    .line 165
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 166
    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequence;->nativeDestroyFrameSequence(J)V

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequence;->mRawBufferData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 177
    :try_start_0
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 178
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence;->mNativeFrameSequence:J

    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequence;->nativeDestroyFrameSequence(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDefaultLoopCount()I
    .locals 1

    .line 72
    iget v0, p0, Landroid/support/rastermill/FrameSequence;->mDefaultLoopCount:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/support/rastermill/FrameSequence;->mFrameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 58
    iget v0, p0, Landroid/support/rastermill/FrameSequence;->mHeight:I

    return v0
.end method

.method public getOptions()Lcom/bumptech/glide/load/Options;
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/support/rastermill/FrameSequence;->mOptions:Lcom/bumptech/glide/load/Options;

    return-object v0
.end method

.method public getRawBufferData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/support/rastermill/FrameSequence;->mRawBufferData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getRawByteData()[B
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/support/rastermill/FrameSequence;->mRawByteData:[B

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 55
    iget v0, p0, Landroid/support/rastermill/FrameSequence;->mWidth:I

    return v0
.end method

.method public isLazy()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequence;->mLazy:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequence;->mOpaque:Z

    return v0
.end method
