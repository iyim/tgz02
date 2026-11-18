.class Lcom/alibaba/genie/shopping/view/AdVideoView$4$1;
.super Landroid/os/CountDownTimer;
.source "AdVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/AdVideoView$4;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/shopping/view/AdVideoView$4;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/AdVideoView$4;JJ)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4$1;->this$1:Lcom/alibaba/genie/shopping/view/AdVideoView$4;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTick(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4$1;->this$1:Lcom/alibaba/genie/shopping/view/AdVideoView$4;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$700(Lcom/alibaba/genie/shopping/view/AdVideoView;)Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4$1;->this$1:Lcom/alibaba/genie/shopping/view/AdVideoView$4;

    iget-object v1, v1, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$100(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->setTimer(JJ)V

    .line 288
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$4$1;->this$1:Lcom/alibaba/genie/shopping/view/AdVideoView$4;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/view/AdVideoView$4;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {v0, p1, p2}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$802(Lcom/alibaba/genie/shopping/view/AdVideoView;J)J

    :cond_0
    return-void
.end method
