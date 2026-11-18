.class Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
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

    .line 384
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 387
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnected------"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BrowserConnectionCallback  onConnected"

    .line 388
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->setConnected(Z)V

    .line 391
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->getRoot()Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 397
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 399
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handleExtraChanged(Landroid/os/Bundle;)V

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 408
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mCurrentSongId:Ljava/lang/String;

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->setController(Landroid/support/v4/media/session/MediaControllerCompat;)V

    const-string v0, "BrowserConnectionCallback ControllerCallback onMediaSessionConnected"

    .line 411
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->onMediaSessionConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 414
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 2

    .line 421
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fde\u63a5\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
