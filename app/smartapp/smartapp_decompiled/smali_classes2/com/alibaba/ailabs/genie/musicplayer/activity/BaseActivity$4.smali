.class Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$4;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 1

    .line 467
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 468
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handleExtraChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mCurrentSongId:Ljava/lang/String;

    const-string v0, "onMetadataChanged setMetadata "

    .line 454
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 456
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mCurrentMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handlePlayState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 461
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handleSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
