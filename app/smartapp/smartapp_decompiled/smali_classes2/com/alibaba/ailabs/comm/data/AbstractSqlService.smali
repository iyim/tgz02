.class public abstract Lcom/alibaba/ailabs/comm/data/AbstractSqlService;
.super Ljava/lang/Object;
.source "AbstractSqlService.java"


# instance fields
.field protected mDb:Lcom/alibaba/ailabs/comm/data/AbstractManager;

.field private mIsClosed:Z

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/comm/data/AbstractManager;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/comm/data/AbstractManager;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mIsClosed:Z

    return-void
.end method

.method protected close()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/comm/data/AbstractManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/data/AbstractManager;->close()V

    return-void
.end method

.method protected delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/comm/data/AbstractManager;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 142
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 139
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v0

    return v2

    :goto_2
    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw p1

    :catchall_1
    move-exception p1

    .line 145
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mIsClosed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/comm/data/AbstractManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/data/AbstractManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected abstract getSqlCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mIsClosed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/comm/data/AbstractManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/data/AbstractManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected insert(Landroid/content/ContentValues;)J
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/comm/data/AbstractManager;

    monitor-enter v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    .line 160
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 166
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 163
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 166
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 169
    :cond_1
    :goto_2
    monitor-exit v0

    return-wide v2

    :goto_3
    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw p1

    :catchall_2
    move-exception p1

    .line 169
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method protected onCreate(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 65
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->getSqlCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no database table command to execute"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDowngrade(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 84
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DROP TABLE IF EXISTS "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->onCreate(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method protected abstract onUpgrade(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mTableName:Ljava/lang/String;

    return-void
.end method

.method protected update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->mDb:Lcom/alibaba/ailabs/comm/data/AbstractManager;

    monitor-enter v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, p1

    :cond_0
    if-eqz v1, :cond_1

    .line 189
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 186
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v0

    return-wide v2

    :goto_2
    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw p1

    :catchall_1
    move-exception p1

    .line 192
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
