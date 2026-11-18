.class public Lcom/taobao/tao/log/ConcurrentLRUCache;
.super Ljava/lang/Object;
.source "ConcurrentLRUCache.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile count:I

.field private final elements:[Ljava/lang/Object;

.field private final maxSize:I

.field private volatile next:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->next:I

    .line 18
    iput v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->count:I

    .line 30
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->elements:[Ljava/lang/Object;

    .line 31
    iput p1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->maxSize:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->next:I

    aget-object v0, v0, v1

    .line 43
    iget-object v1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->next:I

    aput-object p1, v1, v2

    .line 44
    iget p1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->next:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->next:I

    iget v1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->maxSize:I

    rem-int/2addr p1, v1

    iput p1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->next:I

    .line 45
    iget p1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->count:I

    iget v1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->maxSize:I

    if-ge p1, v1, :cond_0

    .line 46
    iget p1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->count:I

    .line 49
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 4

    .line 77
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->count:I

    if-ge v1, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iput v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->count:I

    .line 82
    iput v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->next:I

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .line 66
    iget v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 2

    .line 73
    iget v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->count:I

    iget v1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->maxSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    new-instance v6, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;

    iget-object v1, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->maxSize:I

    iget v3, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->count:I

    iget v4, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->next:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/taobao/tao/log/ConcurrentLRUCache$PageIterator;-><init>([Ljava/lang/Object;IIILcom/taobao/tao/log/ConcurrentLRUCache$1;)V

    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception v0

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/taobao/tao/log/ConcurrentLRUCache;->count:I

    return v0
.end method
