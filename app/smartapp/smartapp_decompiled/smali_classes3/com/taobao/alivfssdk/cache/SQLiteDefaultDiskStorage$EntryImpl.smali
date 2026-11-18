.class Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;
.super Ljava/lang/Object;
.source "SQLiteDefaultDiskStorage.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;


# annotations
.annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryImpl"
.end annotation


# instance fields
.field private final cacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

.field private final id:Ljava/lang/String;

.field private size:J

.field private timestamp:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    invoke-static {p2}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->id:Ljava/lang/String;

    .line 432
    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->cacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    const-wide/16 p1, -0x1

    .line 433
    iput-wide p1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->size:J

    .line 434
    iput-wide p1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->timestamp:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$1;)V
    .locals 0

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;-><init>(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;)V

    return-void
.end method


# virtual methods
.method public getCacheItem()Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->cacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .locals 2

    .line 457
    new-instance v0, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->cacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    iget-object v1, v1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    invoke-direct {v0, v1}, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;-><init>([B)V

    return-object v0
.end method

.method public getSize()J
    .locals 5

    .line 462
    iget-wide v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 463
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->cacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    iget-wide v0, v0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->size:J

    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->size:J

    .line 465
    :cond_0
    iget-wide v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->size:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 5

    .line 448
    iget-wide v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 449
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->cacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    .line 450
    iget-wide v0, v0, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->time:J

    iput-wide v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->timestamp:J

    .line 452
    :cond_0
    iget-wide v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->timestamp:J

    return-wide v0
.end method
