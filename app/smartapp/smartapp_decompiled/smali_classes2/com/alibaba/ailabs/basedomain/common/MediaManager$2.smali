.class Lcom/alibaba/ailabs/basedomain/common/MediaManager$2;
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

    .line 194
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$2;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$2;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$700(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$2;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$808(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$900(Lcom/alibaba/ailabs/basedomain/common/MediaManager;I)V

    .line 203
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$1100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$2;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$1000(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$2;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$800(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)I

    move-result v0

    const/16 v1, 0x3a

    if-ge v0, v1, :cond_1

    .line 205
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$1100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$2;->this$0:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$1000(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x8ca

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoBigVolumeRunnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
