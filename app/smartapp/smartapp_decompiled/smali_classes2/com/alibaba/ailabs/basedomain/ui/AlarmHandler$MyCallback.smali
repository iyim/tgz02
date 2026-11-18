.class Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$MyCallback;
.super Ljava/lang/Object;
.source "AlarmHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$MyCallback;->this$0:Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$MyCallback;-><init>(Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  in thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmHandler"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2710

    if-eq v2, v3, :cond_4

    const/16 v3, 0x7530

    if-eq v2, v3, :cond_3

    const v3, 0x9ca2

    if-eq v2, v3, :cond_2

    const v3, 0xc350

    if-eq v2, v3, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage can not handle it:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getApplication()Lcom/alibaba/ailabs/basedomain/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/MainApplication;->isAnyVisibleActivity()Z

    move-result p1

    if-nez p1, :cond_1

    .line 102
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isRing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 103
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->hasPendingAlarm()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "After 5 min & no activity & bg-task & no pending alarm exist, exit, v82 changed no exit"

    .line 104
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/CacheManager;->get(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/CacheManager;

    move-result-object p1

    const-string v0, "applog"

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/CacheManager;->clearCache(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, " activity exist, exit delay 5 min"

    .line 109
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object p1

    const-wide/32 v0, 0x927c0

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleAlarmRing(Landroid/os/Message;)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "alarmId"

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_STOP_ALARM_RING alarmId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reason"

    const-string v2, "play_finish"

    .line 92
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->stopRing(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "tts"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play tts, tts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
