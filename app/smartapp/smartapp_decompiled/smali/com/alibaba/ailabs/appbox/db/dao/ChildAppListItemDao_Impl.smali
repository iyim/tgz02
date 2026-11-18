.class public final Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;
.super Ljava/lang/Object;
.source "ChildAppListItemDao_Impl.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfChildAppListDbBean:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfChildAppListDbBean:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfChildAppListDbBean:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$1;-><init>(Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__insertionAdapterOfChildAppListDbBean:Landroidx/room/EntityInsertionAdapter;

    .line 98
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$2;-><init>(Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__deletionAdapterOfChildAppListDbBean:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 113
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$3;-><init>(Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__updateAdapterOfChildAppListDbBean:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 183
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$4;-><init>(Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public delete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;)V"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__deletionAdapterOfChildAppListDbBean:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 222
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public varargs delete([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 207
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__deletionAdapterOfChildAppListDbBean:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 210
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteAll()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 246
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 247
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 250
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 249
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 250
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public getAllAppList()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM child_app_list"

    .line 257
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 258
    iget-object v3, v1, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 259
    iget-object v3, v1, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 261
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "appid"

    .line 262
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "actionValue"

    .line 263
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "appName"

    .line 264
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "businessType"

    .line 265
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "appVersionCode"

    .line 266
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "appVersionName"

    .line 267
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "downloadUrl"

    .line 268
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "downloadSize"

    .line 269
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "installSize"

    .line 270
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "packageName"

    .line 271
    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "icon"

    .line 272
    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "deleteType"

    .line 273
    invoke-static {v3, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "isOffline"

    .line 274
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "fromType"

    .line 275
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v18, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    new-instance v1, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    invoke-direct {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;-><init>()V

    move-object/from16 v19, v2

    .line 281
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 282
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setId(I)V

    .line 284
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppid(Ljava/lang/String;)V

    .line 287
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setActionValue(Ljava/lang/String;)V

    .line 290
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppName(Ljava/lang/String;)V

    .line 293
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setBusinessType(Ljava/lang/String;)V

    .line 296
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 297
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppVersionCode(I)V

    .line 299
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppVersionName(Ljava/lang/String;)V

    .line 302
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 305
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 306
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDownloadSize(I)V

    .line 308
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 309
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setInstallSize(I)V

    .line 311
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setPackageName(Ljava/lang/String;)V

    .line 314
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setIcon(Ljava/lang/String;)V

    .line 317
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 318
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDeleteType(I)V

    move/from16 v2, v18

    move/from16 v18, v0

    .line 320
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setIsOffline(Ljava/lang/String;)V

    move/from16 v0, v17

    move/from16 v17, v2

    .line 323
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setFromType(Ljava/lang/String;)V

    move-object/from16 v2, v19

    .line 325
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v17

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v18, v20

    goto/16 :goto_0

    .line 329
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 330
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 329
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 330
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getInstallList()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "appid"

    const/4 v2, 0x0

    const-string v3, "SELECT *  from child_app_list INNER JOIN child_app_list_sort ON child_app_list.appid=child_app_list_sort.appid ORDER BY sortIndex"

    .line 423
    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 424
    iget-object v4, v1, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 425
    iget-object v4, v1, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v4, "id"

    .line 427
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 428
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "actionValue"

    .line 429
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "appName"

    .line 430
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "businessType"

    .line 431
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "appVersionCode"

    .line 432
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "appVersionName"

    .line 433
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "downloadUrl"

    .line 434
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "downloadSize"

    .line 435
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "installSize"

    .line 436
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "packageName"

    .line 437
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "icon"

    .line 438
    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "deleteType"

    .line 439
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "isOffline"

    .line 440
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "fromType"

    .line 441
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 442
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    move/from16 v19, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 444
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    new-instance v3, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    invoke-direct {v3}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;-><init>()V

    move-object/from16 v20, v0

    .line 448
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 449
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setId(I)V

    .line 451
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppid(Ljava/lang/String;)V

    .line 454
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setActionValue(Ljava/lang/String;)V

    .line 457
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppName(Ljava/lang/String;)V

    .line 460
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setBusinessType(Ljava/lang/String;)V

    .line 463
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 464
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppVersionCode(I)V

    .line 466
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppVersionName(Ljava/lang/String;)V

    .line 469
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 472
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 473
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDownloadSize(I)V

    .line 475
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 476
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setInstallSize(I)V

    .line 478
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setPackageName(Ljava/lang/String;)V

    .line 481
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setIcon(Ljava/lang/String;)V

    .line 484
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 485
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDeleteType(I)V

    move/from16 v0, v17

    move/from16 v17, v1

    .line 487
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setIsOffline(Ljava/lang/String;)V

    move/from16 v1, v19

    move/from16 v19, v0

    .line 490
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setFromType(Ljava/lang/String;)V

    move/from16 v0, v18

    move/from16 v18, v1

    .line 493
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppid(Ljava/lang/String;)V

    move-object/from16 v1, v20

    .line 495
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v21, v18

    move/from16 v18, v0

    move-object v0, v1

    move/from16 v1, v17

    move/from16 v17, v19

    move/from16 v19, v21

    goto/16 :goto_0

    :cond_0
    move-object v1, v0

    .line 499
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 500
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 499
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 500
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "SELECT * FROM child_app_list WHERE appid=?"

    .line 337
    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 344
    :goto_0
    iget-object v0, v1, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 345
    iget-object v0, v1, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 347
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "appid"

    .line 348
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "actionValue"

    .line 349
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "appName"

    .line 350
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "businessType"

    .line 351
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "appVersionCode"

    .line 352
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "appVersionName"

    .line 353
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "downloadUrl"

    .line 354
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "downloadSize"

    .line 355
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "installSize"

    .line 356
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "packageName"

    .line 357
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "icon"

    .line 358
    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "deleteType"

    .line 359
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "isOffline"

    .line 360
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "fromType"

    .line 361
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 363
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_1

    move/from16 v17, v3

    .line 364
    new-instance v3, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    invoke-direct {v3}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;-><init>()V

    .line 366
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 367
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setId(I)V

    .line 369
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppid(Ljava/lang/String;)V

    .line 372
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setActionValue(Ljava/lang/String;)V

    .line 375
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppName(Ljava/lang/String;)V

    .line 378
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setBusinessType(Ljava/lang/String;)V

    .line 381
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 382
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppVersionCode(I)V

    .line 384
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setAppVersionName(Ljava/lang/String;)V

    .line 387
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 390
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 391
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDownloadSize(I)V

    .line 393
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 394
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setInstallSize(I)V

    .line 396
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setPackageName(Ljava/lang/String;)V

    .line 399
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setIcon(Ljava/lang/String;)V

    .line 402
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 403
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setDeleteType(I)V

    .line 405
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setIsOffline(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 408
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->setFromType(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 415
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 416
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 415
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 416
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public varargs insert([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 195
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__insertionAdapterOfChildAppListDbBean:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 198
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public varargs update([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__updateAdapterOfChildAppListDbBean:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 234
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
