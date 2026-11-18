.class public Lc/b/a/b/g/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/b/g/b$b;,
        Lc/b/a/b/g/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lc/b/a/b/g/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SELECT * FROM %s ORDER BY _id DESC LIMIT %d"

    iput-object v0, p0, Lc/b/a/b/g/b;->a:Ljava/lang/String;

    const-string v0, "SELECT * FROM %s ORDER BY _id ASC LIMIT %d"

    iput-object v0, p0, Lc/b/a/b/g/b;->b:Ljava/lang/String;

    const-string v0, "SELECT count(*) FROM %s"

    iput-object v0, p0, Lc/b/a/b/g/b;->c:Ljava/lang/String;

    new-instance v0, Lc/b/a/b/g/b$b;

    const-string v1, "icentry.db"

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lc/b/a/b/g/b$b;-><init>(Lc/b/a/b/g/b;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)I
    .locals 6

    const-class v0, Lc/b/a/b/g/b;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {v1}, Lc/b/a/b/g/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v4, p0, Lc/b/a/b/g/b;->c:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    const-string p1, "db is null"

    .line 1
    invoke-static {p1, v0, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2
    :cond_1
    :goto_0
    :try_start_2
    iget-object p1, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    :goto_1
    invoke-virtual {p1, v1}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v2, "db error"

    invoke-static {v2, v0, p1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p1, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_2
    monitor-exit p0

    return v3

    :catchall_1
    move-exception p1

    :try_start_5
    iget-object v0, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {v0, v1}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ILjava/lang/String;)V
    .locals 7

    const-class v0, Lc/b/a/b/g/b;

    monitor-enter p0

    if-gtz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {v1}, Lc/b/a/b/g/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v4, p0, Lc/b/a/b/g/b;->b:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lc/b/a/b/g/a;

    invoke-direct {v3}, Lc/b/a/b/g/a;-><init>()V

    const-string v4, "time"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    iput-object v4, v3, Lc/b/a/b/g/a;->b:Ljava/lang/String;

    const-string v4, "tag"

    .line 4
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    iput-object v4, v3, Lc/b/a/b/g/a;->c:Ljava/lang/String;

    const-string v4, "content"

    .line 6
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    iput-object v4, v3, Lc/b/a/b/g/a;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    iget-object p1, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    :goto_1
    invoke-virtual {p1, v1}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "[delete] "

    invoke-static {v4, v0, v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object p1, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object p1, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {p1, v1}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p2

    :cond_4
    const-string p1, "db is null"

    .line 9
    invoke-static {p1, v0, v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 10
    :goto_3
    invoke-virtual {p0, v2, p2}, Lc/b/a/b/g/b;->a(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/a/b/g/a;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-class v0, Lc/b/a/b/g/b;

    monitor-enter p0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {v2}, Lc/b/a/b/g/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v6, v1

    move v5, v4

    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    const-string v7, "_id=?"

    new-array v8, v1, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/b/a/b/g/a;

    iget v10, v10, Lc/b/a/b/g/a;->a:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v2, p2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v7, v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_1

    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/b/a/b/g/a;

    iget v9, v9, Lc/b/a/b/g/a;->a:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ret:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {v6, v0, v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v6, v4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object p2, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {p2, v2}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v4, v6

    goto :goto_2

    :catchall_0
    move-exception p2

    move v4, v6

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_1
    :try_start_5
    const-string v1, "[delete] "

    invoke-static {v1, v0, p2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object p2, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {p2, v2}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object p2, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {p2, v2}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :cond_3
    const-string p2, "[delete] db is null"

    .line 13
    invoke-static {p2, v0, v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 14
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isSuccess:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p0

    return v4

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    :goto_3
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized b(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lc/b/a/b/g/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lc/b/a/b/g/b;

    monitor-enter p0

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {v2}, Lc/b/a/b/g/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_4

    iget-object v4, p0, Lc/b/a/b/g/b;->a:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, p2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lc/b/a/b/g/a;

    invoke-direct {p2}, Lc/b/a/b/g/a;-><init>()V

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Lc/b/a/b/g/a;->a:I

    const-string v1, "time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1
    iput-object v1, p2, Lc/b/a/b/g/a;->b:Ljava/lang/String;

    const-string v1, "tag"

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, p2, Lc/b/a/b/g/a;->c:Ljava/lang/String;

    const-string v1, "content"

    .line 4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, p2, Lc/b/a/b/g/a;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    iget-object p1, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    :goto_1
    invoke-virtual {p1, v2}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_3
    const-string v1, "[get] "

    invoke-static {v1, v0, p2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object p1, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object p1, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {p1, v2}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p2

    :cond_4
    const-string p1, "db is null"

    .line 7
    invoke-static {p1, v0, v1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 8
    :goto_3
    monitor-exit p0

    return-object v3

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/List;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/a/b/g/a;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-class v0, Lc/b/a/b/g/b;

    monitor-enter p0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0, p2}, Lc/b/a/b/g/b;->a(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_1

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p0, v2, p2}, Lc/b/a/b/g/b;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {v2}, Lc/b/a/b/g/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/b/g/a;

    if-eqz v4, :cond_2

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "time"

    .line 9
    iget-object v7, v4, Lc/b/a/b/g/a;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "tag"

    .line 11
    iget-object v7, v4, Lc/b/a/b/g/a;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "content"

    .line 13
    iget-object v4, v4, Lc/b/a/b/g/a;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v2, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_3

    :cond_4
    :try_start_3
    const-string v1, "db is null"

    const/4 v4, 0x0

    .line 15
    invoke-static {v1, v0, v4}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v1, v3

    .line 16
    :goto_1
    :try_start_4
    iget-object v3, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    :goto_2
    invoke-virtual {v3, v2}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_1
    move-exception v1

    move v8, v3

    move-object v3, v1

    move v1, v8

    :goto_3
    :try_start_5
    const-string v4, "[insert] "

    invoke-static {v4, v0, v3}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v3, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    goto :goto_2

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[insert] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " logsize:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lc/b/a/b/g/b;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p0

    return v1

    :catchall_2
    move-exception p1

    :try_start_7
    iget-object p2, p0, Lc/b/a/b/g/b;->d:Lc/b/a/b/g/b$b;

    invoke-virtual {p2, v2}, Lc/b/a/b/g/b$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_5
    monitor-exit p0

    return v1
.end method
