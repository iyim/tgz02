.class public Lcom/taobao/phenix/bytes/LinkedBytesPool;
.super Ljava/lang/Object;
.source "LinkedBytesPool.java"

# interfaces
.implements Lcom/taobao/tcommon/core/BytesPool;


# static fields
.field protected static final BUF_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffersByLastUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private mBuffersBySize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private mCurrentSize:I

.field private mEvicts:I

.field private mHits:I

.field private mMisses:I

.field private mPuts:I

.field private mSizeLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/taobao/phenix/bytes/LinkedBytesPool$1;

    invoke-direct {v0}, Lcom/taobao/phenix/bytes/LinkedBytesPool$1;-><init>()V

    sput-object v0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->BUF_COMPARATOR:Ljava/util/Comparator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersByLastUse:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersBySize:Ljava/util/List;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    .line 44
    iput p1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mSizeLimit:I

    return-void
.end method

.method private report()V
    .locals 4

    const/4 v0, 0x3

    .line 140
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 141
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mSizeLimit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mPuts:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mMisses:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget v2, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mHits:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget v2, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mEvicts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "BytesPool"

    const-string v2, "%d/%d , puts:%d, misses:%d, hits:%d, evicts:%d"

    invoke-static {v0, v2, v1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized trim(I)V
    .locals 2

    monitor-enter p0

    .line 131
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    if-le v0, p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersByLastUse:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 133
    iget-object v1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    iget v1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    array-length v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    .line 135
    iget v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mEvicts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mEvicts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 137
    :cond_0
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


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lcom/taobao/phenix/bytes/LinkedBytesPool;->trim(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized offer(I)[B
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 59
    array-length v4, v2

    if-lt v4, p1, :cond_0

    .line 60
    iget v4, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    .line 61
    iget-object v4, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    iget v1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mHits:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mHits:I

    const-string v1, "BytesPool"

    const-string v4, "success get buffer from pool, request=%d, result=%d"

    const/4 v5, 0x2

    .line 64
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    array-length p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v1, v4, v5}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lcom/taobao/phenix/bytes/LinkedBytesPool;->report()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mMisses:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mMisses:I

    const-string v1, "BytesPool"

    const-string v2, "failed get buffer from pool, request=%d"

    .line 70
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lcom/taobao/phenix/bytes/LinkedBytesPool;->report()V

    .line 72
    new-array p1, p1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized offerMaxAvailable()[B
    .locals 6

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersBySize:Ljava/util/List;

    iget-object v3, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 103
    iget v3, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    array-length v4, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    .line 104
    iget-object v3, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    iget v3, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mHits:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mHits:I

    const-string v3, "BytesPool"

    const-string v4, "offer available max successfully from pool, result=%d"

    .line 106
    new-array v2, v2, [Ljava/lang/Object;

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v3, v4, v2}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-direct {p0}, Lcom/taobao/phenix/bytes/LinkedBytesPool;->report()V

    goto :goto_0

    .line 109
    :cond_0
    iget v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mMisses:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mMisses:I

    const-string v0, "BytesPool"

    const-string v2, "offer available max failed from pool, the linked list is empty"

    .line 110
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcom/taobao/phenix/bytes/LinkedBytesPool;->report()V

    const v0, 0x8000

    .line 112
    new-array v0, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release([B)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 83
    :try_start_0
    array-length v0, p1

    iget v1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mSizeLimit:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mPuts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mPuts:I

    .line 87
    iget-object v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersByLastUse:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersBySize:Ljava/util/List;

    sget-object v2, Lcom/taobao/phenix/bytes/LinkedBytesPool;->BUF_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1

    neg-int v0, v0

    sub-int/2addr v0, v1

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mBuffersBySize:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    iget v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    array-length v2, p1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mCurrentSize:I

    .line 94
    iget v0, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mSizeLimit:I

    invoke-direct {p0, v0}, Lcom/taobao/phenix/bytes/LinkedBytesPool;->trim(I)V

    const-string v0, "BytesPool"

    const-string v2, "release a buffer into pool, length=%d"

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v2, v1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 84
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 0

    monitor-enter p0

    .line 119
    :try_start_0
    iput p1, p0, Lcom/taobao/phenix/bytes/LinkedBytesPool;->mSizeLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
