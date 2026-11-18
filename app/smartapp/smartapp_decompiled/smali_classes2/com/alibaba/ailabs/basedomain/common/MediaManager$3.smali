.class Lcom/alibaba/ailabs/basedomain/common/MediaManager$3;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 385
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playOtherDomainTts mOtherTtsBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    iget-wide v1, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOtherTtsBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mOtherTtsEndTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    iget-wide v1, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOtherTtsEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    iget-wide v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOtherTtsEndTime:J

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    iget-wide v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOtherTtsBeginTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 392
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$1200(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$1300(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play default music, for tts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
