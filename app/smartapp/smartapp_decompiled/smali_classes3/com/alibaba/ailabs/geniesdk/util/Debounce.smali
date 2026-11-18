.class public Lcom/alibaba/ailabs/geniesdk/util/Debounce;
.super Ljava/lang/Object;
.source "Debounce.java"


# static fields
.field private static final delayedMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final singleExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->singleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->delayedMap:Ljava/util/concurrent/ConcurrentHashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 10
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->delayedMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static debounce(Ljava/lang/Object;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->delayedMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->singleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/alibaba/ailabs/geniesdk/util/Debounce$1;

    invoke-direct {v2, p1, p0}, Lcom/alibaba/ailabs/geniesdk/util/Debounce$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-interface {v1, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Future;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 30
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public static debounceBefore(Ljava/lang/Object;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->delayedMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->singleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/alibaba/ailabs/geniesdk/util/Debounce$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/geniesdk/util/Debounce$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Future;

    if-nez p0, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 51
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->singleExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
