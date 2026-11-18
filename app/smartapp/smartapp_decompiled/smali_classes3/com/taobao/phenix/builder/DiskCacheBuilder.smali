.class public Lcom/taobao/phenix/builder/DiskCacheBuilder;
.super Ljava/lang/Object;
.source "DiskCacheBuilder.java"

# interfaces
.implements Lcom/taobao/phenix/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/builder/Builder<",
        "Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;",
        ">;"
    }
.end annotation


# instance fields
.field private mDiskCacheSupplier:Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;

.field private mHaveBuilt:Z

.field private final mPrioritySizes:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mPrioritySizes:Landroid/util/SparseIntArray;

    .line 24
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mPrioritySizes:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/high16 v2, 0x5000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mPrioritySizes:Landroid/util/SparseIntArray;

    const/high16 v1, 0xa00000

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mPrioritySizes:Landroid/util/SparseIntArray;

    const/16 v2, 0x33

    const/high16 v3, 0x1e00000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mPrioritySizes:Landroid/util/SparseIntArray;

    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mPrioritySizes:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/high16 v2, 0x1400000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;
    .locals 5

    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mHaveBuilt:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mDiskCacheSupplier:Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mDiskCacheSupplier:Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/taobao/phenix/cache/disk/NonOpDiskCacheSupplier;

    invoke-direct {v0}, Lcom/taobao/phenix/cache/disk/NonOpDiskCacheSupplier;-><init>()V

    iput-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mDiskCacheSupplier:Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;

    const-string v0, "DiskCache"

    const-string v2, "use default non-operation DiskCacheSupplier, cause not implement a custom DiskCacheSupplier"

    .line 51
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mHaveBuilt:Z

    .line 54
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mDiskCacheSupplier:Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;

    const/16 v2, 0x11

    invoke-interface {v0, v2}, Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;->get(I)Lcom/taobao/phenix/cache/disk/DiskCache;

    move-result-object v0

    const-string v2, "DiskCache for the priority(TOP_USED_1) cannot be null"

    invoke-static {v0, v2}, Lcom/taobao/tcommon/core/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mDiskCacheSupplier:Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;

    invoke-interface {v0}, Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;->getAll()Ljava/util/Collection;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/phenix/cache/disk/DiskCache;

    .line 58
    iget-object v3, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mPrioritySizes:Landroid/util/SparseIntArray;

    invoke-interface {v2}, Lcom/taobao/phenix/cache/disk/DiskCache;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/taobao/phenix/cache/disk/DiskCache;->maxSize(I)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mDiskCacheSupplier:Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/taobao/phenix/builder/DiskCacheBuilder;->build()Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;

    move-result-object v0

    return-object v0
.end method

.method public maxSize(II)Lcom/taobao/phenix/builder/DiskCacheBuilder;
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "DiskCacheBuilder has been built, not allow maxSize() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mPrioritySizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-object p0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lcom/taobao/phenix/builder/Builder;
    .locals 0

    .line 17
    check-cast p1, Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/builder/DiskCacheBuilder;->with(Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;)Lcom/taobao/phenix/builder/DiskCacheBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;)Lcom/taobao/phenix/builder/DiskCacheBuilder;
    .locals 2

    .line 33
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "DiskCacheBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/taobao/phenix/builder/DiskCacheBuilder;->mDiskCacheSupplier:Lcom/taobao/phenix/cache/disk/DiskCacheSupplier;

    return-object p0
.end method
