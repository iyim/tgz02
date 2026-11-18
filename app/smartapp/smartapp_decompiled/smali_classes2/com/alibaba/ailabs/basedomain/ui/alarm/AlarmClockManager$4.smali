.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$4;
.super Ljava/lang/Object;
.source "AlarmClockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleAlarmTimeUp(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

.field final synthetic val$alarmDbId:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;I)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$4;->val$alarmDbId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$4;->val$alarmDbId:I

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$500(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$600(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSomeReady runnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
