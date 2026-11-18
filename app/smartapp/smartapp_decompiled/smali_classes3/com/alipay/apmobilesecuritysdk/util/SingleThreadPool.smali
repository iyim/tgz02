.class public Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;
.super Ljava/lang/Object;
.source "SingleThreadPool.java"


# static fields
.field private static instance:Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;


# instance fields
.field private mTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private workThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->instance:Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->workThread:Ljava/lang/Thread;

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->mTaskQueue:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;)Ljava/util/LinkedList;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->mTaskQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->workThread:Ljava/lang/Thread;

    return-object p1
.end method

.method public static getInstance()Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;
    .locals 1

    .line 19
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->instance:Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->workThread:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool$1;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool$1;-><init>(Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->workThread:Ljava/lang/Thread;

    .line 46
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/util/SingleThreadPool;->workThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
