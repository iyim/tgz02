.class public Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;,
        Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;,
        Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final LRU_CAPACITY:I = 0x4

.field private static final PROJECTION_SIZE_SUM:[Ljava/lang/String;

.field private static final QUERY_WHERE:Ljava/lang/String; = "hash_code=? AND tag=?"

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FileCache"


# instance fields
.field private mCapacity:J

.field private mDbHelper:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

.field private final mEntryMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mRootDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    sget-object v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;

    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    .line 30
    new-array v1, v0, [Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "size"

    aput-object v3, v0, v2

    const-string v3, "sum(%s)"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    sput-object v1, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->PROJECTION_SIZE_SUM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V
    .locals 7

    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JI)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mInitialized:Z

    .line 109
    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mRootDir:Ljava/io/File;

    .line 110
    iput-wide p4, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mCapacity:J

    .line 111
    new-instance p2, Landroid/util/LruCache;

    invoke-direct {p2, p6}, Landroid/util/LruCache;-><init>(I)V

    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mEntryMap:Landroid/util/LruCache;

    .line 112
    new-instance p2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

    invoke-direct {p2, p0, p1, p3}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;-><init>(Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mDbHelper:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

    .line 114
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    .line 115
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mDbHelper:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;)Ljava/io/File;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mRootDir:Ljava/io/File;

    return-object p0
.end method

.method private getAllFiles()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mDbHelper:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

    invoke-virtual {v2}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;

    .line 219
    invoke-virtual {v2}, Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 218
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    new-instance v3, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;

    invoke-direct {v3, v1}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;-><init>(Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$1;)V

    .line 224
    sget-object v4, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;

    invoke-virtual {v4, v2, v3}, Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/taobao/android/ultron/datamodel/cache/db/Entry;)Lcom/taobao/android/ultron/datamodel/cache/db/Entry;

    .line 225
    iget-wide v4, v3, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->id:J

    invoke-direct {p0, v4, v5}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->updateLastAccess(J)V

    .line 226
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_1
    :try_start_2
    const-string v3, "FileCache"

    const-string v4, "query database exception"

    .line 229
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 232
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private queryDatabase(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;
    .locals 12

    .line 239
    invoke-static {p1}, Lcom/taobao/android/ultron/datamodel/cache/db/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x2

    .line 241
    new-array v7, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const/4 v0, 0x1

    aput-object p1, v7, v0

    const/4 p1, 0x0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mDbHelper:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;

    .line 246
    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "hash_code=? AND tag=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 245
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    .line 252
    :cond_1
    :try_start_2
    new-instance v1, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;

    invoke-direct {v1, p1}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;-><init>(Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$1;)V

    .line 253
    sget-object v2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;

    invoke-virtual {v2, v0, v1}, Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/taobao/android/ultron/datamodel/cache/db/Entry;)Lcom/taobao/android/ultron/datamodel/cache/db/Entry;

    .line 254
    iget-wide v2, v1, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->id:J

    invoke-direct {p0, v2, v3}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->updateLastAccess(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 262
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v0, p1

    :goto_0
    :try_start_3
    const-string v2, "FileCache"

    const-string v3, "query database exception"

    .line 258
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 262
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method private updateLastAccess(J)V
    .locals 6

    .line 268
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_access"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mDbHelper:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

    invoke-virtual {v1}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 273
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    .line 272
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "FileCache"

    const-string v0, "update db exception"

    .line 275
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public del(Ljava/lang/String;)V
    .locals 8

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->queryDatabase(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v7, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;

    iget-wide v2, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->id:J

    new-instance v5, Ljava/io/File;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mRootDir:Ljava/io/File;

    iget-object v4, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;-><init>(JLjava/lang/String;Ljava/io/File;Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mDbHelper:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    sget-object v1, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->id:J

    .line 127
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 126
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "FileCache"

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot delete db entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :goto_0
    :try_start_3
    iget-object p1, v7, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    const-string v1, "FileCache"

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public getAll()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;",
            ">;"
        }
    .end annotation

    .line 178
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FileCache"

    const-string v3, "file cache init exception:"

    .line 182
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 187
    :cond_0
    :goto_0
    monitor-enter p0

    .line 188
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-direct {p0}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->getAllFiles()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 192
    monitor-exit p0

    return-object v1

    .line 195
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;

    .line 196
    new-instance v9, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;

    iget-wide v4, v2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->id:J

    iget-object v6, v2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->tag:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mRootDir:Ljava/io/File;

    iget-object v8, v2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;-><init>(JLjava/lang/String;Ljava/io/File;Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$1;)V

    .line 198
    iget-object v3, v9, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 200
    :try_start_2
    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mDbHelper:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

    invoke-virtual {v3}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, v2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->id:J

    .line 201
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 200
    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_3
    const-string v4, "FileCache"

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot delete entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 206
    :cond_2
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 211
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized initialize()V
    .locals 3

    monitor-enter p0

    .line 280
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 281
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 284
    :try_start_1
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mInitialized:Z

    .line 286
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 288
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lookup(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;
    .locals 9

    .line 59
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FileCache"

    const-string v2, "file cache init exception:"

    .line 63
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 68
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;

    if-eqz v0, :cond_2

    .line 70
    iget-object v2, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    monitor-enter p0

    .line 72
    :try_start_1
    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;->access$000(Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->updateLastAccess(J)V

    .line 73
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_2
    monitor-enter p0

    .line 81
    :try_start_2
    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->queryDatabase(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;

    move-result-object v0

    if-nez v0, :cond_3

    .line 83
    monitor-exit p0

    return-object v1

    .line 86
    :cond_3
    new-instance v8, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;

    iget-wide v3, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->id:J

    new-instance v6, Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mRootDir:Ljava/io/File;

    iget-object v5, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;-><init>(JLjava/lang/String;Ljava/io/File;Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$1;)V

    .line 88
    iget-object v2, v8, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_4

    .line 90
    :try_start_3
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mDbHelper:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    sget-object v2, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->id:J

    .line 91
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 90
    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    const-string v2, "FileCache"

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot delete entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :goto_1
    monitor-exit p0

    return-object v1

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit p0

    return-object v8

    :catchall_1
    move-exception p1

    .line 101
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public store(Ljava/lang/String;Ljava/io/File;)V
    .locals 6

    .line 142
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mInitialized:Z

    if-nez v0, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "FileCache"

    const-string v0, "file cache init exception:"

    .line 146
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/cache/db/Utils;->assertTrue(Z)V

    .line 152
    new-instance v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;-><init>(Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$1;)V

    .line 153
    invoke-static {p1}, Lcom/taobao/android/ultron/datamodel/cache/db/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->hashCode:J

    .line 154
    iput-object p1, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->tag:Ljava/lang/String;

    .line 155
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    .line 156
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->size:J

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->lastAccess:J

    .line 159
    iget-wide v1, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->size:J

    iget-wide v3, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mCapacity:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 164
    monitor-enter p0

    .line 165
    :try_start_1
    invoke-direct {p0, p1}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->queryDatabase(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p2, p1, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    iput-object p2, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    .line 169
    iget-wide p1, p1, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->size:J

    iput-wide p1, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->size:J

    .line 172
    :cond_1
    sget-object p1, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;

    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;->mDbHelper:Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;

    invoke-virtual {p2}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/taobao/android/ultron/datamodel/cache/db/Entry;)J

    const-string p1, "detail_FileCache"

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertOrReplace entry:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 160
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 161
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file too large: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->size:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
