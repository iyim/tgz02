.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;
.super Ljava/lang/Object;
.source "AlarmClockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleAlarmRing(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

.field final synthetic val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 392
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDelayTime()I

    move-result v0

    const-string v1, "AlarmClockManager"

    if-nez v0, :cond_0

    const-string v0, "this alarm first time ring, clear pending alarms"

    .line 393
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$800(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$900(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)Z

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step#3 start 1PxActivity and playAlarm() alarmInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->setWaitingOther(Z)V

    .line 400
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 401
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getTtsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getTTSURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->showAlarmToast()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDismissByOther disappear alarm info:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    const-string v4, "disappear_by_others"

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->disappearByOther(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_touch"

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->onRingFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 411
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 412
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 413
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "\u60a8\u6709\u4e00\u4e2a%s\u7684\u95f9\u949f"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "onReceiveDismissByOther, no show alarm ring activity, just show toast"

    .line 416
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/OnePixelActivity;->startActivity(Landroid/content/Context;)V

    .line 423
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->setAlarmState(Z)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 425
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 426
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 427
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getVolume()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 428
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getIgnoreDefault()Z

    move-result v8

    .line 425
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->playRingBegin(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 432
    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->syncAlarmEnteredForeground(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step#3 after4 set mState Listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;->val$alarmInfo:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->setMediaPlayStateListener(Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle AlarmRing runnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
