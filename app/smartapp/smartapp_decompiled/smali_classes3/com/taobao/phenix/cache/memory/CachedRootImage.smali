.class public abstract Lcom/taobao/phenix/cache/memory/CachedRootImage;
.super Ljava/lang/Object;
.source "CachedRootImage.java"

# interfaces
.implements Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;


# instance fields
.field private final mDiskCacheCatalog:I

.field private final mDiskCacheKey:Ljava/lang/String;

.field private final mDiskPriority:I

.field private mIsReferenceDirty:Z

.field private final mMemoryCacheKey:Ljava/lang/String;

.field private mRecycled:Z

.field private final mReleasableReferenceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReleasedFromCache:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mMemoryCacheKey:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mDiskCacheKey:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mDiskCacheCatalog:I

    .line 38
    iput p4, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mDiskPriority:I

    .line 39
    new-instance p1, Ljava/util/HashSet;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    return-void
.end method

.method private declared-synchronized addReference(Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;)V
    .locals 8

    monitor-enter p0

    if-nez p1, :cond_0

    .line 44
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mRecycled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 50
    iput-boolean v1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mRecycled:Z

    .line 51
    invoke-virtual {p0}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->onChange2NotRecycled()V

    .line 54
    :cond_1
    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mIsReferenceDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 55
    monitor-exit p0

    return-void

    .line 64
    :cond_2
    :try_start_1
    instance-of v0, p1, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iput-boolean v4, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mIsReferenceDirty:Z

    const-string v0, "ImageRecycle"

    const-string v5, "references dirty now(last releasable drawable same with the hash is lost), refer=%d, image=%s, drawable=%s"

    .line 68
    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object p0, v6, v4

    aput-object p1, v6, v2

    invoke-static {v0, v5, v6}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;

    invoke-virtual {v0, p0}, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->setReleasableReferenceListener(Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;)V

    goto :goto_0

    .line 74
    :cond_4
    iput-boolean v4, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mIsReferenceDirty:Z

    :goto_0
    const-string v0, "ImageRecycle"

    const-string v5, "image reference added, isDirty=%b, refer=%d, image=%s, drawable=%s"

    const/4 v6, 0x4

    .line 77
    new-array v6, v6, [Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mIsReferenceDirty:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    aput-object p0, v6, v2

    aput-object p1, v6, v3

    invoke-static {v0, v5, v6}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private recycleIfPossible()V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mRecycled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mIsReferenceDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasedFromCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->onCanBeRecycled()V

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mRecycled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getMemoryCacheKey()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mMemoryCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSize()I
.end method

.method protected abstract newBitmapDrawable(Ljava/lang/String;Ljava/lang/String;IIZLandroid/content/res/Resources;)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;
.end method

.method public newImageDrawableWith(ZLandroid/content/res/Resources;)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;
    .locals 7

    .line 141
    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mMemoryCacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mDiskCacheKey:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mDiskCacheCatalog:I

    iget v4, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mDiskPriority:I

    move-object v0, p0

    move v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->newBitmapDrawable(Ljava/lang/String;Ljava/lang/String;IIZLandroid/content/res/Resources;)Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;

    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->addReference(Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;)V

    return-object p1
.end method

.method protected onCanBeRecycled()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onChange2NotRecycled()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized onReferenceDowngrade2Passable(Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    .line 111
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 113
    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mIsReferenceDirty:Z

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1, v1}, Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;->setReleasableReferenceListener(Lcom/taobao/phenix/cache/memory/ReleasableReferenceListener;)V

    .line 115
    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "ImageRecycle"

    const-string v2, "image reference downgraded to passable, isDirty=%b, refer=%d, image=%s, drawable=%s"

    const/4 v3, 0x4

    .line 116
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mIsReferenceDirty:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReferenceReleased(Lcom/taobao/phenix/cache/memory/ReleasableBitmapDrawable;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    .line 99
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v0, "ImageRecycle"

    const-string v1, "image reference released, isDirty=%b, refer=%d, image=%s, drawable=%s"

    const/4 v2, 0x4

    .line 102
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mIsReferenceDirty:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->recycleIfPossible()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized releaseFromCache(Z)V
    .locals 4

    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mRecycled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 88
    iput-boolean v1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mRecycled:Z

    .line 89
    invoke-virtual {p0}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->onChange2NotRecycled()V

    .line 91
    :cond_0
    iput-boolean p1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasedFromCache:Z

    const-string v0, "ImageRecycle"

    const-string v2, "release from cache, result=%b, isDirty=%b, refer=%d, image=%s"

    const/4 v3, 0x4

    .line 92
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x1

    iget-boolean v1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mIsReferenceDirty:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x2

    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mReleasableReferenceSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object p0, v3, p1

    invoke-static {v0, v2, v3}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/taobao/phenix/cache/memory/CachedRootImage;->recycleIfPossible()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFromCache()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 82
    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mIsReferenceDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/cache/memory/CachedRootImage;->mMemoryCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
