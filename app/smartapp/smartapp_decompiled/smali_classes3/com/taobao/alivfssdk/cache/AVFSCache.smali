.class public Lcom/taobao/alivfssdk/cache/AVFSCache;
.super Ljava/lang/Object;
.source "AVFSCache.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AVFSCache"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private final mConfig:Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

.field private final mDir:Ljava/io/File;

.field private mEncryptedSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

.field private mFileCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

.field private final mModuleName:Ljava/lang/String;

.field private mSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/taobao/alivfssdk/cache/AVFSCache;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->newDefaultConfig()Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mConfig:Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    .line 50
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mModuleName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mDir:Ljava/io/File;

    .line 52
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mDir:Ljava/io/File;

    if-nez p1, :cond_0

    .line 53
    invoke-static {}, Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;->getInstance()Lcom/taobao/alivfssdk/cache/NoOpAVFSCache;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mEncryptedSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mFileCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    :cond_0
    return-void
.end method

.method private createSQLiteCache(Z)Lcom/taobao/alivfssdk/cache/IAVFSCache;
    .locals 9

    .line 116
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mConfig:Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    iget-object v0, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 117
    new-instance v8, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;

    const/4 v0, 0x0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;-><init>(JJJ)V

    .line 120
    new-instance v3, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;

    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mDir:Ljava/io/File;

    invoke-static {}, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;->getInstance()Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v3, v0, v2, p1, v1}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;-><init>(Ljava/io/File;IZLcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;)V

    .line 124
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mConfig:Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    iget-wide v0, p1, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->sqliteMemMaxSize:J

    long-to-int v5, v0

    .line 125
    new-instance p1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;

    const-string v2, "sql"

    move-object v0, p1

    move-object v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;-><init>(Lcom/taobao/alivfssdk/cache/AVFSCache;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;I)V

    return-object p1
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 188
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AVFSCache"

    invoke-static {v2, v0, v1}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 192
    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/common/file/FileTree;->deleteContents(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mFileCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->close()V

    .line 200
    iput-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mFileCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    if-eqz v0, :cond_1

    .line 203
    invoke-interface {v0}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->close()V

    .line 204
    iput-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mEncryptedSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    if-eqz v0, :cond_2

    .line 207
    invoke-interface {v0}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->close()V

    .line 208
    iput-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mEncryptedSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 214
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDir()Ljava/io/File;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mDir:Ljava/io/File;

    return-object v0
.end method

.method public getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;
    .locals 14

    .line 64
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mFileCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 67
    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mConfig:Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    iget-object v1, v1, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 68
    new-instance v12, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;

    int-to-long v2, v0

    move-object v1, v12

    invoke-direct/range {v1 .. v7}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;-><init>(JJJ)V

    .line 71
    new-instance v11, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mDir:Ljava/io/File;

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {}, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;->getInstance()Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;

    move-result-object v2

    invoke-direct {v11, v0, v1, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;-><init>(Ljava/io/File;ILcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;)V

    .line 74
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mConfig:Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    iget-wide v0, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    long-to-int v13, v0

    .line 75
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;

    const-string v10, "file"

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;-><init>(Lcom/taobao/alivfssdk/cache/AVFSCache;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;I)V

    iput-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mFileCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mFileCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSQLiteCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getSQLiteCache(Z)Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    return-object v0
.end method

.method public getSQLiteCache(Z)Lcom/taobao/alivfssdk/cache/IAVFSCache;
    .locals 1

    if-eqz p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mEncryptedSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/AVFSCache;->createSQLiteCache(Z)Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mEncryptedSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mEncryptedSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    return-object p1

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    if-nez v0, :cond_2

    .line 107
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/cache/AVFSCache;->createSQLiteCache(Z)Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mSQLiteCache:Lcom/taobao/alivfssdk/cache/IAVFSCache;

    return-object p1
.end method

.method public moduleConfig(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;)Lcom/taobao/alivfssdk/cache/AVFSCache;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mConfig:Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    invoke-virtual {v0, p1}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->setConfig(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;)V

    return-object p0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)Lcom/taobao/alivfssdk/cache/AVFSCache;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCache;->mClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method
