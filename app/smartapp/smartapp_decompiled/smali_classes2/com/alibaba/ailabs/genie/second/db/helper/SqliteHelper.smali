.class public abstract Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SqliteHelper.java"


# static fields
.field public static final ASSISTANT_DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "SqliteHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getTables()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 192
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;

    .line 193
    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;->createTableSQL()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 195
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v4, :cond_0

    .line 198
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 199
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deleteTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getTables()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 208
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;

    .line 209
    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;->tableName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 211
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getDBVersion()I
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    :goto_1
    const-wide/16 v1, 0xa

    .line 60
    :try_start_1
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized getReadableDatabaseWrapper()Lcom/alibaba/ailabs/genie/second/db/helper/SQLiteDatabaseWrapper;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getReaddb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 112
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v1, 0xa

    .line 113
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getReaddb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    const-string v2, "download_db"

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get read db final fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    :goto_0
    new-instance v1, Lcom/alibaba/ailabs/genie/second/db/helper/SQLiteDatabaseWrapper;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/db/helper/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getReaddb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 127
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
    const-wide/16 v1, 0xa

    .line 129
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public getSumTableVer()I
    .locals 5

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getTables()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 220
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;

    .line 221
    invoke-interface {v4}, Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;->tableVersion()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    goto :goto_1

    :catch_0
    move-exception v4

    .line 223
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public abstract getTables()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    :goto_1
    const-wide/16 v1, 0xa

    .line 46
    :try_start_1
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized getWritableDatabaseWrapper()Lcom/alibaba/ailabs/genie/second/db/helper/SQLiteDatabaseWrapper;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getWritedb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 76
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v1, 0xa

    .line 77
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getWritedb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    const-string v2, "download_db"

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get write db final fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    :goto_0
    new-instance v1, Lcom/alibaba/ailabs/genie/second/db/helper/SQLiteDatabaseWrapper;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/db/helper/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getWritedb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 93
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
    const-wide/16 v1, 0xa

    .line 95
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->deleteTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getDBVersion()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getDBVersion()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getDBVersion()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getDBVersion()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9

    :goto_0
    if-ge p2, p3, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/db/helper/SqliteHelper;->getTables()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 160
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;

    add-int/lit8 v5, p2, 0x1

    .line 161
    invoke-interface {v4, p2, v5, p1}, Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;->beforeTableAlter(IILandroid/database/sqlite/SQLiteDatabase;)V

    .line 162
    invoke-interface {v4, p2, v5}, Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;->getAlterSQL(II)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v7, 0x0

    .line 164
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 165
    aget-object v8, v6, v7

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 168
    :cond_0
    invoke-interface {v4, p2, v5, p1}, Lcom/alibaba/ailabs/genie/second/db/table/IBaseTable;->afterTableAlter(IILandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 170
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
