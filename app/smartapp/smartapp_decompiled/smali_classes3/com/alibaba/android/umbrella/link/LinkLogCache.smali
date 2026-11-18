.class final Lcom/alibaba/android/umbrella/link/LinkLogCache;
.super Ljava/lang/Object;
.source "LinkLogCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/umbrella/link/LinkLogCache$LinkLogConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final listIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lruCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogCache;->lruCache:Landroid/support/v4/util/LruCache;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogCache;->listIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogCache;->listIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method consumeAndEraseLocked(Lcom/alibaba/android/umbrella/link/LinkLogCache$LinkLogConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/umbrella/link/LinkLogCache$LinkLogConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 31
    invoke-interface {p1, v1}, Lcom/alibaba/android/umbrella/link/LinkLogCache$LinkLogConsumer;->consume(Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p1}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 34
    iget-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogCache;->listIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method resizeCacheIfNeed(I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->maxSize()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->resize(I)V

    return-void
.end method
