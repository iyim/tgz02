.class Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/common/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RingPlayTask"
.end annotation


# instance fields
.field public alarmId:Ljava/lang/String;

.field public ignoreDefault:Z

.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

.field public ttsUrl:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public volume:I


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/common/MediaManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x32

    .line 769
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->volume:I

    .line 773
    iput-boolean p5, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->ignoreDefault:Z

    .line 774
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    .line 775
    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->ttsUrl:Ljava/lang/String;

    .line 776
    iput-object p4, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->url:Ljava/lang/String;

    .line 777
    iput p6, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->volume:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 781
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    .line 782
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->ttsUrl:Ljava/lang/String;

    .line 783
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->url:Ljava/lang/String;

    const/16 v0, 0x32

    .line 784
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->volume:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RingPlayTask{alarmId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ttsUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->ttsUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->ignoreDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->volume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
