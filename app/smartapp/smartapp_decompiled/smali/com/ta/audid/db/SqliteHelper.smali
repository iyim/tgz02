.class public Lcom/ta/audid/db/SqliteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SqliteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x2


# instance fields
.field private mCloseDbTask:Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;

.field private mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mcloseFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 22
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance p1, Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;

    invoke-direct {p1, p0}, Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;-><init>(Lcom/ta/audid/db/SqliteHelper;)V

    iput-object p1, p0, Lcom/ta/audid/db/SqliteHelper;->mCloseDbTask:Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;

    return-void
.end method

.method static synthetic access$000(Lcom/ta/audid/db/SqliteHelper;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ta/audid/db/SqliteHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ta/audid/db/SqliteHelper;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method


# virtual methods
.method public closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 80
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 62
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/ta/audid/db/SqliteHelper;->mcloseFuture:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/ta/audid/db/SqliteHelper;->mcloseFuture:Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 70
    :cond_1
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getInstance()Lcom/ta/audid/utils/TaskExecutor;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ta/audid/db/SqliteHelper;->mCloseDbTask:Lcom/ta/audid/db/SqliteHelper$DelayCloseDbTask;

    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ta/audid/utils/TaskExecutor;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/audid/db/SqliteHelper;->mcloseFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 75
    :catch_0
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 50
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "TAG"

    const/4 v2, 0x2

    .line 54
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "e"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/ta/audid/db/SqliteHelper;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PRAGMA journal_mode=DELETE"

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 33
    invoke-virtual {p0, v0}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    throw p1

    :catch_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 35
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
