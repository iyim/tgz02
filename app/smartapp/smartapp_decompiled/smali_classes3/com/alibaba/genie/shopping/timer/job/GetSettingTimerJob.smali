.class public Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;
.super Lcom/alibaba/genie/shopping/timer/SimpleBaseScheduleJob;
.source "GetSettingTimerJob.java"


# static fields
.field public static _instance:Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob; = null

.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/timer/SimpleBaseScheduleJob;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;
    .locals 2

    const-class v0, Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;->_instance:Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;-><init>()V

    sput-object v1, Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;->_instance:Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;

    .line 16
    :cond_0
    sget-object v1, Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;->_instance:Lcom/alibaba/genie/shopping/timer/job/GetSettingTimerJob;
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
.method public getPeriod()I
    .locals 1

    const/16 v0, 0x2a30

    return v0
.end method

.method public work()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
