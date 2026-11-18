.class Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/common/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AUDIOFOCUS OnAudioFocusChangeListener onAudioFocusChange focusChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus changed dump:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$000(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->dump(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->uploadMsg(Ljava/lang/String;)V

    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$300(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "AUDIOFOCUS_LOSS"

    .line 96
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AUDIOFOCUS mOnAudioFocusChangeListener loss audio focus, stop ring\uff0cmState Listener"

    .line 97
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$400(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V

    .line 100
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$500(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$500(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$100(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onInterrupt(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "AUDIOFOCUS_LOSS_TRANSIENT"

    .line 76
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    .line 78
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TopActivity:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$000(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->getTopActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$000(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->showAlarmToast()Z

    move-result p1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disappear by special page, disappearUI:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 83
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$100(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    const-string v0, "stop by should show toast"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$100(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    const-string v1, "play_finish"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->stopRing(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$000(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->closeAlarmUITmpWithouterminate()V

    goto :goto_0

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$200(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V

    :cond_5
    :goto_0
    return-void
.end method
