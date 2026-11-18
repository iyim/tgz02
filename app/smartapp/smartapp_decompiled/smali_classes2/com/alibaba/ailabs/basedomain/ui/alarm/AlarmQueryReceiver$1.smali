.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver$1;
.super Ljava/lang/Object;
.source "AlarmQueryReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver;Landroid/content/Context;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getDelayedLatestAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v0

    const-string v1, "DoNotDisturbViewHolder"

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getCron()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cron"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getCron()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alibaba.ailabs.genie.action.LatestAlarm"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getCron()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "Alarm is EMPTY!"

    .line 37
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
