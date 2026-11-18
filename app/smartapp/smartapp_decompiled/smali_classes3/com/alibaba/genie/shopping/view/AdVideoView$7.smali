.class Lcom/alibaba/genie/shopping/view/AdVideoView$7;
.super Ljava/lang/Object;
.source "AdVideoView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/AdVideoView;->requestAudioFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/AdVideoView;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    const-string v0, "AdVideoView"

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 465
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$100(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " audio focus gain isPlaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAudioFocused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {v3}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$900(Lcom/alibaba/genie/shopping/view/AdVideoView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    .line 467
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$900(Lcom/alibaba/genie/shopping/view/AdVideoView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 468
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->resumeVideo()V

    .line 470
    :cond_2
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1, v1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$902(Lcom/alibaba/genie/shopping/view/AdVideoView;Z)Z

    goto :goto_1

    .line 457
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$100(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " audio focus loss, mAudioFocused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {v2}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$900(Lcom/alibaba/genie/shopping/view/AdVideoView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 459
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$900(Lcom/alibaba/genie/shopping/view/AdVideoView;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 460
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->pauseVideo()V

    .line 461
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$7;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$902(Lcom/alibaba/genie/shopping/view/AdVideoView;Z)Z

    :cond_4
    :goto_1
    return-void
.end method
