.class public Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;
.super Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;
.source "AppUpdateTimerJob.java"


# static fields
.field public static _instance:Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob; = null

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public mTimeEdges:[I

.field public mTimes:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/timer/BaseTimePointJob;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;
    .locals 2

    const-class v0, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;->_instance:Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;-><init>()V

    sput-object v1, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;->_instance:Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;

    .line 24
    :cond_0
    sget-object v1, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;->_instance:Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;
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
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;->mTimes:[I

    .line 46
    iput-object v0, p0, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;->mTimeEdges:[I

    return-void
.end method

.method public doWork()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getTime()[I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;->mTimes:[I

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;->loadTimes()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/timer/job/AppUpdateTimerJob;->mTimes:[I

    return-object v0
.end method

.method public loadTimes()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
