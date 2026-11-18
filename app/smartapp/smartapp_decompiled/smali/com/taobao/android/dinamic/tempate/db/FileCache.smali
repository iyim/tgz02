.class public Lcom/taobao/android/dinamic/tempate/db/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;,
        Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;,
        Lcom/taobao/android/dinamic/tempate/db/FileCache$OnDeleteFileListener;,
        Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final FREE_SPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREE_SPACE_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final LRU_CAPACITY:I = 0x4

.field private static final MAX_DELETE_COUNT:I = 0x10

.field private static final PROJECTION_SIZE_SUM:[Ljava/lang/String;

.field private static final QUERY_WHERE:Ljava/lang/String; = "hash_code=? AND tag=?"

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FileCache"


# instance fields
.field private mCapacity:J

.field private mDbHelper:Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

.field private final mEntryMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mRootDir:Ljava/io/File;

.field private mTotalBytes:J

.field private onDeleteFileListener:Lcom/taobao/android/dinamic/tempate/db/FileCache$OnDeleteFileListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    sget-object v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/dinamic/tempate/db/EntrySchema;

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    .line 32
    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "size"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v5, "sum(%s)"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Lcom/taobao/android/dinamic/tempate/db/FileCache;->PROJECTION_SIZE_SUM:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "filename"

    const-string/jumbo v5, "tag"

    .line 35
    filled-new-array {v1, v2, v5, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/taobao/android/dinamic/tempate/db/FileCache;->FREE_SPACE_PROJECTION:[Ljava/lang/String;

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "last_access"

    aput-object v1, v0, v4

    const-string v1, "%s ASC"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->FREE_SPACE_ORDER_BY:Ljava/lang/String;

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

    .line 97
    invoke-direct/range {v0 .. v6}, Lcom/taobao/android/dinamic/tempate/db/FileCache;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JI)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mInitialized:Z

    .line 101
    iput-object p2, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mRootDir:Ljava/io/File;

    .line 102
    iput-wide p4, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mCapacity:J

    .line 103
    new-instance p2, Landroid/util/LruCache;

    invoke-direct {p2, p6}, Landroid/util/LruCache;-><init>(I)V

    iput-object p2, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mEntryMap:Landroid/util/LruCache;

    .line 104
    new-instance p2, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

    invoke-direct {p2, p0, p1, p3}, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;-><init>(Lcom/taobao/android/dinamic/tempate/db/FileCache;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mDbHelper:Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamic/tempate/db/FileCache;)Ljava/io/File;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mRootDir:Ljava/io/File;

    return-object p0
.end method

.method private deleteFileAndCallListener(Ljava/io/File;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->onDeleteFileListener:Lcom/taobao/android/dinamic/tempate/db/FileCache$OnDeleteFileListener;

    const-string v1, "FileCache"

    if-eqz v0, :cond_0

    .line 351
    :try_start_0
    invoke-interface {v0, p1}, Lcom/taobao/android/dinamic/tempate/db/FileCache$OnDeleteFileListener;->beforeDeleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "before delete file action exception"

    .line 353
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    .line 359
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->onDeleteFileListener:Lcom/taobao/android/dinamic/tempate/db/FileCache$OnDeleteFileListener;

    if-eqz v0, :cond_2

    .line 361
    :try_start_1
    invoke-interface {v0}, Lcom/taobao/android/dinamic/tempate/db/FileCache$OnDeleteFileListener;->afterDeleteFile()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "after delete file action exception"

    .line 363
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :cond_2
    :goto_1
    return p1
.end method

.method public static deleteFiles(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 80
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 86
    :cond_0
    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object v0, p0, p2

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FileCache"

    const-string p2, "cannot reset database"

    .line 92
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private freeSomeSpaceIfNeed(I)V
    .locals 11

    .line 315
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mDbHelper:Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/taobao/android/dinamic/tempate/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/taobao/android/dinamic/tempate/db/FileCache;->FREE_SPACE_PROJECTION:[Ljava/lang/String;

    sget-object v8, Lcom/taobao/android/dinamic/tempate/db/FileCache;->FREE_SPACE_ORDER_BY:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-lez p1, :cond_2

    .line 319
    :try_start_0
    iget-wide v1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mTotalBytes:J

    iget-wide v3, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mCapacity:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 320
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 321
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 322
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 323
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 325
    iget-object v9, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mEntryMap:Landroid/util/LruCache;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    :try_start_1
    iget-object v10, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v10, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 328
    monitor-exit v9

    goto :goto_0

    .line 329
    :cond_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, -0x1

    .line 332
    :try_start_2
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-direct {v6, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->deleteFileAndCallListener(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 333
    iget-wide v5, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mTotalBytes:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mTotalBytes:J

    .line 334
    iget-object v5, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mDbHelper:Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

    invoke-virtual {v5}, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/taobao/android/dinamic/tempate/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v7, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 335
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 334
    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "FileCache"

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 329
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 341
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private queryDatabase(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;
    .locals 12

    .line 199
    invoke-static {p1}, Lcom/taobao/android/dinamic/tempate/db/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x2

    .line 201
    new-array v7, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const/4 v0, 0x1

    aput-object p1, v7, v0

    const/4 p1, 0x0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mDbHelper:Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/taobao/android/dinamic/tempate/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/dinamic/tempate/db/EntrySchema;

    .line 206
    invoke-virtual {v0}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "hash_code=? AND tag=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 205
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    .line 211
    :cond_1
    :try_start_2
    new-instance v1, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;

    invoke-direct {v1, p1}, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;-><init>(Lcom/taobao/android/dinamic/tempate/db/FileCache$1;)V

    .line 212
    sget-object v2, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/dinamic/tempate/db/EntrySchema;

    invoke-virtual {v2, v0, v1}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/taobao/android/dinamic/tempate/db/Entry;)Lcom/taobao/android/dinamic/tempate/db/Entry;

    .line 213
    iget-wide v2, v1, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->id:J

    invoke-direct {p0, v2, v3}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->updateLastAccess(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 221
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

    const-string/jumbo v3, "query database exception"

    .line 217
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 221
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
    .locals 7

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "_id=?"

    const-string v2, "FileCache"

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mDbHelper:Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v3, Lcom/taobao/android/dinamic/tempate/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v3, v1, p1}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->updateWithOnConflict(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo p2, "sdk int 29 update db exception"

    .line 233
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "last_access"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    :try_start_1
    iget-object v3, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mDbHelper:Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

    invoke-virtual {v3}, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/taobao/android/dinamic/tempate/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 241
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    .line 240
    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string/jumbo p2, "update db exception"

    .line 243
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateWithOnConflict(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 250
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 252
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE "

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " SET "

    .line 255
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "last_access=?"

    .line 256
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, " WHERE "

    .line 259
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    const/4 p3, 0x1

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p3, 0x2

    .line 265
    invoke-virtual {p2, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    :try_start_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 273
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return p3

    :catchall_0
    move-exception p3

    .line 270
    :try_start_3
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 273
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    throw p2
.end method


# virtual methods
.method public declared-synchronized initialize()V
    .locals 10

    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 280
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 283
    :try_start_1
    iput-boolean v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mInitialized:Z

    .line 285
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 287
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 288
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 295
    :try_start_2
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mDbHelper:Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

    invoke-virtual {v1}, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/taobao/android/dinamic/tempate/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/taobao/android/dinamic/tempate/db/FileCache;->PROJECTION_SIZE_SUM:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 299
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mTotalBytes:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 305
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "FileCache"

    const-string/jumbo v3, "query total bytes exception"

    .line 302
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 309
    :cond_4
    :goto_2
    :try_start_5
    iget-wide v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mCapacity:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    const/16 v0, 0x10

    .line 310
    invoke-direct {p0, v0}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->freeSomeSpaceIfNeed(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 312
    :cond_5
    monitor-exit p0

    return-void

    :goto_3
    if-eqz v0, :cond_6

    .line 305
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public lookup(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;
    .locals 9

    .line 152
    iget-boolean v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FileCache"

    const-string v2, "file cache init exception:"

    .line 156
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 161
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;

    if-eqz v0, :cond_2

    .line 163
    iget-object v2, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    monitor-enter p0

    .line 165
    :try_start_1
    invoke-static {v0}, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;->access$100(Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->updateLastAccess(J)V

    .line 166
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_2
    monitor-enter p0

    .line 174
    :try_start_2
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->queryDatabase(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;

    move-result-object v0

    if-nez v0, :cond_3

    .line 176
    monitor-exit p0

    return-object v1

    .line 179
    :cond_3
    new-instance v8, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;

    iget-wide v3, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->id:J

    new-instance v6, Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mRootDir:Ljava/io/File;

    iget-object v5, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;-><init>(JLjava/lang/String;Ljava/io/File;Lcom/taobao/android/dinamic/tempate/db/FileCache$1;)V

    .line 181
    iget-object v2, v8, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_4

    .line 183
    :try_start_3
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mDbHelper:Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    sget-object v2, Lcom/taobao/android/dinamic/tempate/db/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->id:J

    .line 184
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 183
    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    iget-wide v2, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mTotalBytes:J

    iget-wide v4, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->size:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mTotalBytes:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    const-string v2, "FileCache"

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot delete entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :goto_1
    monitor-exit p0

    return-object v1

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mEntryMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit p0

    return-object v8

    :catchall_1
    move-exception p1

    .line 195
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public setOnDeleteFileListener(Lcom/taobao/android/dinamic/tempate/db/FileCache$OnDeleteFileListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->onDeleteFileListener:Lcom/taobao/android/dinamic/tempate/db/FileCache$OnDeleteFileListener;

    return-void
.end method

.method public store(Ljava/lang/String;Ljava/io/File;)V
    .locals 6

    .line 112
    iget-boolean v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mInitialized:Z

    if-nez v0, :cond_0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "FileCache"

    const-string v0, "file cache init exception:"

    .line 116
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/taobao/android/dinamic/tempate/db/Utils;->assertTrue(Z)V

    .line 122
    new-instance v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;-><init>(Lcom/taobao/android/dinamic/tempate/db/FileCache$1;)V

    .line 123
    invoke-static {p1}, Lcom/taobao/android/dinamic/tempate/db/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->hashCode:J

    .line 124
    iput-object p1, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->tag:Ljava/lang/String;

    .line 125
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    .line 126
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->size:J

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->lastAccess:J

    .line 129
    iget-wide v1, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->size:J

    iget-wide v3, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mCapacity:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->queryDatabase(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p2, p1, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    iput-object p2, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    .line 139
    iget-wide p1, p1, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->size:J

    iput-wide p1, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->size:J

    goto :goto_1

    .line 141
    :cond_1
    iget-wide p1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mTotalBytes:J

    iget-wide v1, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->size:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mTotalBytes:J

    .line 144
    :goto_1
    sget-object p1, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/dinamic/tempate/db/EntrySchema;

    iget-object p2, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mDbHelper:Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;

    invoke-virtual {p2}, Lcom/taobao/android/dinamic/tempate/db/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/taobao/android/dinamic/tempate/db/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/taobao/android/dinamic/tempate/db/Entry;)J

    .line 145
    iget-wide p1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mTotalBytes:J

    iget-wide v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache;->mCapacity:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    const/16 p1, 0x10

    .line 146
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/tempate/db/FileCache;->freeSomeSpaceIfNeed(I)V

    .line 148
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 130
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 131
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file too large: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lcom/taobao/android/dinamic/tempate/db/FileCache$FileEntry;->size:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
