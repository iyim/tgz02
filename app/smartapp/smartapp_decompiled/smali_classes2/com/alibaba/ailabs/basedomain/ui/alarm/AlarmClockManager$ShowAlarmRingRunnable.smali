.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;
.super Ljava/lang/Object;
.source "AlarmClockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowAlarmRingRunnable"
.end annotation


# instance fields
.field private mAlarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->mAlarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAlarmRingUI info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->mAlarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmClockManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->mAlarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    if-nez v0, :cond_0

    return-void

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "showAlarmRingUI without create dialog"

    .line 1215
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->mAlarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->setAlarmId(Ljava/lang/String;)V

    goto :goto_0

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->mAlarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 1219
    invoke-virtual {v3}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1218
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->showScreenDistanceTipDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1302(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    const-string v0, "showAlarmRingUI create dialog"

    .line 1220
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAlarmRingUI mAlarmRingDialog: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
