.class Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier$1;
.super Ljava/lang/Object;
.source "ScoreBasedEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;->get()Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field now:J

.field final synthetic this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;


# direct methods
.method constructor <init>(Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;)V
    .locals 2

    .line 30
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->now:J

    return-void
.end method


# virtual methods
.method public compare(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;)I
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;

    iget-wide v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->now:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;->calculateScore(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;J)F

    move-result p1

    .line 40
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;

    iget-wide v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->now:J

    invoke-virtual {v0, p2, v1, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier;->calculateScore(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;J)F

    move-result p2

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;

    check-cast p2, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/ScoreBasedEvictionComparatorSupplier$1;->compare(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;)I

    move-result p1

    return p1
.end method
