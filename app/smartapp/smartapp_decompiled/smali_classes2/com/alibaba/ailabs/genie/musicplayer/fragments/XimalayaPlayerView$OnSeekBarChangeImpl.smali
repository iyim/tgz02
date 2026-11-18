.class public Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$OnSeekBarChangeImpl;
.super Ljava/lang/Object;
.source "XimalayaPlayerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OnSeekBarChangeImpl"
.end annotation


# instance fields
.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;)V
    .locals 1

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$OnSeekBarChangeImpl;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 418
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$OnSeekBarChangeImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-nez p1, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->onProgressChanged(I)V

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

    .line 431
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ClickUtils;->isFastSeek()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView$OnSeekBarChangeImpl;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-nez v0, :cond_1

    return-void

    .line 438
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->checkController()V

    .line 439
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_2

    .line 440
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->seekTo(J)V

    :cond_2
    return-void
.end method
