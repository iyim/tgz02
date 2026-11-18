.class public Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;
.super Lcom/alibaba/genie/shopping/timer/BaseScheduleJob;
.source "GetAppExInfoScheduleJob.java"


# static fields
.field public static _instance:Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob; = null

.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/timer/BaseScheduleJob;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;
    .locals 2

    const-class v0, Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;->_instance:Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;-><init>()V

    sput-object v1, Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;->_instance:Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;

    .line 17
    :cond_0
    sget-object v1, Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;->_instance:Lcom/alibaba/genie/shopping/timer/job/GetAppExInfoScheduleJob;
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
.method public doWork()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected getDelay()J
    .locals 2

    const-wide/16 v0, 0x1770

    return-wide v0
.end method

.method public getPeriod()I
    .locals 1

    const/16 v0, 0xc6c

    return v0
.end method
