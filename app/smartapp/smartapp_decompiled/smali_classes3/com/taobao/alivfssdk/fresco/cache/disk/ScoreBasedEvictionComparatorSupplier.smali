.class public Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;
.super Ljava/lang/Object;
.source "ScoreBasedEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparatorSupplier;


# instance fields
.field private final mAgeWeight:F

.field private final mSizeWeight:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;->mAgeWeight:F

    .line 25
    iput p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;->mSizeWeight:F

    return-void
.end method


# virtual methods
.method calculateScore(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;J)F
    .locals 2
    .annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
    .end annotation

    .line 53
    invoke-interface {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 54
    invoke-interface {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getSize()J

    move-result-wide v0

    .line 55
    iget p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;->mAgeWeight:F

    long-to-float p2, p2

    mul-float p1, p1, p2

    iget p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;->mSizeWeight:F

    long-to-float p3, v0

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public get()Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparator;
    .locals 1

    .line 30
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier$1;

    invoke-direct {v0, p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier$1;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;)V

    return-object v0
.end method
