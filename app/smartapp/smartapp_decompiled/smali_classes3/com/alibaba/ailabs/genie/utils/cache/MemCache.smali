.class public Lcom/alibaba/ailabs/genie/utils/cache/MemCache;
.super Ljava/lang/Object;
.source "MemCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DURING:J = 0x493e0L


# instance fields
.field private during:J

.field private final lruCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "TK;",
            "Lcom/alibaba/ailabs/genie/utils/cache/CacheItem<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-wide/32 v0, 0x493e0

    .line 24
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/cache/MemCache;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    .line 15
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/MemCache;->during:J

    .line 34
    new-instance v0, Landroid/support/v4/util/LruCache;

    invoke-direct {v0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/MemCache;->lruCache:Landroid/support/v4/util/LruCache;

    .line 35
    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/utils/cache/MemCache;->during:J

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/MemCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 51
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/cache/DateUtil;->isCacheItemAlive(Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/MemCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 94
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/MemCache;->during:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/ailabs/genie/utils/cache/MemCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)TV;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 73
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 74
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;

    add-long v8, v6, p3

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, v6

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;JJJ)V

    .line 76
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/utils/cache/MemCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->getCreateTime()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->setCreateTime(J)V

    .line 80
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "during should >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/cache/MemCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/cache/CacheItem;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
