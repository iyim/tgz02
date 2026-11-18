.class public Lcom/taobao/alivfssdk/cache/HotEndLruCache;
.super Ljava/lang/Object;
.source "HotEndLruCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/cache/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taobao/alivfssdk/cache/LruCache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final UPGRADE_HOTEND_THRESHOLD:I = 0x2


# instance fields
.field private HOT_LIMIT_SIZE:I

.field private MAX_LIMIT_SIZE:I

.field private MAX_PRE_EVICTED_SIZE:I

.field private mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mCurrSize:I

.field private mEvictCount:I

.field private mHitCount:I

.field private mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mHotSize:I

.field private final mLocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private mMissCount:I

.field private mPreEvictedSize:I

.field private mSizeWhenLastPreEvict:I


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resize(IF)V

    .line 67
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    return-void
.end method

.method private checkMaxSizes()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private makeNewColdHead(Lcom/taobao/alivfssdk/cache/LruNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p1, v0}, Lcom/taobao/alivfssdk/cache/LruNode;->insertBefore(Lcom/taobao/alivfssdk/cache/LruNode;)V

    :cond_0
    const/4 v0, 0x1

    .line 291
    invoke-direct {p0, p1, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/alivfssdk/cache/LruNode;Z)Z

    return-void
.end method

.method private makeNewHotHead(Lcom/taobao/alivfssdk/cache/LruNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1, v0}, Lcom/taobao/alivfssdk/cache/LruNode;->insertBefore(Lcom/taobao/alivfssdk/cache/LruNode;)V

    goto :goto_0

    .line 271
    :cond_0
    iput-object p1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    iput-object p1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 274
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/alivfssdk/cache/LruNode;Z)V

    .line 276
    iget p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    iget v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    if-le p1, v1, :cond_3

    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 278
    iget-object p1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eq p1, v0, :cond_2

    .line 279
    iget p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    iget v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    .line 280
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    iput-boolean v2, p1, Lcom/taobao/alivfssdk/cache/LruNode;->isColdNode:Z

    .line 282
    :cond_2
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object p1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/alivfssdk/cache/LruNode;)Z

    :cond_3
    return-void
.end method

.method private onAddNewNode(Lcom/taobao/alivfssdk/cache/LruNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 146
    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I

    iget p1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I

    :cond_0
    return-void
.end method

.method private onNodeRemoved(ZLcom/taobao/alivfssdk/cache/LruNode;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, v0, p2, p3}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onPreEvictedStateChange(ZLcom/taobao/alivfssdk/cache/LruNode;Z)V

    .line 153
    iget-object p3, p2, Lcom/taobao/alivfssdk/cache/LruNode;->key:Ljava/lang/Object;

    iget-object p2, p2, Lcom/taobao/alivfssdk/cache/LruNode;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1, p3, p2}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onNodeRemoved(ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private onPreEvictedStateChange(ZLcom/taobao/alivfssdk/cache/LruNode;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-boolean v0, p2, Lcom/taobao/alivfssdk/cache/LruNode;->isPreEvicted:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 160
    iput-boolean p1, p2, Lcom/taobao/alivfssdk/cache/LruNode;->isPreEvicted:Z

    if-eqz p1, :cond_1

    .line 162
    iget v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mPreEvictedSize:I

    iget v2, p2, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mPreEvictedSize:I

    goto :goto_1

    .line 164
    :cond_1
    iget v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mPreEvictedSize:I

    iget v2, p2, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mPreEvictedSize:I

    .line 167
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 169
    iget-object p3, p2, Lcom/taobao/alivfssdk/cache/LruNode;->key:Ljava/lang/Object;

    iget-object p2, p2, Lcom/taobao/alivfssdk/cache/LruNode;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1, p3, p2}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onPreEvictedStateChange(ZLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 167
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onRemoveNode(Lcom/taobao/alivfssdk/cache/LruNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 136
    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I

    iget v1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I

    .line 137
    iget-boolean v0, p1, Lcom/taobao/alivfssdk/cache/LruNode;->isColdNode:Z

    if-nez v0, :cond_0

    .line 138
    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    iget p1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    :cond_0
    return-void
.end method

.method private declared-synchronized preTrimToMaxSize(Z)V
    .locals 3

    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    iget p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I

    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mSizeWhenLastPreEvict:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object p1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    move-object v0, p1

    .line 437
    :cond_1
    iget v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mPreEvictedSize:I

    iget v2, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I

    if-ge v1, v2, :cond_3

    .line 438
    iget v1, v0, Lcom/taobao/alivfssdk/cache/LruNode;->visitCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    .line 439
    invoke-direct {p0, v1, v0, v1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onPreEvictedStateChange(ZLcom/taobao/alivfssdk/cache/LruNode;Z)V

    .line 441
    :cond_2
    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    if-ne v0, p1, :cond_1

    .line 446
    :cond_3
    iget p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I

    iput p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mSizeWhenLastPreEvict:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 431
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private remove(Lcom/taobao/alivfssdk/cache/LruNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p1, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/alivfssdk/cache/LruNode;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/alivfssdk/cache/LruNode;)Z

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p1, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    iput-object v1, v0, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    .line 181
    iget-object v0, p1, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    iput-object v1, v0, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    .line 183
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-ne v0, p1, :cond_1

    .line 184
    iget-object v0, p1, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/alivfssdk/cache/LruNode;)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-ne v0, p1, :cond_2

    .line 187
    iget-object v0, p1, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/alivfssdk/cache/LruNode;)Z

    .line 190
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onRemoveNode(Lcom/taobao/alivfssdk/cache/LruNode;)V

    return-void
.end method

.method private resetColdHead(Lcom/taobao/alivfssdk/cache/LruNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 314
    invoke-direct {p0, p1, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/alivfssdk/cache/LruNode;Z)Z

    move-result p1

    return p1
.end method

.method private resetColdHead(Lcom/taobao/alivfssdk/cache/LruNode;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;Z)Z"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eqz p1, :cond_1

    .line 322
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    .line 324
    iget-boolean p2, p1, Lcom/taobao/alivfssdk/cache/LruNode;->isColdNode:Z

    if-nez p2, :cond_0

    .line 325
    iget p2, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    iget v0, p1, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    :cond_0
    const/4 p2, 0x1

    .line 327
    iput-boolean p2, p1, Lcom/taobao/alivfssdk/cache/LruNode;->isColdNode:Z

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private resetHotHead(Lcom/taobao/alivfssdk/cache/LruNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, p1, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/alivfssdk/cache/LruNode;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private resetHotHead(Lcom/taobao/alivfssdk/cache/LruNode;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/cache/LruNode<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 304
    iget-boolean p2, p1, Lcom/taobao/alivfssdk/cache/LruNode;->isColdNode:Z

    if-eqz p2, :cond_1

    .line 305
    :cond_0
    iget p2, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    iget v0, p1, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    :cond_1
    const/4 p2, 0x0

    .line 307
    iput-boolean p2, p1, Lcom/taobao/alivfssdk/cache/LruNode;->isColdNode:Z

    .line 309
    :cond_2
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    return-void
.end method

.method private declared-synchronized traverse(Lcom/taobao/alivfssdk/cache/LruNode;I)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 495
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "[NO ELEMENT]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 500
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p1

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-ge v2, p2, :cond_4

    if-eqz v2, :cond_1

    const-string v3, " -> "

    .line 503
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_1
    iget-object v3, v0, Lcom/taobao/alivfssdk/cache/LruNode;->key:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/taobao/alivfssdk/cache/LruNode;->isColdNode:Z

    if-eqz v3, :cond_2

    const-string v3, "cold"

    goto :goto_1

    :cond_2
    const-string v3, "hot"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v3, v0, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    if-ne v3, p1, :cond_3

    goto :goto_2

    .line 514
    :cond_3
    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public board(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/alivfssdk/cache/LruNode;)V

    .line 227
    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/alivfssdk/cache/LruNode;)Z

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I

    .line 229
    iput v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    .line 230
    iput v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mPreEvictedSize:I

    .line 231
    iput v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mSizeWhenLastPreEvict:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized count()I
    .locals 1

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/alivfssdk/cache/LruNode;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 252
    iget v1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->visitCount:I

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->visitCount:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->visitCount:I

    .line 254
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, v1, p1, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onPreEvictedStateChange(ZLcom/taobao/alivfssdk/cache/LruNode;Z)V

    .line 258
    iget v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHitCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHitCount:I

    .line 259
    iget-object p1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->value:Ljava/lang/Object;

    return-object p1

    .line 261
    :cond_2
    iget p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mMissCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mMissCount:I

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 254
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getColdEndCount()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    :goto_0
    if-eqz v1, :cond_0

    .line 549
    iget-object v2, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 551
    iget-object v1, v1, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 553
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final getHotEndCount()I
    .locals 2

    .line 557
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->count()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->getColdEndCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSize(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized hotPercent()F
    .locals 2

    monitor-enter p0

    .line 117
    :try_start_0
    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v1

    div-float/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized maxPreEvictedSize()I
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onNodeRemoved(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPreEvictedStateChange(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public put(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto :goto_2

    .line 351
    :cond_0
    new-instance v1, Lcom/taobao/alivfssdk/cache/LruNode;

    invoke-virtual {p0, p3}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->getSize(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, p2, p3, v2}, Lcom/taobao/alivfssdk/cache/LruNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p3, 0x22

    if-ne p1, p3, :cond_1

    const/4 p1, 0x2

    .line 357
    iput p1, v1, Lcom/taobao/alivfssdk/cache/LruNode;->visitCount:I

    .line 359
    :cond_1
    iget p1, v1, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    iget p3, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    if-le p1, p3, :cond_2

    return v0

    .line 363
    :cond_2
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/alivfssdk/cache/LruNode;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 366
    iget p3, p1, Lcom/taobao/alivfssdk/cache/LruNode;->visitCount:I

    .line 367
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->remove(Lcom/taobao/alivfssdk/cache/LruNode;)V

    add-int/2addr p3, p2

    .line 368
    iput p3, v1, Lcom/taobao/alivfssdk/cache/LruNode;->visitCount:I

    .line 370
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_4

    .line 373
    invoke-direct {p0, p2, p1, p2}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onNodeRemoved(ZLcom/taobao/alivfssdk/cache/LruNode;Z)V

    .line 376
    :cond_4
    iget p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    iget p3, v1, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->trimTo(I)Z

    move-result p1

    .line 377
    monitor-enter p0

    .line 379
    :try_start_1
    iget-object p3, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eqz p3, :cond_6

    if-nez p1, :cond_5

    goto :goto_0

    .line 388
    :cond_5
    invoke-direct {p0, v1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->makeNewColdHead(Lcom/taobao/alivfssdk/cache/LruNode;)V

    .line 389
    invoke-direct {p0, v1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onAddNewNode(Lcom/taobao/alivfssdk/cache/LruNode;)V

    goto :goto_1

    .line 381
    :cond_6
    :goto_0
    invoke-direct {p0, v1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->makeNewHotHead(Lcom/taobao/alivfssdk/cache/LruNode;)V

    .line 382
    invoke-direct {p0, v1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onAddNewNode(Lcom/taobao/alivfssdk/cache/LruNode;)V

    .line 383
    iget-object p3, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-nez p3, :cond_7

    iget p3, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I

    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    if-le p3, v0, :cond_7

    .line 384
    iget-object p3, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object p3, p3, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    invoke-direct {p0, p3}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/alivfssdk/cache/LruNode;)Z

    .line 391
    :cond_7
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->preTrimToMaxSize(Z)V

    return p2

    :catchall_0
    move-exception p1

    .line 391
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 370
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_8
    :goto_2
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    const/16 v0, 0x11

    .line 335
    invoke-virtual {p0, v0, p1, p2}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->put(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected remove(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/alivfssdk/cache/LruNode;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 198
    iput v0, p1, Lcom/taobao/alivfssdk/cache/LruNode;->visitCount:I

    .line 200
    iget-object v0, p1, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->remove(Lcom/taobao/alivfssdk/cache/LruNode;)V

    .line 204
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onNodeRemoved(ZLcom/taobao/alivfssdk/cache/LruNode;Z)V

    .line 207
    iget-object p1, p1, Lcom/taobao/alivfssdk/cache/LruNode;->value:Ljava/lang/Object;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 204
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized report()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 470
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "[HotEndLruCache] %d/%d, hotSize:%d, preEvicted:%d, count:%d, hits:%d, misses:%d, evicts:%d"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mPreEvictedSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->count()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mMissCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mEvictCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resize(IF)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_2

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iput p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 77
    iput p2, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    .line 78
    iget p2, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 79
    iput v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    goto :goto_0

    .line 80
    :cond_0
    iget p2, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    sub-int p2, p1, p2

    if-ge p2, v0, :cond_1

    sub-int/2addr p1, v0

    .line 81
    iput p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    .line 83
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-direct {p0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->checkMaxSizes()V

    .line 85
    iget p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    invoke-virtual {p0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->trimTo(I)Z

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "HotEndLruCache size parameters error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resize(IFI)V
    .locals 0

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iput p3, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resize(IF)V

    const/4 p1, 0x1

    .line 93
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->preTrimToMaxSize(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setPreEvictedMaxSize(I)V
    .locals 0

    monitor-enter p0

    .line 129
    :try_start_0
    iput p1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I

    .line 130
    invoke-direct {p0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->checkMaxSizes()V

    const/4 p1, 0x1

    .line 131
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->preTrimToMaxSize(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final traverse(I)Ljava/lang/String;
    .locals 0

    .line 483
    invoke-virtual {p0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->traverseFromHotHead(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized traverseCount()I
    .locals 4

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 538
    iget-object v2, v0, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v3, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 541
    :cond_0
    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 543
    :cond_1
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final traverseFromColdHead(I)Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    invoke-direct {p0, v0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->traverse(Lcom/taobao/alivfssdk/cache/LruNode;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final traverseFromHotHead(I)Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    invoke-direct {p0, v0, p1}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->traverse(Lcom/taobao/alivfssdk/cache/LruNode;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized traverseSize()I
    .locals 4

    monitor-enter p0

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 524
    iget v2, v0, Lcom/taobao/alivfssdk/cache/LruNode;->size:I

    add-int/2addr v1, v2

    .line 525
    iget-object v2, v0, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v3, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 528
    :cond_0
    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->next:Lcom/taobao/alivfssdk/cache/LruNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 530
    :cond_1
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final trimTo(I)Z
    .locals 5

    const/4 v0, 0x0

    .line 399
    :goto_0
    monitor-enter p0

    .line 400
    :try_start_0
    iget v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mCurrSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 401
    :cond_0
    monitor-exit p0

    return v2

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    iget v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->visitCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 408
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    iput v3, v0, Lcom/taobao/alivfssdk/cache/LruNode;->visitCount:I

    .line 409
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/alivfssdk/cache/LruNode;)V

    .line 415
    :goto_1
    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotSize:I

    iget v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mColdHead:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/alivfssdk/cache/LruNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mHotHead:Lcom/taobao/alivfssdk/cache/LruNode;

    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/LruNode;->prev:Lcom/taobao/alivfssdk/cache/LruNode;

    .line 420
    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/taobao/alivfssdk/cache/LruNode;->key:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->remove(Lcom/taobao/alivfssdk/cache/LruNode;)V

    .line 422
    iget v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mEvictCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->mEvictCount:I

    .line 423
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-direct {p0, v2, v0, v3}, Lcom/taobao/alivfssdk/cache/HotEndLruCache;->onNodeRemoved(ZLcom/taobao/alivfssdk/cache/LruNode;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 423
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
