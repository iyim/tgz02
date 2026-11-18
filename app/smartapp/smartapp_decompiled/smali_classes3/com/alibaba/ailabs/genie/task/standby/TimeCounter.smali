.class public Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;
.super Ljava/lang/Object;
.source "TimeCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private listener:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;

.field private time:J


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    .line 15
    new-instance v0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$1;-><init>(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->handler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->listener:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    return-wide v0
.end method

.method static synthetic access$006(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)J
    .locals 4

    .line 10
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->checkTime()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->listener:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;

    return-object p0
.end method

.method private checkTime()V
    .locals 9

    .line 50
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->goStandby()V

    return-void

    :cond_0
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3c

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->showDialog()V

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x78

    cmp-long v8, v0, v6

    if-lez v8, :cond_2

    sub-long/2addr v0, v4

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sleep delay ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v0, v0, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskService-Standby"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    iput-wide v4, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    return-void

    .line 62
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->updateTime()V

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private goStandby()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$3;-><init>(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showDialog()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$4;-><init>(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateTime()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$2;-><init>(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getLeftTime()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 5

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRunning ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Standby"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public starTimer(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    .line 33
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->handler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->checkTime()V

    return-void
.end method

.method public stopTimer()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->time:J

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
