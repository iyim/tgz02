.class public final Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;
.super Ljava/lang/Object;
.source "AppListSortDao_Impl.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfApplistSortBean:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfApplistSortBean:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfUpdate:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfApplistSortBean:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;",
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
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$1;-><init>(Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__insertionAdapterOfApplistSortBean:Landroidx/room/EntityInsertionAdapter;

    .line 49
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$2;-><init>(Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__deletionAdapterOfApplistSortBean:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 64
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$3;-><init>(Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__updateAdapterOfApplistSortBean:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 85
    new-instance v0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$4;-><init>(Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__preparedStmtOfUpdate:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public varargs delete([Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__deletionAdapterOfApplistSortBean:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public getAllApplist()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM applistsort ORDER BY sortIndex "

    .line 155
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 157
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "sortIndex"

    .line 159
    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "appid"

    .line 160
    invoke-static {v0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 161
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    new-instance v5, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    invoke-direct {v5}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;-><init>()V

    .line 166
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 167
    invoke-virtual {v5, v6}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->setSortIndex(I)V

    .line 169
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual {v5, v6}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->setAppid(Ljava/lang/String;)V

    .line 171
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception v2

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;
    .locals 5

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM applistsort WHERE appid=?"

    .line 183
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 186
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 190
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 191
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string/jumbo v0, "sortIndex"

    .line 193
    invoke-static {p1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "appid"

    .line 194
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 196
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    new-instance v2, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    invoke-direct {v2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;-><init>()V

    .line 199
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 200
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->setSortIndex(I)V

    .line 202
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->setAppid(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 210
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    .line 209
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 210
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public varargs insert([Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__insertionAdapterOfApplistSortBean:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public update(Ljava/lang/String;I)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__preparedStmtOfUpdate:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p2

    const/4 p2, 0x1

    .line 135
    invoke-interface {v0, p2, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 138
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 144
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 145
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__preparedStmtOfUpdate:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 147
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 148
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__preparedStmtOfUpdate:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public varargs update([Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__updateAdapterOfApplistSortBean:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
