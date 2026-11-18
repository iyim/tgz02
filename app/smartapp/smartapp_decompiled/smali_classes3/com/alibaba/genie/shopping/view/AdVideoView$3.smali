.class Lcom/alibaba/genie/shopping/view/AdVideoView$3;
.super Ljava/lang/Object;
.source "AdVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 210
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$3;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "AdVideoView"

    const-string v0, "playerPlayCompletion..."

    .line 213
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$3;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$100(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/widget/VideoView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$3;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$200(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$3;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$000(Lcom/alibaba/genie/shopping/view/AdVideoView;)Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$3;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$000(Lcom/alibaba/genie/shopping/view/AdVideoView;)Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;->onPlayVideoComplete()V

    :cond_0
    return-void
.end method
