.class public Lcom/taobao/tao/log/task/PullTask;
.super Ljava/lang/Object;
.source "PullTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;,
        Lcom/taobao/tao/log/task/PullTask$CreateInstance;
    }
.end annotation


# static fields
.field private static final PULL_MSG:I = 0x0

.field private static TAG:Ljava/lang/String; = "TLOG.PullTask"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/taobao/tao/log/task/PullTask$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/taobao/tao/log/task/PullTask;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/taobao/tao/log/task/PullTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/tao/log/task/PullTask;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/taobao/tao/log/task/PullTask;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/taobao/tao/log/task/PullTask;
    .locals 1

    .line 51
    invoke-static {}, Lcom/taobao/tao/log/task/PullTask$CreateInstance;->access$100()Lcom/taobao/tao/log/task/PullTask;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handle(Lcom/taobao/tao/log/message/MessageReponse;)V
    .locals 4

    .line 109
    invoke-static {}, Lcom/taobao/tao/log/CommandDataCenter;->getInstance()Lcom/taobao/tao/log/CommandDataCenter;

    move-result-object v0

    iget-object v1, p1, Lcom/taobao/tao/log/message/MessageReponse;->serviceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/tao/log/message/MessageReponse;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/taobao/tao/log/message/MessageReponse;->dataId:Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/tao/log/message/MessageReponse;->result:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 109
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/taobao/tao/log/CommandDataCenter;->onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public pull()V
    .locals 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/taobao/tao/log/task/PullTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    sget-object v1, Lcom/taobao/tao/log/task/PullTask;->TAG:Ljava/lang/String;

    const-string v2, "pull task error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "tlog_pull_msg"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/taobao/tao/log/task/PullTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/taobao/tao/log/task/PullTask;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Lcom/taobao/tao/log/task/PullTask$1;

    iget-object v1, p0, Lcom/taobao/tao/log/task/PullTask;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/tao/log/task/PullTask$1;-><init>(Lcom/taobao/tao/log/task/PullTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/tao/log/task/PullTask;->mHandler:Landroid/os/Handler;

    .line 89
    iget-object v0, p0, Lcom/taobao/tao/log/task/PullTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 96
    new-instance v1, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;-><init>(Lcom/taobao/tao/log/task/PullTask;Lcom/taobao/tao/log/task/PullTask$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Lcom/taobao/tao/log/task/PullTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "build version %s not suppert, registerActivityLifecycleCallbacks failed"

    .line 98
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
