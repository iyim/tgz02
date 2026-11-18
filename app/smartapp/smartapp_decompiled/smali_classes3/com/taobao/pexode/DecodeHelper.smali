.class public Lcom/taobao/pexode/DecodeHelper;
.super Ljava/lang/Object;
.source "DecodeHelper.java"

# interfaces
.implements Lcom/taobao/pexode/common/DegradeEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/pexode/DecodeHelper$Singleton;
    }
.end annotation


# static fields
.field private static final THRESHOLD_OF_NO_ASHMEM_FOREVER:I = 0x8

.field private static final THRESHOLD_OF_NO_IN_BITMAP_FOREVER:I = 0x8

.field private static final THRESHOLD_OF_SYSTEM_FOREVER:I = 0x8


# instance fields
.field private bytesPool:Lcom/taobao/tcommon/core/BytesPool;

.field public forcedDegrade2NoAshmem:Z

.field public forcedDegrade2NoInBitmap:Z

.field historyOfDegrade2NoAshmem:I

.field historyOfDegrade2NoInBitmap:I

.field historyOfDegrade2System:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private calculateNewBinary(IZ)I
    .locals 0

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    and-int/lit16 p1, p1, 0x3ff

    return p1
.end method

.method public static cancelledInOptions(Lcom/taobao/pexode/PexodeOptions;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/taobao/pexode/PexodeOptions;->cancelled:Z

    return p0
.end method

.method private countBinaryBit(I)I
    .locals 2

    shr-int/lit8 v0, p1, 0x1

    const v1, -0x24924925

    and-int/2addr v0, v1

    sub-int v0, p1, v0

    shr-int/lit8 p1, p1, 0x2

    const v1, 0x49249249

    and-int/2addr p1, v1

    sub-int/2addr v0, p1

    shr-int/lit8 p1, v0, 0x3

    add-int/2addr v0, p1

    const p1, -0x38e38e39

    and-int/2addr p1, v0

    .line 95
    rem-int/lit8 p1, p1, 0x3f

    return p1
.end method

.method public static getIncrementalStaging(Lcom/taobao/pexode/PexodeOptions;)Lcom/taobao/pexode/entity/IncrementalStaging;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/taobao/pexode/PexodeOptions;->mIncrementalStaging:Lcom/taobao/pexode/entity/IncrementalStaging;

    return-object p0
.end method

.method public static getLastSampleSizeInOptions(Lcom/taobao/pexode/PexodeOptions;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/taobao/pexode/PexodeOptions;->lastSampleSize:I

    return p0
.end method

.method public static instance()Lcom/taobao/pexode/DecodeHelper;
    .locals 1

    .line 16
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper$Singleton;->access$000()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v0

    return-object v0
.end method

.method public static resultEnd(Lcom/taobao/pexode/PexodeResult;Lcom/taobao/pexode/PexodeOptions;)Z
    .locals 1

    .line 136
    iget-boolean v0, p1, Lcom/taobao/pexode/PexodeOptions;->cancelled:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/taobao/pexode/DecodeHelper;->resultOK(Lcom/taobao/pexode/PexodeResult;Lcom/taobao/pexode/PexodeOptions;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static resultOK(Lcom/taobao/pexode/PexodeResult;Lcom/taobao/pexode/PexodeOptions;)Z
    .locals 1

    .line 130
    iget-boolean v0, p1, Lcom/taobao/pexode/PexodeOptions;->justDecodeBounds:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/taobao/pexode/PexodeOptions;->isSizeAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p1, Lcom/taobao/pexode/PexodeOptions;->incrementalDecode:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/taobao/pexode/PexodeOptions;->mIncrementalStaging:Lcom/taobao/pexode/entity/IncrementalStaging;

    if-nez p1, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    iget-object p1, p0, Lcom/taobao/pexode/PexodeResult;->bitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/taobao/pexode/PexodeResult;->animated:Lcom/taobao/pexode/animate/AnimatedImage;

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setIncrementalStaging(Lcom/taobao/pexode/PexodeOptions;Lcom/taobao/pexode/entity/IncrementalStaging;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/taobao/pexode/PexodeOptions;->mIncrementalStaging:Lcom/taobao/pexode/entity/IncrementalStaging;

    return-void
.end method

.method public static setLastSampleSizeInOptions(Lcom/taobao/pexode/PexodeOptions;I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/taobao/pexode/PexodeOptions;->lastSampleSize:I

    return-void
.end method

.method public static setUponSysOptions(Lcom/taobao/pexode/PexodeOptions;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/taobao/pexode/PexodeOptions;->setUponSysOptions(Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method


# virtual methods
.method public offerBytes(I)[B
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/taobao/pexode/DecodeHelper;->bytesPool:Lcom/taobao/tcommon/core/BytesPool;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p1}, Lcom/taobao/tcommon/core/BytesPool;->offer(I)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 112
    new-array v0, p1, [B

    :cond_1
    return-object v0
.end method

.method public declared-synchronized onDegraded2NoAshmem(Z)V
    .locals 4

    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/pexode/DecodeHelper;->forcedDegrade2NoAshmem:Z

    if-nez v0, :cond_0

    .line 66
    iget v0, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2NoAshmem:I

    invoke-direct {p0, v0, p1}, Lcom/taobao/pexode/DecodeHelper;->calculateNewBinary(IZ)I

    move-result p1

    iput p1, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2NoAshmem:I

    .line 67
    iget p1, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2NoAshmem:I

    invoke-direct {p0, p1}, Lcom/taobao/pexode/DecodeHelper;->countBinaryBit(I)I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/taobao/pexode/DecodeHelper;->forcedDegrade2NoAshmem:Z

    const-string v0, "Pexode"

    const-string v1, "auto degrading to no ashmem, history=%d"

    .line 69
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2NoAshmem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-static {v0, v1, p1}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lcom/taobao/pexode/Pexode;->getForcedDegradationListener()Lcom/taobao/pexode/Pexode$ForcedDegradationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Lcom/taobao/pexode/Pexode$ForcedDegradationListener;->onForcedDegrade2NoAshmem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDegraded2NoInBitmap(Z)V
    .locals 4

    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/pexode/DecodeHelper;->forcedDegrade2NoInBitmap:Z

    if-nez v0, :cond_0

    .line 81
    iget v0, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2NoInBitmap:I

    invoke-direct {p0, v0, p1}, Lcom/taobao/pexode/DecodeHelper;->calculateNewBinary(IZ)I

    move-result p1

    iput p1, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2NoInBitmap:I

    .line 82
    iget p1, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2NoInBitmap:I

    invoke-direct {p0, p1}, Lcom/taobao/pexode/DecodeHelper;->countBinaryBit(I)I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/taobao/pexode/DecodeHelper;->forcedDegrade2NoInBitmap:Z

    const-string v0, "Pexode"

    const-string v1, "auto degrading to no inBitmap, history=%d"

    .line 84
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2NoInBitmap:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-static {v0, v1, p1}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Lcom/taobao/pexode/Pexode;->getForcedDegradationListener()Lcom/taobao/pexode/Pexode$ForcedDegradationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-interface {p1}, Lcom/taobao/pexode/Pexode$ForcedDegradationListener;->onForcedDegrade2NoInBitmap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDegraded2System(Z)V
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/taobao/pexode/Pexode;->isForcedDegrade2System()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget v0, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2System:I

    invoke-direct {p0, v0, p1}, Lcom/taobao/pexode/DecodeHelper;->calculateNewBinary(IZ)I

    move-result p1

    iput p1, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2System:I

    .line 53
    iget p1, p0, Lcom/taobao/pexode/DecodeHelper;->historyOfDegrade2System:I

    invoke-direct {p0, p1}, Lcom/taobao/pexode/DecodeHelper;->countBinaryBit(I)I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 54
    invoke-static {p1}, Lcom/taobao/pexode/Pexode;->forceDegrade2System(Z)V

    .line 56
    invoke-static {}, Lcom/taobao/pexode/Pexode;->getForcedDegradationListener()Lcom/taobao/pexode/Pexode$ForcedDegradationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    invoke-interface {p1}, Lcom/taobao/pexode/Pexode$ForcedDegradationListener;->onForcedDegrade2System()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseBytes([B)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/taobao/pexode/DecodeHelper;->bytesPool:Lcom/taobao/tcommon/core/BytesPool;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1}, Lcom/taobao/tcommon/core/BytesPool;->release([B)V

    :cond_0
    return-void
.end method

.method setBytesPool(Lcom/taobao/tcommon/core/BytesPool;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/taobao/pexode/DecodeHelper;->bytesPool:Lcom/taobao/tcommon/core/BytesPool;

    return-void
.end method
