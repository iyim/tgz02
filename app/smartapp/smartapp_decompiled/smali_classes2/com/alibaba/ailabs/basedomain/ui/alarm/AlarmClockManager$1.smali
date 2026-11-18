.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$1;
.super Ljava/lang/Object;
.source "AlarmClockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->isMemberType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->hasPendingAlarm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isRing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 114
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->SyncData(Z)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->syncAllAlarmDataRequest()V

    goto :goto_0

    :cond_0
    const-string v0, "AlarmClockManager"

    const-string v1, "** dissatisfy sync or is not online retry 10 min"

    .line 118
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    sget-boolean v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->SYNC_ALL_ALARM_DATA_SUCCESS:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postMainThreadTaskDelay(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSyncAlarmDataRunnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
