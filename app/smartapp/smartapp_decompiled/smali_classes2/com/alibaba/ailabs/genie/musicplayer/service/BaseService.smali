.class public abstract Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;
.super Landroid/support/v4/media/MediaBrowserServiceCompat;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;,
        Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$PlaybackHandler;
    }
.end annotation


# static fields
.field public static final OPERATION_AUTOMATIC:I = -0x2

.field public static final OPERATION_MANUAL:I = -0x1

.field public static Operation:I = -0x1

.field public static final TAG:Ljava/lang/String; = "BaseService"

.field protected static mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;


# instance fields
.field protected mAgmcCallbackImpl:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mIsException:Z

.field protected mLastPlayState:Z

.field protected mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

.field public mPlaybackHandler:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$PlaybackHandler;

.field public mPlaybackThread:Landroid/os/HandlerThread;

.field protected mWindowManager:Landroid/view/WindowManager;

.field private playErrorRefreshDialog:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mWindowManager:Landroid/view/WindowManager;

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mLastPlayState:Z

    .line 48
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mIsException:Z

    .line 51
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mPlaybackHandler:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$PlaybackHandler;

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 3

    const-string v0, "power"

    .line 64
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v0, "audio"

    .line 67
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "window"

    .line 68
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mWindowManager:Landroid/view/WindowManager;

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mPlaybackThread:Landroid/os/HandlerThread;

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$PlaybackHandler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$PlaybackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mPlaybackHandler:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$PlaybackHandler;

    return-void
.end method

.method protected initPlayer(Ljava/lang/String;)V
    .locals 2

    .line 75
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcCallbackImpl:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "music_player"

    .line 79
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcCallbackImpl:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    return-void
.end method

.method public isPlay()Z
    .locals 1

    .line 179
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcIsPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$null$0$BaseService()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->playErrorRefreshDialog:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->playErrorRefreshDialog:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRefresh$1$BaseService()V
    .locals 4

    .line 152
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;->setClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$ClickListener;)V

    .line 166
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;->create()Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->playErrorRefreshDialog:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;

    .line 167
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$BaseService$GJ6CoifZIZT2L6LeLQxPM9A5J1s;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$BaseService$GJ6CoifZIZT2L6LeLQxPM9A5J1s;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected abstract onPlayerEvent(ILandroid/os/Bundle;)V
.end method

.method public onRefresh()V
    .locals 1

    .line 151
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$BaseService$uq6-6Lvcsqup_bZaOc5imDe-MaU;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$BaseService$uq6-6Lvcsqup_bZaOc5imDe-MaU;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public abstract pause(Z)V
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mPlaybackHandler:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$PlaybackHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$PlaybackHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract resume()V
.end method

.method public abstract stop()V
.end method
