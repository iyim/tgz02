.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmRingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeWatcherReceiver"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HomeWatcherReceiver"

.field private static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"


# instance fields
.field private mDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;",
            ">;)V"
        }
    .end annotation

    .line 683
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 684
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;->mDialogRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 689
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$HomeWatcherReceiver;->mDialogRef:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    return-void

    .line 691
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    if-nez p1, :cond_1

    return-void

    .line 694
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "com.alibaba.ailabs.genie.rtc.START_RTC"

    .line 697
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x64

    const-string v3, "HomeWatcherReceiver"

    if-eqz v1, :cond_3

    const-string p2, "RTC start"

    .line 698
    invoke-static {v3, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$1400(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    return-void

    .line 703
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "reason"

    .line 705
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "homekey"

    .line 707
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 708
    invoke-static {v3, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$1400(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeWatcherReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
