.class public Lcom/ta/audid/store/RSContentSqliteStore;
.super Ljava/lang/Object;
.source "RSContentSqliteStore.java"


# static fields
.field private static mInstance:Lcom/ta/audid/store/RSContentSqliteStore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private clearOldLogByCount(I)I
    .locals 5

    .line 42
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/RSContent;

    invoke-virtual {v0, v1}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v1

    const-class v2, Lcom/ta/audid/store/RSContent;

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

    .line 38
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/RSContent;

    invoke-virtual {v0, v1}, Lcom/ta/audid/db/DBMgr;->count(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/ta/audid/store/RSContentSqliteStore;
    .locals 2

    const-class v0, Lcom/ta/audid/store/RSContentSqliteStore;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/ta/audid/store/RSContentSqliteStore;->mInstance:Lcom/ta/audid/store/RSContentSqliteStore;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/ta/audid/store/RSContentSqliteStore;

    invoke-direct {v1}, Lcom/ta/audid/store/RSContentSqliteStore;-><init>()V

    sput-object v1, Lcom/ta/audid/store/RSContentSqliteStore;->mInstance:Lcom/ta/audid/store/RSContentSqliteStore;

    .line 18
    :cond_0
    sget-object v1, Lcom/ta/audid/store/RSContentSqliteStore;->mInstance:Lcom/ta/audid/store/RSContentSqliteStore;
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

    .line 54
    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/RSContent;

    invoke-virtual {v0, v1}, Lcom/ta/audid/db/DBMgr;->clear(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized find(Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/RSContent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ta/audid/db/DBMgr;->count(Ljava/lang/Class;Ljava/lang/String;)I

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

.method public declared-synchronized insertStringList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 22
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/ta/audid/store/RSContentSqliteStore;->count()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    const/16 v0, 0x64

    .line 27
    invoke-direct {p0, v0}, Lcom/ta/audid/store/RSContentSqliteStore;->clearOldLogByCount(I)I

    .line 30
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    new-instance v2, Lcom/ta/audid/store/RSContent;

    invoke-direct {v2, v1}, Lcom/ta/audid/store/RSContent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_2
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ta/audid/db/DBMgr;->insert(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 23
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method
