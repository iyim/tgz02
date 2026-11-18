.class Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playOtherDomainTts(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

.field final synthetic val$finalNeedFeedback:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/common/MediaManager;Z)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;->val$finalNeedFeedback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    const-string p1, "MediaManager"

    const-string v0, "playOtherDomainTts onError"

    .line 449
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$1100()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAfterOtherTtsDefaultMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 451
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$600(Lcom/alibaba/ailabs/basedomain/common/MediaManager;ILandroid/os/Bundle;)V

    .line 452
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOtherTtsEndTime:J

    return-void
.end method

.method public onTtsBegin(I)V
    .locals 1

    .line 434
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$1100()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAfterOtherTtsDefaultMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "MediaManager"

    const-string v0, "playOtherDomainTts onTtsBegin"

    .line 435
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTtsEnd(I)V
    .locals 2

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playOtherDomainTts onTtsEnd. finalNeedFeedback = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;->val$finalNeedFeedback:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaManager"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$1100()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAfterOtherTtsDefaultMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$600(Lcom/alibaba/ailabs/basedomain/common/MediaManager;ILandroid/os/Bundle;)V

    .line 444
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOtherTtsEndTime:J

    return-void
.end method
