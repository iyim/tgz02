.class public Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;,
        Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;,
        Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;,
        Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;,
        Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;,
        Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;,
        Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$IncompleteFileException;
    }
.end annotation


# static fields
.field private static final CONTENT_FILE_EXTENSION:Ljava/lang/String; = ".cnt"

.field private static final DEFAULT_DISK_STORAGE_VERSION_PREFIX:Ljava/lang/String; = "v2"

.field private static final SHARDING_BUCKET_COUNT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DefaultDiskStorage"

.field private static final TEMP_FILE_EXTENSION:Ljava/lang/String; = ".tmp"

.field static final TEMP_FILE_LIFETIME_MS:J


# instance fields
.field private final mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

.field private final mIsExternal:Z

.field private final mRootDirectory:Ljava/io/File;

.field private final mVersionDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->TEMP_FILE_LIFETIME_MS:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    .line 112
    invoke-static {p1, p3}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->isExternal(Ljava/io/File;Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mIsExternal:Z

    .line 118
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-static {p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getVersionSubdirectoryName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    .line 119
    iput-object p3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    .line 120
    invoke-direct {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->recreateDirectoryIfVersionChanges()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getShardFileInfo(Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method private doRemove(Ljava/io/File;)J
    .locals 2

    .line 478
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 482
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 483
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private dumpCacheEntry(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    check-cast p1, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;

    .line 514
    invoke-virtual {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;->read()[B

    move-result-object v0

    .line 515
    invoke-direct {p0, v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->typeOfBytes([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "undefined"

    .line 516
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 517
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

    .line 524
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 525
    new-instance v3, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;

    invoke-virtual {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->getSize()J

    move-result-wide v4

    long-to-float p1, v4

    invoke-direct {v3, v2, v1, p1, v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;-><init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-object v3
.end method

.method private getFilename(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/lang/String;
    .locals 3

    .line 409
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;

    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$1;)V

    .line 410
    iget-object p1, v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getSubdirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-virtual {v0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->toPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getShardFileInfo(Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;
    .locals 3

    .line 611
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->fromFile(Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 615
    :cond_0
    iget-object v2, v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getSubdirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 616
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private getSubdirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 246
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getSubdirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSubdirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static getVersionSubdirectoryName(I)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 148
    nop

    nop

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "v2"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "%s.ols%d.%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isExternal(Ljava/io/File;Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;)Z
    .locals 4

    .line 127
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
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

    .line 136
    :goto_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->OTHER:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to read folder to check if external: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DefaultDiskStorage"

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

    .line 367
    :try_start_0
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/common/file/FileUtils;->mkdirs(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/taobao/alivfssdk/fresco/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 369
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v2, "DefaultDiskStorage"

    invoke-interface {v0, v1, v2, p2, p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    throw p1
.end method

.method private query(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Z)Z
    .locals 2

    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/io/File;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_0
    return p2
.end method

.method private recreateDirectoryIfVersionChanges()V
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/common/file/FileTree;->deleteRecursively(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/common/file/FileUtils;->mkdirs(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/taobao/alivfssdk/fresco/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 196
    :catch_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    if-eqz v0, :cond_2

    .line 197
    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version directory could not be created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "DefaultDiskStorage"

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private typeOfBytes([B)Ljava/lang/String;
    .locals 5

    .line 529
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 530
    aget-byte v1, p1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/16 v2, -0x28

    if-ne v1, v2, :cond_0

    const-string p1, "jpg"

    return-object p1

    .line 532
    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, -0x77

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    const-string p1, "png"

    return-object p1

    .line 534
    :cond_1
    aget-byte v1, p1, v0

    const/16 v2, 0x52

    const/16 v4, 0x49

    if-ne v1, v2, :cond_2

    aget-byte v1, p1, v3

    if-ne v1, v4, :cond_2

    const-string p1, "webp"

    return-object p1

    .line 536
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

    .line 491
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/common/file/FileTree;->deleteContents(Ljava/io/File;)Z

    return-void
.end method

.method public close()V
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

.method public contains(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Z
    .locals 0

    const/4 p3, 0x0

    .line 416
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->query(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Z)Z

    move-result p1

    return p1
.end method

.method public getCatalogs(Ljava/lang/String;)Ljava/util/List;
    .locals 7
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

    .line 435
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getSubdirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 439
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 440
    invoke-static {v4}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->fromFile(Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 441
    iget-object v5, v4, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->type:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    sget-object v6, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    iget-object v5, v4, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->catalog:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 446
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v4, v4, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->catalog:Ljava/lang/String;

    const/16 v6, 0xb

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 451
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 454
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method getContentFileFor(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/io/File;
    .locals 1
    .annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
    .end annotation

    .line 224
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getFilename(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDumpInfo()Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 498
    new-instance v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;

    invoke-direct {v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;-><init>()V

    .line 499
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;

    .line 500
    invoke-direct {p0, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->dumpCacheEntry(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;

    move-result-object v2

    .line 501
    iget-object v3, v2, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;->type:Ljava/lang/String;

    .line 502
    iget-object v4, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 503
    iget-object v4, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
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

    .line 506
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

    .line 49
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 2
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

    .line 549
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$1;)V

    .line 550
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/taobao/alivfssdk/fresco/common/file/FileTree;->walkFileTree(Ljava/io/File;Lcom/taobao/alivfssdk/fresco/common/file/FileTreeVisitor;)V

    .line 551
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;->getEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .locals 0

    .line 400
    invoke-virtual {p0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/io/File;

    move-result-object p1

    .line 401
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    .line 403
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;->createOrNull(Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStorageName()Ljava/lang/String;
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 168
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

.method public insert(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    new-instance p3, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;

    sget-object v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;->TEMP:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    const/4 v1, 0x0

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$1;)V

    .line 381
    iget-object p2, p3, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getSubdirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 382
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "insert"

    if-nez v0, :cond_0

    .line 383
    invoke-direct {p0, p2, v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mkdirs(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    :cond_0
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->createTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 388
    new-instance p3, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;

    invoke-direct {p3, p0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 390
    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object p3, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_TEMPFILE:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v0, "DefaultDiskStorage"

    invoke-interface {p2, p3, v0, v1, p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    throw p1
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->mIsExternal:Z

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

    .line 467
    check-cast p1, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;

    .line 468
    invoke-virtual {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->doRemove(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)J
    .locals 0

    .line 474
    invoke-virtual {p0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->doRemove(Ljava/io/File;)J

    move-result-wide p1

    return-wide p1
.end method

.method public touch(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Z
    .locals 0

    const/4 p3, 0x1

    .line 421
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->query(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Z)Z

    move-result p1

    return p1
.end method
