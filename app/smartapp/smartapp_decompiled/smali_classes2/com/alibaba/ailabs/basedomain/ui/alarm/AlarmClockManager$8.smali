.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;
.super Ljava/lang/Object;
.source "AlarmClockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleDeleteAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

.field final synthetic val$alarmContents:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;->val$alarmContents:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeleteAlarmContents alarmContents:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;->val$alarmContents:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmClockManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;->val$alarmContents:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 686
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;->val$alarmContents:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 687
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;->val$alarmContents:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->get(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v2

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDeleteAlarmContents alarmDatabaseHelper index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->deleteOnlineAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 692
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 695
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 696
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AliGenie.Alarm.Delete"

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->finish(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeleteAlarmContents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
