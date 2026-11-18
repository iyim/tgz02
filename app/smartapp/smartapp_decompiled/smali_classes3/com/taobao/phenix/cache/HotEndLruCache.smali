.class public Lcom/taobao/phenix/cache/HotEndLruCache;
.super Ljava/lang/Object;
.source "HotEndLruCache.java"

# interfaces
.implements Lcom/taobao/phenix/cache/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/cache/LruCache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final UPGRADE_HOTEND_THRESHOLD:I = 0x2


# instance fields
.field private HOT_LIMIT_SIZE:I

.field private MAX_LIMIT_SIZE:I

.field private MAX_PRE_EVICTED_SIZE:I

.field private mColdHead:Lcom/taobao/phenix/cache/LruNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mCurrSize:I

.field private mEvictCount:I

.field private mHitCount:I

.field private mHotHead:Lcom/taobao/phenix/cache/LruNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mHotSize:I

.field private mLocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Lcom/taobao/phenix/cache/LruNode<",
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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/taobao/phenix/cache/HotEndLruCache;->resize(IF)V

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    return-void
.end method

.method private changeNodePreEvictedState(Lcom/taobao/phenix/cache/LruNode;ZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;ZZZ)V"
        }
    .end annotation

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v0, p1, Lcom/taobao/phenix/cache/LruNode;->isPreEvicted:Z

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 141
    iput-boolean p2, p1, Lcom/taobao/phenix/cache/LruNode;->isPreEvicted:Z

    if-eqz p2, :cond_1

    .line 143
    iget v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mPreEvictedSize:I

    iget v2, p1, Lcom/taobao/phenix/cache/LruNode;->size:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mPreEvictedSize:I

    goto :goto_1

    .line 145
    :cond_1
    iget v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mPreEvictedSize:I

    iget v2, p1, Lcom/taobao/phenix/cache/LruNode;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mPreEvictedSize:I

    .line 148
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 150
    iget-object p3, p1, Lcom/taobao/phenix/cache/LruNode;->key:Ljava/lang/Object;

    iget-object p1, p1, Lcom/taobao/phenix/cache/LruNode;->value:Ljava/lang/Object;

    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/taobao/phenix/cache/HotEndLruCache;->onPreEvictedStateChange(ZLjava/lang/Object;Ljava/lang/Object;Z)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 148
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private checkMaxSizes()V
    .locals 3

    .line 106
    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I

    iget v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAX_PRE_EVICTED_SIZE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") must lower than MAX_LIMIT_SIZE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private makeNewColdHead(Lcom/taobao/phenix/cache/LruNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p1, v0}, Lcom/taobao/phenix/cache/LruNode;->insertBefore(Lcom/taobao/phenix/cache/LruNode;)V

    :cond_0
    const/4 v0, 0x1

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/phenix/cache/LruNode;Z)Z

    return-void
.end method

.method private makeNewHotHead(Lcom/taobao/phenix/cache/LruNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p1, v0}, Lcom/taobao/phenix/cache/LruNode;->insertBefore(Lcom/taobao/phenix/cache/LruNode;)V

    goto :goto_0

    .line 249
    :cond_0
    iput-object p1, p1, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    iput-object p1, p1, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    iget-object v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 252
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/phenix/cache/LruNode;Z)V

    .line 254
    iget p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    iget v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    if-le p1, v1, :cond_3

    iget-object p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 256
    iget-object p1, p1, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    if-eq p1, v0, :cond_2

    .line 257
    iget p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    iget v0, v0, Lcom/taobao/phenix/cache/LruNode;->size:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    .line 258
    iget-object p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    iput-boolean v2, p1, Lcom/taobao/phenix/cache/LruNode;->isColdNode:Z

    .line 260
    :cond_2
    iget-object p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    iget-object p1, p1, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    invoke-direct {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/phenix/cache/LruNode;)Z

    :cond_3
    return-void
.end method

.method private onAddNewNode(Lcom/taobao/phenix/cache/LruNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 127
    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    iget p1, p1, Lcom/taobao/phenix/cache/LruNode;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    :cond_0
    return-void
.end method

.method private onNodeRemoved(ZLcom/taobao/phenix/cache/LruNode;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 133
    invoke-direct {p0, p2, v0, p3, v1}, Lcom/taobao/phenix/cache/HotEndLruCache;->changeNodePreEvictedState(Lcom/taobao/phenix/cache/LruNode;ZZZ)V

    .line 134
    iget-object p3, p2, Lcom/taobao/phenix/cache/LruNode;->key:Ljava/lang/Object;

    iget-object p2, p2, Lcom/taobao/phenix/cache/LruNode;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1, p3, p2}, Lcom/taobao/phenix/cache/HotEndLruCache;->onNodeRemoved(ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private onRemoveNode(Lcom/taobao/phenix/cache/LruNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 117
    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    iget v1, p1, Lcom/taobao/phenix/cache/LruNode;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    .line 118
    iget-boolean v0, p1, Lcom/taobao/phenix/cache/LruNode;->isColdNode:Z

    if-nez v0, :cond_0

    .line 119
    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    iget p1, p1, Lcom/taobao/phenix/cache/LruNode;->size:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    :cond_0
    return-void
.end method

.method private declared-synchronized preTrimToMaxSize(Z)V
    .locals 3

    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    iget p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mSizeWhenLastPreEvict:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    iget-object p1, p1, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    move-object v0, p1

    .line 411
    :cond_1
    iget v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mPreEvictedSize:I

    iget v2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I

    if-ge v1, v2, :cond_3

    .line 412
    iget v1, v0, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 413
    invoke-direct {p0, v0, v2, v2, v1}, Lcom/taobao/phenix/cache/HotEndLruCache;->changeNodePreEvictedState(Lcom/taobao/phenix/cache/LruNode;ZZZ)V

    .line 415
    :cond_2
    iget-object v0, v0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    if-ne v0, p1, :cond_1

    .line 420
    :cond_3
    iget p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    iput p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mSizeWhenLastPreEvict:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    .line 405
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

.method private remove(Lcom/taobao/phenix/cache/LruNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p1, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/phenix/cache/LruNode;)V

    .line 159
    invoke-direct {p0, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/phenix/cache/LruNode;)Z

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p1, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    iget-object v1, p1, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    iput-object v1, v0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    .line 162
    iget-object v0, p1, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    iget-object v1, p1, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    iput-object v1, v0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    .line 164
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    if-ne v0, p1, :cond_1

    .line 165
    iget-object v0, p1, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    invoke-direct {p0, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/phenix/cache/LruNode;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    if-ne v0, p1, :cond_2

    .line 168
    iget-object v0, p1, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    invoke-direct {p0, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/phenix/cache/LruNode;)Z

    .line 171
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->onRemoveNode(Lcom/taobao/phenix/cache/LruNode;)V

    return-void
.end method

.method private resetColdHead(Lcom/taobao/phenix/cache/LruNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p1, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/phenix/cache/LruNode;Z)Z

    move-result p1

    return p1
.end method

.method private resetColdHead(Lcom/taobao/phenix/cache/LruNode;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;Z)Z"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    if-eqz p1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    .line 302
    iget-boolean p2, p1, Lcom/taobao/phenix/cache/LruNode;->isColdNode:Z

    if-nez p2, :cond_0

    .line 303
    iget p2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    iget v0, p1, Lcom/taobao/phenix/cache/LruNode;->size:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    :cond_0
    const/4 p2, 0x1

    .line 305
    iput-boolean p2, p1, Lcom/taobao/phenix/cache/LruNode;->isColdNode:Z

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private resetHotHead(Lcom/taobao/phenix/cache/LruNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/phenix/cache/LruNode;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private resetHotHead(Lcom/taobao/phenix/cache/LruNode;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruNode<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 282
    iget-boolean p2, p1, Lcom/taobao/phenix/cache/LruNode;->isColdNode:Z

    if-eqz p2, :cond_1

    .line 283
    :cond_0
    iget p2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    iget v0, p1, Lcom/taobao/phenix/cache/LruNode;->size:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    :cond_1
    const/4 p2, 0x0

    .line 285
    iput-boolean p2, p1, Lcom/taobao/phenix/cache/LruNode;->isColdNode:Z

    .line 287
    :cond_2
    iput-object p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    return-void
.end method

.method private declared-synchronized traverse(Lcom/taobao/phenix/cache/LruNode;I)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/phenix/cache/HotEndLruCache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "[NO ELEMENT]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 454
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

    .line 457
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_1
    iget-object v3, v0, Lcom/taobao/phenix/cache/LruNode;->key:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/taobao/phenix/cache/LruNode;->size:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/taobao/phenix/cache/LruNode;->isColdNode:Z

    if-eqz v3, :cond_2

    const-string v3, "cold"

    goto :goto_1

    :cond_2
    const-string v3, "hot"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-object v3, v0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    if-ne v3, p1, :cond_3

    goto :goto_2

    .line 463
    :cond_3
    iget-object v0, v0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
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
    .locals 5

    const/4 v0, 0x3

    .line 424
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    .line 425
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mPreEvictedSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget v2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const/high16 v2, 0x42c80000    # 100.0f

    iget v3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHitCount:I

    int-to-float v4, v3

    mul-float v4, v4, v2

    iget v2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mMissCount:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/taobao/phenix/cache/HotEndLruCache;->count()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x7

    iget v2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHitCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x8

    iget v2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mMissCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x9

    iget v2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mEvictCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "%K(%K)/%K, pre-evicted:%K/%K, rate:%.1f%%, count:%d, hits:%d, misses:%d, evicts:%d"

    invoke-static {p1, v0, v1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/phenix/cache/LruNode;)V

    .line 207
    invoke-direct {p0, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/phenix/cache/LruNode;)Z

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    .line 209
    iput v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    .line 210
    iput v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mPreEvictedSize:I

    .line 211
    iput v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mSizeWhenLastPreEvict:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
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

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

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

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

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

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/phenix/cache/LruNode;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 230
    iget v1, p1, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p1, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    .line 232
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/taobao/phenix/cache/HotEndLruCache;->changeNodePreEvictedState(Lcom/taobao/phenix/cache/LruNode;ZZZ)V

    .line 236
    iget v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHitCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHitCount:I

    .line 237
    iget-object p1, p1, Lcom/taobao/phenix/cache/LruNode;->value:Ljava/lang/Object;

    return-object p1

    .line 239
    :cond_2
    iget p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mMissCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mMissCount:I

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 232
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

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    :goto_0
    if-eqz v1, :cond_0

    .line 498
    iget-object v2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 500
    iget-object v1, v1, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 502
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

    .line 506
    invoke-virtual {p0}, Lcom/taobao/phenix/cache/HotEndLruCache;->count()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/phenix/cache/HotEndLruCache;->getColdEndCount()I

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

    .line 102
    :try_start_0
    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I
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

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;
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

    .line 98
    :try_start_0
    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I
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

    .line 94
    :try_start_0
    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I
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

.method protected onPreEvictedStateChange(ZLjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;Z)V"
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

    .line 328
    :cond_0
    new-instance v1, Lcom/taobao/phenix/cache/LruNode;

    invoke-virtual {p0, p3}, Lcom/taobao/phenix/cache/HotEndLruCache;->getSize(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, p2, p3, v2}, Lcom/taobao/phenix/cache/LruNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p3, 0x22

    if-ne p1, p3, :cond_1

    const/4 p1, 0x2

    .line 334
    iput p1, v1, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    .line 336
    :cond_1
    iget p1, v1, Lcom/taobao/phenix/cache/LruNode;->size:I

    iget p3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    if-le p1, p3, :cond_2

    return v0

    .line 340
    :cond_2
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/phenix/cache/LruNode;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 343
    iget p3, p1, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    .line 344
    invoke-direct {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->remove(Lcom/taobao/phenix/cache/LruNode;)V

    add-int/2addr p3, p2

    .line 345
    iput p3, v1, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    .line 347
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_4

    .line 350
    invoke-direct {p0, p2, p1, p2}, Lcom/taobao/phenix/cache/HotEndLruCache;->onNodeRemoved(ZLcom/taobao/phenix/cache/LruNode;Z)V

    .line 353
    :cond_4
    iget p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    iget p3, v1, Lcom/taobao/phenix/cache/LruNode;->size:I

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->trimTo(I)Z

    move-result p1

    .line 354
    monitor-enter p0

    .line 356
    :try_start_1
    iget-object p3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    if-eqz p3, :cond_6

    if-nez p1, :cond_5

    goto :goto_0

    .line 365
    :cond_5
    invoke-direct {p0, v1}, Lcom/taobao/phenix/cache/HotEndLruCache;->makeNewColdHead(Lcom/taobao/phenix/cache/LruNode;)V

    .line 366
    invoke-direct {p0, v1}, Lcom/taobao/phenix/cache/HotEndLruCache;->onAddNewNode(Lcom/taobao/phenix/cache/LruNode;)V

    goto :goto_1

    .line 358
    :cond_6
    :goto_0
    invoke-direct {p0, v1}, Lcom/taobao/phenix/cache/HotEndLruCache;->makeNewHotHead(Lcom/taobao/phenix/cache/LruNode;)V

    .line 359
    invoke-direct {p0, v1}, Lcom/taobao/phenix/cache/HotEndLruCache;->onAddNewNode(Lcom/taobao/phenix/cache/LruNode;)V

    .line 360
    iget-object p3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    if-nez p3, :cond_7

    iget p3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    if-le p3, v0, :cond_7

    .line 361
    iget-object p3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    iget-object p3, p3, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    invoke-direct {p0, p3}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/phenix/cache/LruNode;)Z

    .line 368
    :cond_7
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    invoke-direct {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->preTrimToMaxSize(Z)V

    return p2

    :catchall_0
    move-exception p1

    .line 368
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 347
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

    .line 313
    invoke-virtual {p0, v0, p1, p2}, Lcom/taobao/phenix/cache/HotEndLruCache;->put(ILjava/lang/Object;Ljava/lang/Object;)Z

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

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;

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

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/phenix/cache/LruNode;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 179
    iput v0, p1, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    .line 181
    iget-object v0, p1, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->remove(Lcom/taobao/phenix/cache/LruNode;)V

    .line 185
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/phenix/cache/HotEndLruCache;->onNodeRemoved(ZLcom/taobao/phenix/cache/LruNode;Z)V

    .line 188
    iget-object p1, p1, Lcom/taobao/phenix/cache/LruNode;->value:Ljava/lang/Object;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 185
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized report()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 433
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "[HotEndLruCache] %d/%d, hotSize:%d, preEvicted:%d, count:%d, hits:%d, misses:%d, evicts:%d"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mPreEvictedSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/taobao/phenix/cache/HotEndLruCache;->count()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mMissCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mEvictCount:I

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

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iput p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 62
    iput p2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    .line 63
    iget p2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 64
    iput v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    goto :goto_0

    .line 65
    :cond_0
    iget p2, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    sub-int p2, p1, p2

    if-ge p2, v0, :cond_1

    sub-int/2addr p1, v0

    .line 66
    iput p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    .line 68
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-direct {p0}, Lcom/taobao/phenix/cache/HotEndLruCache;->checkMaxSizes()V

    .line 70
    iget p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_LIMIT_SIZE:I

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->trimTo(I)Z

    return-void

    :catchall_0
    move-exception p1

    .line 68
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "HotEndLruCache size parameters error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resize(IFI)V
    .locals 0

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iput p3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/taobao/phenix/cache/HotEndLruCache;->resize(IF)V

    const/4 p1, 0x1

    .line 78
    invoke-direct {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->preTrimToMaxSize(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 76
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setPreEvictedMaxSize(I)V
    .locals 0

    monitor-enter p0

    .line 110
    :try_start_0
    iput p1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->MAX_PRE_EVICTED_SIZE:I

    .line 111
    invoke-direct {p0}, Lcom/taobao/phenix/cache/HotEndLruCache;->checkMaxSizes()V

    const/4 p1, 0x1

    .line 112
    invoke-direct {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->preTrimToMaxSize(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
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

    .line 90
    :try_start_0
    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I
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

    .line 437
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->traverseFromHotHead(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized traverseCount()I
    .locals 4

    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 487
    iget-object v2, v0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    iget-object v3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 490
    :cond_0
    iget-object v0, v0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 492
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

    .line 445
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    invoke-direct {p0, v0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->traverse(Lcom/taobao/phenix/cache/LruNode;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final traverseFromHotHead(I)Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    invoke-direct {p0, v0, p1}, Lcom/taobao/phenix/cache/HotEndLruCache;->traverse(Lcom/taobao/phenix/cache/LruNode;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized traverseSize()I
    .locals 4

    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 473
    iget v2, v0, Lcom/taobao/phenix/cache/LruNode;->size:I

    add-int/2addr v1, v2

    .line 474
    iget-object v2, v0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;

    iget-object v3, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 477
    :cond_0
    iget-object v0, v0, Lcom/taobao/phenix/cache/LruNode;->next:Lcom/taobao/phenix/cache/LruNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 479
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

    .line 376
    :goto_0
    monitor-enter p0

    .line 377
    :try_start_0
    iget v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mCurrSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 378
    :cond_0
    monitor-exit p0

    return v2

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    iget-object v0, v0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    iget v0, v0, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 385
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    iget-object v0, v0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    iput v3, v0, Lcom/taobao/phenix/cache/LruNode;->visitCount:I

    .line 386
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    iget-object v0, v0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    invoke-direct {p0, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetHotHead(Lcom/taobao/phenix/cache/LruNode;)V

    .line 391
    :goto_1
    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotSize:I

    iget v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->HOT_LIMIT_SIZE:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mColdHead:Lcom/taobao/phenix/cache/LruNode;

    iget-object v0, v0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    invoke-direct {p0, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->resetColdHead(Lcom/taobao/phenix/cache/LruNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mHotHead:Lcom/taobao/phenix/cache/LruNode;

    iget-object v0, v0, Lcom/taobao/phenix/cache/LruNode;->prev:Lcom/taobao/phenix/cache/LruNode;

    .line 394
    iget-object v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mLocationMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/taobao/phenix/cache/LruNode;->key:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-direct {p0, v0}, Lcom/taobao/phenix/cache/HotEndLruCache;->remove(Lcom/taobao/phenix/cache/LruNode;)V

    .line 396
    iget v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mEvictCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/taobao/phenix/cache/HotEndLruCache;->mEvictCount:I

    .line 397
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-direct {p0, v2, v0, v3}, Lcom/taobao/phenix/cache/HotEndLruCache;->onNodeRemoved(ZLcom/taobao/phenix/cache/LruNode;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 397
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
