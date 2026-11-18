.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$OnSeekBarChangeImpl;
.super Ljava/lang/Object;
.source "MusicPlayerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSeekBarChangeImpl"
.end annotation


# instance fields
.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)V
    .locals 0

    .line 1014
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$OnSeekBarChangeImpl;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$OnSeekBarChangeImpl;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 1020
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$OnSeekBarChangeImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    if-nez p1, :cond_0

    return-void

    .line 1024
    :cond_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getVisibility()I

    move-result p3

    const-wide/16 v0, 0x1

    if-nez p3, :cond_1

    .line 1025
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcId:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    int-to-long v2, p2

    invoke-virtual {p3, v2, v3, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->updateTime(JJ)V

    .line 1027
    :cond_1
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->lrcFullViewId:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_2

    .line 1028
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$1000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    move-result-object p3

    int-to-long v2, p2

    invoke-virtual {p3, v2, v3, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->updateTime(JJ)V

    .line 1030
    :cond_2
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->playedTimeTvId:Landroid/widget/TextView;

    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->totalTimeTvId:Landroid/widget/TextView;

    iget-wide v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mDuration:J

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$OnSeekBarChangeImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 1044
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch, progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicPlayerView"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->checkController()V

    .line 1046
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_1

    .line 1047
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->seekTo(J)V

    :cond_1
    return-void
.end method
