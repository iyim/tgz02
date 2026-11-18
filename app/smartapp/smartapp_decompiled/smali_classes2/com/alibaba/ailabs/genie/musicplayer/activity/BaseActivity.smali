.class public abstract Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;,
        Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;",
        ">",
        "Landroid/support/v4/app/FragmentActivity;"
    }
.end annotation


# static fields
.field public static final LOGIN_WAFT_URL_PRE:Ljava/lang/String; = "waft://open?genieAppId=2021071474006&code=2021071474006_content_template"

.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private BrowserConnectionCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

.field private BrowserSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

.field private ControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

.field protected mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

.field protected mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

.field protected mController:Landroid/support/v4/media/session/MediaControllerCompat;

.field protected mCurrentMetadata:Landroid/support/v4/media/MediaMetadataCompat;

.field protected mCurrentSongId:Ljava/lang/String;

.field protected mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

.field private mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

.field protected mPayReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity<",
            "TT;>.PayReceiver;"
        }
    .end annotation
.end field

.field protected mStopReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity<",
            "TT;>.StopReceiver;"
        }
    .end annotation
.end field

.field protected mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 384
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->BrowserConnectionCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    .line 428
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->BrowserSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 439
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->ControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->BrowserSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->ControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    return-object p0
.end method

.method private initObserver()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->getLoadingLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$TnuVzhgnetTyPyO4gfAaCh8hZ9g;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$TnuVzhgnetTyPyO4gfAaCh8hZ9g;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->getToastLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$3qY0cwy74lpGo9N6cHzAXxP2f4Y;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$3qY0cwy74lpGo9N6cHzAXxP2f4Y;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->getActivityLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$zp89DhRv9j5WshaivBsxhLEi6YM;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$zp89DhRv9j5WshaivBsxhLEi6YM;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->getMetadataLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$dcrHRs9OuLpzBUetywMgbyxj5Mg;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$dcrHRs9OuLpzBUetywMgbyxj5Mg;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->getErrorLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$0DABwssd9fRiq3qpEiCkaManX_U;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$0DABwssd9fRiq3qpEiCkaManX_U;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic lambda$postDelayTips$31(Ljava/lang/String;)V
    .locals 0

    .line 270
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->show(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public dismissLoadingDialog()V
    .locals 2

    const/4 v0, 0x0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 262
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-void

    .line 256
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 260
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-void

    :goto_1
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    throw v1
.end method

.method protected dismissLoginDialog()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->dismiss()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    :cond_0
    return-void
.end method

.method protected abstract handError(Ljava/lang/Integer;)V
.end method

.method protected abstract handMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
.end method

.method protected abstract handleBack()V
.end method

.method public handleExtraChanged(Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected handleGesture(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.cmd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Operation"

    const-string v2, "manual"

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gesture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, "Control"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0x13

    .line 376
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 373
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handleBack()V

    goto :goto_0

    .line 360
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    if-eq p1, v2, :cond_0

    .line 364
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->TAG:Ljava/lang/String;

    const-string v0, "not playing, return"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 369
    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 347
    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 351
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->TAG:Ljava/lang/String;

    const-string v0, "is playing, return"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 356
    :cond_1
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 343
    :pswitch_4
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x1

    .line 339
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handlePlayState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public handleSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected abstract initViewModel()Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public synthetic lambda$initObserver$26$BaseActivity(Ljava/lang/Boolean;)V
    .locals 3

    .line 109
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChanged,aBoolean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->showLoadingDialog()V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->dismissLoadingDialog()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initObserver$27$BaseActivity(Ljava/lang/String;)V
    .locals 3

    .line 117
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->postDelayTips(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initObserver$28$BaseActivity(Ljava/util/Map;)V
    .locals 4

    .line 121
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel$ParameterField;->CLASS:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel$ParameterField;->BUNDLE:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initObserver$29$BaseActivity(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    const-string v0, "mViewModel.getMetadataLiveData().observe handMetadata "

    .line 133
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public synthetic lambda$initObserver$30$BaseActivity(Ljava/lang/Integer;)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->handError(Ljava/lang/Integer;)V

    return-void
.end method

.method protected login(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 5

    const-string v0, "login"

    if-nez p1, :cond_0

    const-string p1, "login song is null, return"

    .line 308
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "login,title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "song:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isWaftVersionOK(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "uri:"

    const-string v3, "source"

    if-eqz v1, :cond_2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waft://open?genieAppId=2021071474006&code=2021071474006_content_template&type=page&path=pages/login/login&query=templateType%3Driver%26from%3Daudio%26source%3D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p1, v3}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%26appId%3D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appId"

    invoke-virtual {p1, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "waft login"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webapp://com.alibaba.ailabs.genie.webapps/open?appId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "webappId"

    invoke-virtual {p1, v4}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&page=/pages/Login/index&reuseAppInStack=true&from=audio&source="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p1, v3}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 328
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->finish()V

    .line 72
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mApp:Lcom/alibaba/ailabs/genie/musicplayer/App;

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-nez p1, :cond_1

    .line 75
    new-instance p1, Landroid/support/v4/media/MediaBrowserCompat;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.service.MusicService"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->BrowserConnectionCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result p1

    if-nez p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->initObserver()V

    .line 84
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 85
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mStopReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;

    .line 86
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mPayReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mStopReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.alibaba.ailabs.genie.musicplayer.cmd"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mPayReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.alibaba.ailabs.genie.musicplayer.pay"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->requestWindowFeature(I)Z

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0xc000000

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 95
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 171
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mStopReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mStopReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mPayReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mPayReceiver:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    .line 184
    :cond_2
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_5

    .line 187
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->ControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 188
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->ControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    if-eqz v0, :cond_4

    .line 190
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->ControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 192
    :cond_4
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->BrowserSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 194
    :cond_5
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mCurrentMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    .line 195
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 196
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mCurrentSongId:Ljava/lang/String;

    .line 197
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    .line 198
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->dismissLoadingDialog()V

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    if-eqz v0, :cond_6

    .line 201
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->getLoadingLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->getToastLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->getActivityLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->getMetadataLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->getErrorLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 206
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    .line 208
    :cond_6
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 210
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract onMediaSessionConnected()V
.end method

.method protected onPause()V
    .locals 0

    .line 157
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->dismissLoadingDialog()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 141
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.service.MusicService"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 149
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->ControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->ControllerCallback:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    :cond_0
    return-void
.end method

.method protected payFailed(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected paySuccess(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public postDelayTips(Ljava/lang/String;)V
    .locals 3

    .line 270
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$R5PpaYkj4h4HcGzJCYX0X0l6pz0;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$R5PpaYkj4h4HcGzJCYX0X0l6pz0;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->postDelayed(Ljava/lang/Runnable;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showLoadingDialog()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    .line 242
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->setCancelable(Z)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoading:Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V

    return-void
.end method

.method protected showLoginDialog(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$style;->Dialog:I

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->dismiss()V

    .line 278
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$style;->Dialog:I

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->show()V

    .line 281
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mLoginDialog:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;Landroid/support/v4/media/MediaMetadataCompat;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->setCallBack(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog$ButtonCallBack;)V

    return-void
.end method
