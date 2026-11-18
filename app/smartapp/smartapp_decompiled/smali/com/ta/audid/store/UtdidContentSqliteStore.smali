.class public Lcom/ta/audid/store/UtdidContentSqliteStore;
.super Ljava/lang/Object;
.source "UtdidContentSqliteStore.java"


# static fields
.field public static final MAX_LOG_COUNT:I = 0x4

.field private static mInstance:Lcom/ta/audid/store/UtdidContentSqliteStore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private clearOldLogByCount(I)I
    .locals 5

    .line 51
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/UtdidContent;

    invoke-virtual {v0, v1}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v1

    const-class v2, Lcom/ta/audid/store/UtdidContent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id in ( select _id from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ORDER BY _id ASC LIMIT "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcom/ta/audid/db/DBMgr;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private count()I
    .locals 2

    .line 47
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/UtdidContent;

    invoke-virtual {v0, v1}, Lcom/ta/audid/db/DBMgr;->count(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/ta/audid/store/UtdidContentSqliteStore;
    .locals 2

    const-class v0, Lcom/ta/audid/store/UtdidContentSqliteStore;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/ta/audid/store/UtdidContentSqliteStore;->mInstance:Lcom/ta/audid/store/UtdidContentSqliteStore;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/ta/audid/store/UtdidContentSqliteStore;

    invoke-direct {v1}, Lcom/ta/audid/store/UtdidContentSqliteStore;-><init>()V

    sput-object v1, Lcom/ta/audid/store/UtdidContentSqliteStore;->mInstance:Lcom/ta/audid/store/UtdidContentSqliteStore;

    .line 23
    :cond_0
    sget-object v1, Lcom/ta/audid/store/UtdidContentSqliteStore;->mInstance:Lcom/ta/audid/store/UtdidContentSqliteStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/UtdidContent;

    invoke-virtual {v0, v1}, Lcom/ta/audid/db/DBMgr;->clear(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ta/audid/store/UtdidContent;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/audid/db/DBMgr;->delete(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ta/audid/store/UtdidContent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/UtdidContent;

    const/4 v2, 0x0

    const-string v3, "priority DESC , time DESC "

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ta/audid/db/DBMgr;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertStringList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 27
    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ""

    const/4 v3, 0x2

    .line 32
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "logs"

    aput-object v5, v4, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0}, Lcom/ta/audid/store/UtdidContentSqliteStore;->count()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 36
    invoke-direct {p0, v3}, Lcom/ta/audid/store/UtdidContentSqliteStore;->clearOldLogByCount(I)I

    .line 39
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    new-instance v2, Lcom/ta/audid/store/UtdidContent;

    invoke-direct {v2, v1}, Lcom/ta/audid/store/UtdidContent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_2
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ta/audid/db/DBMgr;->insert(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    :try_start_1
    const-string p1, ""

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "logs is empty"

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
