.class public Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;
.super Lcom/alibaba/ailabs/genie/smartapp/task/core/BaseScheduleJob;
.source "UpdateAppScheduleJob.java"


# static fields
.field public static _instance:Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob; = null

.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/task/core/BaseScheduleJob;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;->_instance:Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;->_instance:Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;

    .line 25
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;->_instance:Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;
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
    .locals 3

    const-string v0, "UpdateAppScheduleJob"

    const-string v1, "================begin check apk update================"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "genie://com.alibaba.ailabs.genie.market/checkapp"

    .line 33
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplication()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplication()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected getDelay()J
    .locals 2

    const-wide/16 v0, 0x1770

    return-wide v0
.end method

.method public getPeriod()I
    .locals 1

    const/16 v0, 0x5460

    return v0
.end method
