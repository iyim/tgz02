.class public Lcom/alibaba/ailabs/comm/data/AttrTable;
.super Lcom/alibaba/ailabs/comm/data/AbstractSqlService;
.source "AttrTable.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "k"

.field private static final TABLE_NAME:Ljava/lang/String; = "global"

.field private static final VALUE:Ljava/lang/String; = "v"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/comm/data/AbstractManager;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/comm/data/AbstractManager;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    .line 150
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/comm/data/AttrTable;->getId(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/comm/data/AttrTable;->update(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "k"

    .line 158
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "v"

    .line 159
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-super {p0, v0}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private getId(Ljava/lang/String;)J
    .locals 17

    const-string v5, "k=?"

    const/4 v0, 0x1

    .line 94
    new-array v6, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const-string v1, "_id"

    .line 95
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v11, p0

    .line 100
    iget-object v12, v11, Lcom/alibaba/ailabs/comm/data/AttrTable;->mDb:Lcom/alibaba/ailabs/comm/data/AbstractManager;

    monitor-enter v12

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    .line 102
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/comm/data/AttrTable;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v16, :cond_1

    if-eqz v16, :cond_0

    .line 121
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-wide v13

    :cond_1
    const/4 v2, 0x0

    .line 106
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/comm/data/AttrTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, v16

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 108
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 109
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    .line 110
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v15, :cond_2

    .line 117
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v16, :cond_3

    .line 121
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    monitor-exit v12

    return-wide v0

    :cond_4
    if-eqz v15, :cond_5

    .line 117
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v16, :cond_7

    .line 121
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v15

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v16, v15

    .line 113
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v15, :cond_6

    .line 117
    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v16, :cond_7

    goto :goto_0

    .line 124
    :cond_7
    :goto_2
    monitor-exit v12

    return-wide v13

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v15, :cond_8

    .line 117
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v16, :cond_9

    .line 121
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v0

    .line 124
    :goto_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/data/AttrTable;
    .locals 1

    const-string v0, "global"

    .line 24
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/comm/data/DbMgr;->getTable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/comm/data/AttrTable;

    return-object p0
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    const-string v0, "global"

    return-object v0
.end method

.method private remove(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 131
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "k=?"

    .line 133
    invoke-super {p0, p1, v0}, Lcom/alibaba/ailabs/comm/data/AbstractSqlService;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 138
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 141
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "v"

    .line 142
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "k=?"

    .line 144
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/comm/data/AttrTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v4, "k=?"

    const/4 v10, 0x1

    .line 60
    new-array v5, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 65
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/data/AttrTable;->mDb:Lcom/alibaba/ailabs/comm/data/AbstractManager;

    monitor-enter p1

    const/4 v11, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/data/AttrTable;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v12, :cond_1

    if-eqz v12, :cond_0

    .line 84
    :try_start_1
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    return-object v11

    :cond_1
    const/4 v1, 0x0

    .line 71
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/data/AttrTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 73
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_4

    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "v"

    .line 75
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    .line 81
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v12, :cond_3

    .line 84
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    monitor-exit p1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v12, :cond_7

    .line 84
    :goto_0
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v0, v11

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v0, v11

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v0, v11

    move-object v12, v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v0, v11

    move-object v12, v0

    .line 78
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_6

    .line 81
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v12, :cond_7

    goto :goto_0

    .line 87
    :cond_7
    :goto_2
    monitor-exit p1

    return-object v11

    :catchall_2
    move-exception v1

    :goto_3
    if-eqz v0, :cond_8

    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v12, :cond_9

    .line 84
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v1

    .line 87
    :goto_5
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method protected getSqlCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "k TEXT UNIQUE,"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "v TEXT)"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method protected onUpgrade(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 51
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/comm/data/AttrTable;->remove(Ljava/lang/String;)V

    return v0

    .line 55
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/comm/data/AttrTable;->add(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
