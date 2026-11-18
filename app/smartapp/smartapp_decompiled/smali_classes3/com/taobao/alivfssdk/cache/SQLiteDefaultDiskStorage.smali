.class public Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;
.super Ljava/lang/Object;
.source "SQLiteDefaultDiskStorage.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;,
        Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;
    }
.end annotation


# static fields
.field private static final AVFS_ENCRYPT_SQLITE_NAME:Ljava/lang/String; = "alivfs_encrypt.sqlite"

.field private static final AVFS_SQLITE_NAME:Ljava/lang/String; = "alivfs.sqlite"

.field private static final DEFAULT_DISK_STORAGE_VERSION_PREFIX:Ljava/lang/String; = "v2"

.field private static final TAG:Ljava/lang/String; = "SQLiteDefaultDiskStorage"


# instance fields
.field private final mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

.field private mDatabase:Lcom/taobao/alivfsadapter/AVFSDataBase;

.field private final mIsEncrypted:Z

.field private final mIsExternal:Z

.field private final mRootDirectory:Ljava/io/File;

.field private final mVersionDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;IZLcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    .line 92
    iput-boolean p3, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mIsEncrypted:Z

    .line 93
    invoke-static {p1, p4}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->isExternal(Ljava/io/File;Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mIsExternal:Z

    .line 99
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-static {p2}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getVersionSubdirectoryName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    .line 100
    iput-object p4, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    .line 101
    invoke-direct {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->recreateDirectoryIfVersionChanges()V

    return-void
.end method

.method private doRemove(Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;)J
    .locals 5

    const-wide/16 v0, -0x1

    .line 329
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->delete(Lcom/taobao/alivfsadapter/AVFSDataBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-wide v0, p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->size:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v0

    :catch_0
    move-exception p1

    const/4 v2, 0x2

    .line 336
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "SQLiteDefaultDiskStorage"

    invoke-static {p1, v2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-wide v0
.end method

.method private dumpCacheEntry(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    check-cast p1, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;

    .line 365
    invoke-virtual {p1}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->getResource()Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;->read()[B

    move-result-object v0

    .line 366
    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->typeOfBytes([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "undefined"

    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 368
    nop

    nop

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, v0, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aget-byte v5, v0, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aget-byte v5, v0, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "0x%02X 0x%02X 0x%02X 0x%02X"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 375
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->getCacheItem()Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    new-instance v3, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;

    invoke-virtual {p1}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->getSize()J

    move-result-wide v4

    long-to-float p1, v4

    invoke-direct {v3, v2, v1, p1, v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;-><init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-object v3
.end method

.method static getVersionSubdirectoryName(I)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 129
    nop

    nop

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "v2"

    aput-object v3, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s.sqlite.%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isExternal(Ljava/io/File;Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;)Z
    .locals 4

    .line 108
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 p0, 0x0

    .line 117
    :goto_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->OTHER:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to read folder to check if external: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SQLiteDefaultDiskStorage"

    invoke-interface {p1, v1, v2, p0, v0}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private mkdirs(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    :try_start_0
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/common/file/FileUtils;->mkdirs(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/taobao/alivfssdk/fresco/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 218
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v2, "SQLiteDefaultDiskStorage"

    invoke-interface {v0, v1, v2, p2, p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    throw p1
.end method

.method private query(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Z)Z
    .locals 4

    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getContentCacheItemFor(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p3, :cond_1

    if-eqz v1, :cond_1

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, p3, v2, v3}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->updateReadTime(Lcom/taobao/alivfsadapter/AVFSDataBase;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p3, 0x2

    .line 295
    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    aput-object p1, p3, p2

    const-string p1, "SQLiteDefaultDiskStorage"

    invoke-static {p1, p3}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_1
    return v1
.end method

.method private recreateDirectoryIfVersionChanges()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/common/file/FileTree;->deleteRecursively(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/common/file/FileUtils;->mkdirs(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/taobao/alivfssdk/fresco/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 175
    :catch_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version directory could not be created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "SQLiteDefaultDiskStorage"

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private typeOfBytes([B)Ljava/lang/String;
    .locals 5

    .line 380
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 381
    aget-byte v1, p1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/16 v2, -0x28

    if-ne v1, v2, :cond_0

    const-string p1, "jpg"

    return-object p1

    .line 383
    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, -0x77

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    const-string p1, "png"

    return-object p1

    .line 385
    :cond_1
    aget-byte v1, p1, v0

    const/16 v2, 0x52

    const/16 v4, 0x49

    if-ne v1, v2, :cond_2

    aget-byte v1, p1, v3

    if-ne v1, v4, :cond_2

    const-string p1, "webp"

    return-object p1

    .line 387
    :cond_2
    aget-byte v0, p1, v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_3

    aget-byte p1, p1, v3

    if-ne p1, v4, :cond_3

    const-string p1, "gif"

    return-object p1

    :cond_3
    const-string p1, "undefined"

    return-object p1
.end method


# virtual methods
.method public clearAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->deleteAll(Lcom/taobao/alivfsadapter/AVFSDataBase;)Z

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mDatabase:Lcom/taobao/alivfsadapter/AVFSDataBase;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Lcom/taobao/alivfsadapter/AVFSDataBase;->close()I

    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mDatabase:Lcom/taobao/alivfsadapter/AVFSDataBase;

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Z
    .locals 0

    const/4 p3, 0x0

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->query(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Z)Z

    move-result p1

    return p1
.end method

.method public getCatalogs(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->extendsKeysForKey(Lcom/taobao/alivfsadapter/AVFSDataBase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    .line 278
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "SQLiteDefaultDiskStorage"

    invoke-static {p1, v0}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method getContentCacheItemFor(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;
    .locals 2
    .annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
    .end annotation

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->get(Lcom/taobao/alivfsadapter/AVFSDataBase;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    .line 196
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "SQLiteDefaultDiskStorage"

    invoke-static {p1, p2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDumpInfo()Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;

    invoke-direct {v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;-><init>()V

    .line 350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;

    .line 351
    invoke-direct {p0, v2}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->dumpCacheEntry(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;

    move-result-object v2

    .line 352
    iget-object v3, v2, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;->type:Ljava/lang/String;

    .line 353
    iget-object v4, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 354
    iget-object v4, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_0
    iget-object v4, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    iget-object v5, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v3, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic getEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->getItems(Lcom/taobao/alivfsadapter/AVFSDataBase;)[Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->getItems(Lcom/taobao/alivfsadapter/AVFSDataBase;)[Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object v1

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 403
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v3, :cond_0

    .line 405
    aget-object v7, v0, v5

    .line 406
    new-instance v8, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;

    iget-object v9, v7, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    invoke-direct {v8, v9, v7, v6}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;-><init>(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$1;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 408
    :cond_0
    array-length v0, v1

    :goto_1
    if-ge v4, v0, :cond_1

    .line 410
    aget-object v3, v1, v4

    .line 411
    new-instance v5, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;

    iget-object v7, v3, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->key:Ljava/lang/String;

    invoke-direct {v5, v7, v3, v6}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;-><init>(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$1;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 413
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .locals 1

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->get(Lcom/taobao/alivfsadapter/AVFSDataBase;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p2, p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    if-eqz p2, :cond_0

    .line 254
    new-instance p2, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;

    iget-object p1, p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    invoke-direct {p2, p1}, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    .line 257
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "SQLiteDefaultDiskStorage"

    invoke-static {p1, p2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStorageName()Ljava/lang/String;
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mDatabase:Lcom/taobao/alivfsadapter/AVFSDataBase;

    if-nez v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    const-string v1, "getDataBase"

    invoke-direct {p0, v0, v1}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mkdirs(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mIsEncrypted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 558
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    const-string v3, "alivfs_encrypt.sqlite"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 561
    :try_start_0
    invoke-static {}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getInstance()Lcom/taobao/alivfsadapter/AVFSAdapterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getDBFactory()Lcom/taobao/alivfsadapter/AVFSDBFactory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_Encrypt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/taobao/alivfsadapter/AVFSDBFactory;->createDataBase(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mDatabase:Lcom/taobao/alivfsadapter/AVFSDataBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 565
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 569
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getInstance()Lcom/taobao/alivfsadapter/AVFSAdapterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getDBFactory()Lcom/taobao/alivfsadapter/AVFSDBFactory;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    const-string v4, "alivfs.sqlite"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/taobao/alivfsadapter/AVFSDBFactory;->createDataBase(Ljava/lang/String;I)Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mDatabase:Lcom/taobao/alivfsadapter/AVFSDataBase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    :goto_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mDatabase:Lcom/taobao/alivfsadapter/AVFSDataBase;

    invoke-static {v0}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->createTable(Lcom/taobao/alivfsadapter/AVFSDataBase;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 574
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 580
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mDatabase:Lcom/taobao/alivfsadapter/AVFSDataBase;

    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance p3, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;

    invoke-direct {p3, p0, p1, p2}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;-><init>(Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)V

    return-object p3
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->mIsExternal:Z

    return v0
.end method

.method public purgeUnexpectedResources()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public remove(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;)J
    .locals 2

    .line 304
    check-cast p1, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;

    .line 305
    invoke-virtual {p1}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$EntryImpl;->getCacheItem()Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object p1

    .line 306
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->doRemove(Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)J
    .locals 2

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->get(Lcom/taobao/alivfsadapter/AVFSDataBase;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->doRemove(Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    .line 321
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "SQLiteDefaultDiskStorage"

    invoke-static {p1, p2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public touch(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Z
    .locals 0

    const/4 p3, 0x1

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->query(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Z)Z

    move-result p1

    return p1
.end method
