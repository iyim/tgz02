.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmQueryReceiver.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.action.LatestAlarm"

.field private static final CRON:Ljava/lang/String; = "Cron"

.field private static final TAG:Ljava/lang/String; = "DoNotDisturbViewHolder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DoNotDisturbViewHolder"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmQueryReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
