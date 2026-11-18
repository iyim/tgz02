.class public Lcom/alibaba/appmonitor/pool/BalancedPool;
.super Ljava/lang/Object;
.source "BalancedPool.java"

# interfaces
.implements Lcom/alibaba/appmonitor/pool/IPool;


# static fields
.field private static instance:Lcom/alibaba/appmonitor/pool/BalancedPool;


# instance fields
.field private reuseItemPools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/appmonitor/pool/Reusable;",
            ">;",
            "Lcom/alibaba/appmonitor/pool/ReuseItemPool<",
            "+",
            "Lcom/alibaba/appmonitor/pool/Reusable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/alibaba/appmonitor/pool/BalancedPool;

    invoke-direct {v0}, Lcom/alibaba/appmonitor/pool/BalancedPool;-><init>()V

    sput-object v0, Lcom/alibaba/appmonitor/pool/BalancedPool;->instance:Lcom/alibaba/appmonitor/pool/BalancedPool;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/appmonitor/pool/BalancedPool;->reuseItemPools:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;
    .locals 1

    .line 28
    sget-object v0, Lcom/alibaba/appmonitor/pool/BalancedPool;->instance:Lcom/alibaba/appmonitor/pool/BalancedPool;

    return-object v0
.end method

.method private declared-synchronized getPool(Ljava/lang/Class;)Lcom/alibaba/appmonitor/pool/ReuseItemPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alibaba/appmonitor/pool/Reusable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/appmonitor/pool/ReuseItemPool<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/pool/BalancedPool;->reuseItemPools:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/pool/ReuseItemPool;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/alibaba/appmonitor/pool/ReuseItemPool;

    invoke-direct {v0}, Lcom/alibaba/appmonitor/pool/ReuseItemPool;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/alibaba/appmonitor/pool/BalancedPool;->reuseItemPools:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public offer(Lcom/alibaba/appmonitor/pool/Reusable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alibaba/appmonitor/pool/Reusable;",
            ">(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getPool(Ljava/lang/Class;)Lcom/alibaba/appmonitor/pool/ReuseItemPool;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lcom/alibaba/appmonitor/pool/ReuseItemPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V

    :cond_0
    return-void
.end method

.method public varargs poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alibaba/appmonitor/pool/Reusable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getPool(Ljava/lang/Class;)Lcom/alibaba/appmonitor/pool/ReuseItemPool;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/alibaba/appmonitor/pool/ReuseItemPool;->poll()Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/appmonitor/pool/Reusable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v1, p1}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1, p2}, Lcom/alibaba/appmonitor/pool/Reusable;->fill([Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method
