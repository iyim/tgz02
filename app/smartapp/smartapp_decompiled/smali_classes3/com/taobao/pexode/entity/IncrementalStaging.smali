.class public Lcom/taobao/pexode/entity/IncrementalStaging;
.super Ljava/lang/Object;
.source "IncrementalStaging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/pexode/entity/IncrementalStaging$NativeDestructor;
    }
.end annotation


# instance fields
.field private final mInterBitmap:Landroid/graphics/Bitmap;

.field private mNativeConfigOut:J

.field private final mNativeDestructor:Lcom/taobao/pexode/entity/IncrementalStaging$NativeDestructor;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;JLcom/taobao/pexode/entity/IncrementalStaging$NativeDestructor;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/taobao/pexode/entity/IncrementalStaging;->mInterBitmap:Landroid/graphics/Bitmap;

    .line 19
    iput-wide p2, p0, Lcom/taobao/pexode/entity/IncrementalStaging;->mNativeConfigOut:J

    .line 20
    iput-object p4, p0, Lcom/taobao/pexode/entity/IncrementalStaging;->mNativeDestructor:Lcom/taobao/pexode/entity/IncrementalStaging$NativeDestructor;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/IncrementalStaging;->release()V

    .line 42
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getInterBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/taobao/pexode/entity/IncrementalStaging;->mInterBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNativeConfigOut()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/taobao/pexode/entity/IncrementalStaging;->mNativeConfigOut:J

    return-wide v0
.end method

.method public declared-synchronized release()V
    .locals 6

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/taobao/pexode/entity/IncrementalStaging;->mNativeConfigOut:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 33
    iget-object v0, p0, Lcom/taobao/pexode/entity/IncrementalStaging;->mNativeDestructor:Lcom/taobao/pexode/entity/IncrementalStaging$NativeDestructor;

    iget-wide v4, p0, Lcom/taobao/pexode/entity/IncrementalStaging;->mNativeConfigOut:J

    invoke-interface {v0, v4, v5}, Lcom/taobao/pexode/entity/IncrementalStaging$NativeDestructor;->destruct(J)V

    .line 34
    iput-wide v2, p0, Lcom/taobao/pexode/entity/IncrementalStaging;->mNativeConfigOut:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
