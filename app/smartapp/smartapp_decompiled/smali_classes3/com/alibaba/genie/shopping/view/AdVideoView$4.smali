.class Lcom/alibaba/genie/shopping/view/AdVideoView$4;
.super Ljava/lang/Object;
.source "AdVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/view/AdVideoView;
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

    .line 232
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8

    .line 237
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$200(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$100(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {v0, p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$302(Lcom/alibaba/genie/shopping/view/AdVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 255
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$400(Lcom/alibaba/genie/shopping/view/AdVideoView;)Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->isMute()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$300(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$300(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$300(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$300(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$100(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->getDuration()I

    move-result p1

    int-to-long v0, p1

    .line 270
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$500(Lcom/alibaba/genie/shopping/view/AdVideoView;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    .line 271
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$500(Lcom/alibaba/genie/shopping/view/AdVideoView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    :cond_2
    move-wide v4, v0

    .line 273
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->showTimeRemain(Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$600(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 279
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$600(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 280
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$602(Lcom/alibaba/genie/shopping/view/AdVideoView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 283
    :cond_3
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    new-instance v0, Lcom/alibaba/genie/shopping/view/AdVideoView$4$1;

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/genie/shopping/view/AdVideoView$4$1;-><init>(Lcom/alibaba/genie/shopping/view/AdVideoView$4;JJ)V

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$602(Lcom/alibaba/genie/shopping/view/AdVideoView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 297
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$600(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
