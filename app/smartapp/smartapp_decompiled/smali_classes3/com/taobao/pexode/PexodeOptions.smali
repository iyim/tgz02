.class public Lcom/taobao/pexode/PexodeOptions;
.super Ljava/lang/Object;
.source "PexodeOptions.java"


# static fields
.field public static final CONFIG:Landroid/graphics/Bitmap$Config;

.field static sEnabledCancellability:Z


# instance fields
.field public allowDegrade2NoAshmem:Z

.field public allowDegrade2NoInBitmap:Z

.field public allowDegrade2System:Z

.field volatile cancelled:Z

.field private volatile cancelledPtr:J

.field public enableAshmem:Z

.field public forceStaticIfAnimation:Z

.field public inBitmap:Landroid/graphics/Bitmap;

.field public incrementalDecode:Z

.field public justDecodeBounds:Z

.field lastSampleSize:I

.field mIncrementalStaging:Lcom/taobao/pexode/entity/IncrementalStaging;

.field public outAlpha:Z

.field public outHeight:I

.field public outMimeType:Lcom/taobao/pexode/mimetype/MimeType;

.field public outPadding:Landroid/graphics/Rect;

.field public outWidth:I

.field public resourceValue:Landroid/util/TypedValue;

.field public sampleSize:I

.field public tempHeaderBuffer:[B

.field private uponSysOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/taobao/pexode/PexodeOptions;->CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    .line 99
    sput-boolean v0, Lcom/taobao/pexode/PexodeOptions;->sEnabledCancellability:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    .line 84
    iput v0, p0, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    return-void
.end method

.method private native nativeRequestCancel(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/taobao/pexode/PexodeOptions;->tempHeaderBuffer:[B

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/pexode/PexodeOptions;->tempHeaderBuffer:[B

    invoke-virtual {v0, v1}, Lcom/taobao/pexode/DecodeHelper;->releaseBytes([B)V

    .line 149
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public isSizeAvailable()Z
    .locals 1

    .line 139
    iget v0, p0, Lcom/taobao/pexode/PexodeOptions;->outWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/taobao/pexode/PexodeOptions;->outHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized requestCancel()Z
    .locals 6

    monitor-enter p0

    .line 114
    :try_start_0
    sget-boolean v0, Lcom/taobao/pexode/PexodeOptions;->sEnabledCancellability:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/taobao/pexode/PexodeOptions;->cancelled:Z

    .line 116
    iget-object v1, p0, Lcom/taobao/pexode/PexodeOptions;->uponSysOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/taobao/pexode/PexodeOptions;->uponSysOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return v0

    .line 122
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/taobao/pexode/PexodeOptions;->cancelledPtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 123
    iget-wide v1, p0, Lcom/taobao/pexode/PexodeOptions;->cancelledPtr:J

    invoke-direct {p0, v1, v2}, Lcom/taobao/pexode/PexodeOptions;->nativeRequestCancel(J)V

    .line 124
    iput-wide v3, p0, Lcom/taobao/pexode/PexodeOptions;->cancelledPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit p0

    return v0

    .line 126
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/taobao/pexode/PexodeOptions;->mIncrementalStaging:Lcom/taobao/pexode/entity/IncrementalStaging;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/taobao/pexode/PexodeOptions;->mIncrementalStaging:Lcom/taobao/pexode/entity/IncrementalStaging;

    invoke-virtual {v0}, Lcom/taobao/pexode/entity/IncrementalStaging;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const/4 v0, 0x0

    .line 130
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setUponSysOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    monitor-enter p0

    .line 107
    :try_start_0
    iput-object p1, p0, Lcom/taobao/pexode/PexodeOptions;->uponSysOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
