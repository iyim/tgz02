.class public Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DXPriorityExecutor.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final FIFO:Ljava/util/Comparator;

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LIFO:Ljava/util/Comparator;

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor$1;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor$1;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 39
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor$2;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor$2;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->FIFO:Ljava/util/Comparator;

    .line 56
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor$3;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor$3;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->LIFO:Ljava/util/Comparator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 88
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(IZ)V
    .locals 8

    .line 84
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->FIFO:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->LIFO:Ljava/util/Comparator;

    :goto_0
    const/16 v0, 0x80

    invoke-direct {v6, v0, p2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    sget-object v7, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x5

    .line 76
    invoke-direct {p0, v0, p1}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;-><init>(IZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 115
    instance-of v0, p1, Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p1

    nop

    nop

    sget-object v1, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;->SEQ:J

    .line 118
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isBusy()Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->getActiveCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityExecutor;->getCorePoolSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
