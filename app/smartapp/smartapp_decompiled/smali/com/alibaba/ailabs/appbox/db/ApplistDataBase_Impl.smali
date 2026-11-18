.class public final Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;
.super Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;
.source "ApplistDataBase_Impl.java"


# instance fields
.field private volatile _appListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

.field private volatile _appListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

.field private volatile _childAppListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

.field private volatile _childAppListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 249
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->assertNotMainThread()V

    .line 250
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 252
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->beginTransaction()V

    const-string v3, "DELETE FROM `applist`"

    .line 253
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `applistsort`"

    .line 254
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `marketitem`"

    .line 255
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `applist_recent`"

    .line 256
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `child_app_list`"

    .line 257
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `child_app_list_sort`"

    .line 258
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->endTransaction()V

    .line 262
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 263
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception v3

    .line 261
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase;->endTransaction()V

    .line 262
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 263
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 9

    .line 242
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 244
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "applist"

    const-string v4, "applistsort"

    const-string v5, "marketitem"

    const-string v6, "applist_recent"

    const-string v7, "child_app_list"

    const-string v8, "child_app_list_sort"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 44
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl$1;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl$1;-><init>(Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;I)V

    const-string v2, "36814a898bfadbd8aa0373fb480072eb"

    const-string v3, "605b144a1436096d82e6422c1b82dfec"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 236
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getChildAppListDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_childAppListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_childAppListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    return-object v0

    .line 302
    :cond_0
    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_childAppListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_childAppListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_childAppListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 307
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChildSortDap()Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_childAppListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_childAppListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    return-object v0

    .line 316
    :cond_0
    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_childAppListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    if-nez v0, :cond_1

    .line 318
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_childAppListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_childAppListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 321
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSortDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_appListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_appListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    return-object v0

    .line 288
    :cond_0
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_appListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    if-nez v0, :cond_1

    .line 290
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_appListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_appListSortDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 293
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserDao()Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_appListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_appListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    return-object v0

    .line 274
    :cond_0
    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_appListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    if-nez v0, :cond_1

    .line 276
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao_Impl;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_appListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/ApplistDataBase_Impl;->_appListItemDao:Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 279
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
