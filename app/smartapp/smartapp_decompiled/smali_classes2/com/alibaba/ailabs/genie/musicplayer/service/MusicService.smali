.class public Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;
.super Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;,
        Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;,
        Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;,
        Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OnTaskListenerImpl;
    }
.end annotation


# static fields
.field public static final ACTION_CMD:Ljava/lang/String; = "com.alibaba.ailabs.genie.musicplayer.cmd"

.field public static final ACTION_PAY:Ljava/lang/String; = "com.alibaba.ailabs.genie.musicplayer.pay"

.field private static final CHILD_MODE_AUTHORITY:Ljava/lang/String; = "content://com.alibaba.ailabs.childmode.provider/childMode"

.field public static final COM_ALIBABA_AILABS_GENIE_MUSIC_META_UPDATE:Ljava/lang/String; = "com.alibaba.ailabs.genie.music.meta.update"

.field public static final COM_ALIBABA_AILABS_GENIE_MUSIC_STATE_UPDATE:Ljava/lang/String; = "com.alibaba.ailabs.genie.music.state.update"

.field public static final FAILED:Ljava/lang/String; = "0"

.field public static final ICON_URI:Ljava/lang/String; = "IconUri"

.field private static final MAIN_ACTIVITY_PACKAGE_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.commonplayer/com.alibaba.ailabs.genie.commonplayer.activity.MainActivity"

.field public static final MIGUMUSIC:Ljava/lang/String; = "migumusic"

.field private static final RTC_IN_ACTIVITY_PACKAGE_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.rtc/com.alibaba.ailabs.genie.rtc.voip.callin.VoipCallInActivity"

.field private static final RTC_OUT_ACTIVITY_PACKAGE_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.rtc/com.alibaba.ailabs.genie.rtc.voip.callout.VoipCallOutActivity"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final SUCCESS:Ljava/lang/String; = "1"

.field public static final TAG:Ljava/lang/String; = "MusicService"

.field public static final TITLE:Ljava/lang/String; = "Title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field private static mInstance:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

.field private static mLastControlCode:I

.field private static mPlayModel:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;


# instance fields
.field private SessionCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private hasGetExtendInfo:Z

.field private isQuitting:Z

.field private mBindBroadcastReceiver:Lcom/alibaba/ailabs/genie/musicplayer/receiver/UserBindBroadCastReceiver;

.field private mChildContentObserver:Landroid/database/ContentObserver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

.field private mControlRecevier:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;

.field private mDuration:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mOnTaskListenerImpl:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OnTaskListenerImpl;

.field private mOtherReceiver:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;

.field private mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private mSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mSessionId:I

.field private mShutdownRecevier:Lcom/alibaba/ailabs/genie/musicplayer/receiver/ShutdownBroadcastReceiver;

.field private mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

.field private mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

.field private moreEditionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation
.end field

.field private notifyCancelRunnable:Ljava/lang/Runnable;

.field private notifyRunnable:Ljava/lang/Runnable;

.field private onStartPlayMusic:Z

.field private sameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation
.end field

.field private similarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation
.end field

.field private timeDispatcher:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_LOOP:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mPlayModel:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isQuitting:Z

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->timeDispatcher:Ljava/util/Timer;

    .line 150
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 151
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 160
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->hasGetExtendInfo:Z

    .line 165
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->onStartPlayMusic:Z

    .line 625
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->SessionCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 1138
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->notifyRunnable:Ljava/lang/Runnable;

    .line 1145
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$blVvfk8wcMU_k_9sHjlzrPWwxIo;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$blVvfk8wcMU_k_9sHjlzrPWwxIo;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->notifyCancelRunnable:Ljava/lang/Runnable;

    .line 1435
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$4;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mChildContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;J)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->seek(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateExtras(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mDuration:I

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;I)I
    .locals 0

    .line 91
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mDuration:I

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->contentPlayToSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 91
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mLastControlCode:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0

    .line 91
    sput p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mLastControlCode:I

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->createThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private contentPlayToSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
    .locals 2

    .line 1446
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "-1"

    .line 1448
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setId(Ljava/lang/String;)V

    const-string p1, ""

    .line 1449
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setAlbum(Ljava/lang/String;)V

    goto :goto_0

    .line 1451
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setId(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1453
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setAlbum(Ljava/lang/String;)V

    .line 1455
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setArtist(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private createThrowable(Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1

    .line 450
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private handleContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 6

    .line 360
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getDefaultPlayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setIsReverse(Z)V

    .line 361
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->contentPlayToSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->updateForPlaying(ZLcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getRequestType()Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MusicService"

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStartCommand"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "handleContentPlay contentPlay "

    .line 367
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "create"

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->startMainActivity(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    goto :goto_1

    :cond_2
    const-string v1, "control"

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/App;->isMainActivityInForeground()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 377
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->startMainActivity(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    goto :goto_1

    :cond_3
    const-string p1, "requestType is null"

    .line 381
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPlayMode()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSpeedValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateExtras(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateMetadata(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    return-void
.end method

.method private isFromNotify(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1429
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "FromNotify"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method static synthetic lambda$null$4(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MusicService"

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onStartCommand$6(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate, throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MusicService"

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "MusicService"

    const-string v1, "intent is null, return"

    .line 593
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 596
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    .line 597
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "renderData"

    .line 599
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 602
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renderData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseIntent"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "traceId"

    .line 604
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "asrLogId"

    .line 605
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "commandId"

    .line 606
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const-string v5, "sessionID"

    .line 607
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 608
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSessionId:I

    .line 609
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->registerTts(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 611
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setTTSIsOver(Z)V

    const/4 p1, 0x1

    .line 612
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setOperation(I)V

    .line 613
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->resetPageParameter()V

    const-string p1, "FromAGIS"

    .line 614
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setCurrentTraceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {v0, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setAguiParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method private processCmd(Ljava/lang/String;)V
    .locals 11

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmdJsonStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processCmd"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 460
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getContentPlay()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    const-string v0, "similarRecList"

    .line 468
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 470
    const-class v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v3

    const/4 v0, 0x0

    :goto_0
    const-string v5, "moreEditionList"

    .line 478
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 479
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 480
    const-class v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    const-string v6, "sameAlbumList"

    .line 487
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 488
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 489
    const-class v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;

    invoke-static {v6, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move-object v6, v3

    :goto_2
    const-string v7, "sollectRecList"

    .line 496
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 497
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 498
    const-class v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;

    invoke-static {v7, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_8

    .line 506
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->hasGetExtendInfo:Z

    .line 508
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->similarList:Ljava/util/List;

    .line 509
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz p1, :cond_4

    .line 510
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->similarList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSimilarRecList(Ljava/util/List;)V

    .line 513
    :cond_4
    iput-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->moreEditionList:Ljava/util/List;

    .line 514
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz p1, :cond_5

    .line 515
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->moreEditionList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setMoreEditionList(Ljava/util/List;)V

    .line 518
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz p1, :cond_6

    .line 519
    iput-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sameList:Ljava/util/List;

    .line 520
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sameList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSameAlbumList(Ljava/util/List;)V

    .line 523
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz p1, :cond_7

    .line 524
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->selectList:Ljava/util/List;

    .line 525
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->selectList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSollectRecList(Ljava/util/List;)V

    .line 528
    :cond_7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "updateExtend"

    .line 529
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 530
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_13

    .line 531
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_8
    const-string v0, "collect"

    .line 534
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "playMode"

    .line 535
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "speedValue"

    .line 536
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "toast"

    .line 537
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "soundQuality"

    .line 538
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 542
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/logger/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v4, :cond_9

    move-object v10, v5

    goto :goto_3

    :cond_9
    move-object v10, v3

    .line 546
    :goto_3
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object p1, v5

    goto :goto_4

    .line 549
    :cond_a
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v3, :cond_b

    .line 550
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSoundQuality(Ljava/lang/String;)V

    :cond_b
    :goto_4
    if-eqz v0, :cond_d

    .line 555
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v3, :cond_c

    .line 556
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setCollect(Z)V

    :cond_c
    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v9

    move-object v7, v10

    move-object v8, p1

    .line 558
    invoke-direct/range {v3 .. v8}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateExtras(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCmd  collected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 561
    :cond_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 562
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v3, :cond_e

    .line 563
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setPlayMode(Ljava/lang/String;)V

    .line 564
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSpeedValue()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v5, v1

    move-object v7, v10

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateExtras(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    if-nez v0, :cond_f

    .line 567
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_f
    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v9

    move-object v7, v10

    move-object v8, p1

    .line 569
    invoke-direct/range {v3 .. v8}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateExtras(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_10
    :goto_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 574
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v3, :cond_11

    .line 575
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0, v9}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSpeedValue(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPlayMode()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v7, v9

    move-object v8, v10

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateExtras(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    if-nez v0, :cond_12

    .line 579
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_12
    move-object v4, v0

    move-object v3, p0

    move-object v5, v1

    move-object v6, v9

    move-object v7, v10

    move-object v8, p1

    .line 581
    invoke-direct/range {v3 .. v8}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateExtras(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 586
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicService"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_6
    return-void
.end method

.method private refreshPlayStatus(I)V
    .locals 5

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mPlayModel:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->getIndex()I

    move-result v1

    const-string v2, "playModel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 187
    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sendStateUpdateBrocast(I)V

    :cond_0
    return-void
.end method

.method private requestMiGuUrlByID(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/rich/czlylibary/bean/MusicinfoResult;",
            ">;"
        }
    .end annotation

    .line 388
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$2WZikJPWw9kvKbqJMBXZ0rknt94;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$2WZikJPWw9kvKbqJMBXZ0rknt94;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method

.method private seek(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getDuration()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 762
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_1

    .line 763
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcSeekTo(J)V

    goto :goto_0

    .line 766
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeekTo error, pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicService"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendMetaUpdateBrocast(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 4
    .param p1    # Landroid/support/v4/media/MediaMetadataCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MusicService"

    if-nez p1, :cond_0

    const-string p1, "sendMetaUpdateBrocast metadata NULL!"

    .line 1024
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1028
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "sendMetaUpdateBrocast descriptionCompat NULL!"

    .line 1030
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1034
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alibaba.ailabs.genie.music.meta.update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "Title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1036
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1037
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "IconUri"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "sendMetaUpdateBrocast descriptionCompat"

    .line 1040
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendStateUpdateBrocast(I)V
    .locals 2

    .line 1050
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.music.state.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 1051
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "MusicService"

    const-string v0, "sendStateUpdateBrocast"

    .line 1057
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSongToMusicPlayer(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 4

    const/4 v0, 0x0

    .line 972
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mIsException:Z

    const-string v0, "MusicService"

    if-nez p1, :cond_0

    const-string p1, "setSongToMusicPlayer, song is NULL"

    .line 974
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 977
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSongToMusicPlayer, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "setSongToMusicPlayer, song url is NULL"

    .line 979
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 983
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;-><init>()V

    .line 984
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;-><init>()V

    .line 986
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->setAudioUrl(Ljava/lang/String;)V

    .line 987
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "audioUrl"

    .line 988
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioAnchor"

    .line 989
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioExtBean()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->getAudioAnchor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioExt"

    .line 990
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "copyright"

    .line 991
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getCopyRight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioName"

    .line 992
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioAlbum"

    .line 993
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioId"

    .line 994
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioExtBean()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->getAudioId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioSource"

    .line 995
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioExtBean()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->getAudioSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "progress"

    .line 996
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioFormat"

    .line 997
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioExtBean()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->getAudioFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "position"

    .line 998
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audioImageUrl"

    .line 999
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "traceId"

    .line 1000
    sget-object v3, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sTraceId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "asrLogId"

    .line 1001
    sget-object v3, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sAsrLogId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "commandId"

    .line 1002
    sget-object v3, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->sCommandId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "agmcId"

    .line 1003
    iget v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSessionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->setExtraData(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->setAudioUrl(Ljava/lang/String;)V

    .line 1006
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_2

    .line 1007
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    const/16 v0, 0xbb8

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcSetFadeIn(IFF)V

    .line 1008
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcPlay(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1011
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private startMainActivity(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 3

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 231
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "startMainActivity contentPlay "

    .line 233
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "itemType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private unInit()V
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const-string v0, "\u51c6\u5907\u9000\u51fa!"

    .line 853
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;)V

    const-string v0, "unInit"

    .line 854
    invoke-static {v0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getGlobalSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 856
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 857
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcStop()V

    .line 858
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcCallbackImpl:Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;

    .line 859
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcRelease()V

    .line 860
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 863
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 864
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 865
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    if-eqz v0, :cond_1

    .line 866
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->stop()V

    .line 867
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mOnTaskListenerImpl:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OnTaskListenerImpl;

    .line 869
    :cond_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 870
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mControlRecevier:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;

    invoke-virtual {v0, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 871
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mShutdownRecevier:Lcom/alibaba/ailabs/genie/musicplayer/receiver/ShutdownBroadcastReceiver;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 872
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mOtherReceiver:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 874
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v3, :cond_2

    .line 875
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mBindBroadcastReceiver:Lcom/alibaba/ailabs/genie/musicplayer/receiver/UserBindBroadCastReceiver;

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 879
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->timeDispatcher:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 880
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 881
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->timeDispatcher:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 883
    :cond_3
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_4

    .line 884
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 885
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->pause(Z)V

    .line 889
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    if-eqz v0, :cond_5

    .line 890
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->cancelAll()V

    const-string v0, "MusicService"

    const-string v3, "cancelPlayingNotify"

    .line 891
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->cancelPlayingNotify()V

    .line 893
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->release()V

    .line 896
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_6

    .line 897
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 899
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 901
    :goto_0
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setCurrentSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 902
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->getInstace()Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->setScreenAlwaysOn(Z)V

    .line 903
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mChildContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 905
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$nBuRTemFens-iphK0UgDKnGMFvk;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$nBuRTemFens-iphK0UgDKnGMFvk;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateExtras(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1416
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 1417
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playModel"

    .line 1418
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "isFavorite"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "speedValue"

    .line 1420
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "toast"

    .line 1421
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "soundQuality"

    .line 1422
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private updateMetadata(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 1

    .line 1061
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->contentPlayToMetadata(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 1062
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1064
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sendMetaUpdateBrocast(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_0
    return-void
.end method

.method private updateNotify()V
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->notifyCancelRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->notifyRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1155
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->notifyRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public directStop()V
    .locals 2

    .line 1130
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_0

    .line 1131
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcStop()V

    :cond_0
    const-string v0, "MusicService"

    const-string v1, "directStop mNotify cancelAll---2"

    .line 1133
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->cancelAll()V

    const-string v1, "directStop \u76f4\u63a5\u505c\u6b62 "

    .line 1135
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 962
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_0

    .line 963
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcGetDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProgress()I
    .locals 3

    const/4 v0, 0x0

    .line 949
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v1, :cond_0

    .line 950
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcGetCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v0

    return v1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 956
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicService"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected init()V
    .locals 9

    .line 772
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->init()V

    .line 773
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 774
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    .line 775
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 776
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v2, "MusicService"

    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 777
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->SessionCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 778
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 779
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 780
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    .line 781
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 783
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 784
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 786
    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mControlRecevier:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;

    .line 787
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mControlRecevier:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$ControlReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.alibaba.ailabs.genie.musicplayer.cmd"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 789
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mOtherReceiver:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;

    .line 790
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mOtherReceiver:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 792
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/receiver/ShutdownBroadcastReceiver;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/receiver/ShutdownBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mShutdownRecevier:Lcom/alibaba/ailabs/genie/musicplayer/receiver/ShutdownBroadcastReceiver;

    .line 793
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mShutdownRecevier:Lcom/alibaba/ailabs/genie/musicplayer/receiver/ShutdownBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 794
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mShutdownRecevier:Lcom/alibaba/ailabs/genie/musicplayer/receiver/ShutdownBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.alibaba.ailabs.genie.rtc.intent.action.ACTION_MUSIC_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 796
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/receiver/UserBindBroadCastReceiver;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/receiver/UserBindBroadCastReceiver;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mBindBroadcastReceiver:Lcom/alibaba/ailabs/genie/musicplayer/receiver/UserBindBroadCastReceiver;

    .line 797
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    .line 798
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mBindBroadcastReceiver:Lcom/alibaba/ailabs/genie/musicplayer/receiver/UserBindBroadCastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 802
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    .line 803
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    const-string v0, "notify 24 setup"

    .line 804
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    const-string v0, "notify normal setup"

    .line 807
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;)V

    .line 810
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->timeDispatcher:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 811
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->timeDispatcher:Ljava/util/Timer;

    .line 812
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->timeDispatcher:Ljava/util/Timer;

    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$TickTimerTask;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    const-string v0, "registerContentObserver"

    .line 815
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.alibaba.ailabs.childmode.provider/childMode"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mChildContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 818
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    .line 819
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OnTaskListenerImpl;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OnTaskListenerImpl;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mOnTaskListenerImpl:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OnTaskListenerImpl;

    .line 820
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mOnTaskListenerImpl:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OnTaskListenerImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->setSceneInfo(Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;)V

    .line 821
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->start()V

    return-void
.end method

.method public synthetic lambda$new$10$MusicService()V
    .locals 2

    .line 1146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mIsClickPreOrNext:Z

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->cancelAll()V

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mIsClickPreOrNext:Z

    return-void
.end method

.method public synthetic lambda$null$3$MusicService(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;Lcom/rich/czlylibary/bean/MusicinfoResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 328
    invoke-virtual {p2}, Lcom/rich/czlylibary/bean/MusicinfoResult;->getMusicInfo()Lcom/rich/czlylibary/bean/MusicInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 330
    invoke-virtual {p2}, Lcom/rich/czlylibary/bean/MusicInfo;->getLrcUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setLyricUrl(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Lcom/rich/czlylibary/bean/MusicInfo;->getListenUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setAudioUrl(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->setSongToMusicPlayer(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onStartCommand$2$MusicService(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->convertRenderData(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onStartCommand$5$MusicService(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 291
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->hasGetExtendInfo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->similarList:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 297
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sameList:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->selectList:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 305
    :cond_2
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->moreEditionList:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->similarList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSimilarRecList(Ljava/util/List;)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sameList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSameAlbumList(Ljava/util/List;)V

    .line 312
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->selectList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSollectRecList(Ljava/util/List;)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->moreEditionList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setMoreEditionList(Ljava/util/List;)V

    .line 316
    :cond_4
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->hasGetExtendInfo:Z

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->similarList:Ljava/util/List;

    .line 318
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sameList:Ljava/util/List;

    .line 319
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->selectList:Ljava/util/List;

    .line 320
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->moreEditionList:Ljava/util/List;

    .line 321
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    .line 322
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isCM()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "migumusic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 323
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemRawId()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->requestMiGuUrlByID(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 325
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$RmJYX3ZIZMHQ1dsBAV8CgV5I7z8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$RmJYX3ZIZMHQ1dsBAV8CgV5I7z8;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$SnEocHr_hlftt-Tb4zUjKrZgApE;->INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$SnEocHr_hlftt-Tb4zUjKrZgApE;

    .line 326
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    .line 342
    :cond_5
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->handleContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    goto :goto_1

    :cond_6
    const-string p1, "onStartCommand"

    const-string v0, "contentPlay is null"

    .line 344
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$requestMiGuUrlByID$7$MusicService(Ljava/lang/String;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 393
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    const-string p2, "M"

    invoke-static {p1, p2, v0}, Lcom/rich/czlylibary/sdk/HttpClientManager;->findMusicInfoByid(Ljava/lang/String;Ljava/lang/String;Lcom/rich/czlylibary/sdk/ResultCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$stop$9$MusicService()V
    .locals 2

    const-string v0, "MusicService"

    const-string v1, "cancelAll"

    .line 1123
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mNotify:Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->cancelAll()V

    .line 1125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->stopSelf()V

    return-void
.end method

.method public synthetic lambda$unInit$8$MusicService()V
    .locals 4

    .line 907
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 909
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/music"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 913
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 915
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 919
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 198
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->onCreate()V

    .line 199
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->setNeedReport(Z)V

    const-string v0, "MusicService"

    const-string v1, "onCreate--2"

    .line 200
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ServiceOnCreate"

    const-string v2, "openApp by voice"

    .line 201
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mInstance:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    if-nez v1, :cond_0

    .line 203
    sput-object p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mInstance:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    .line 204
    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "utdid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Music Service onCreate"

    .line 206
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->init()V

    goto :goto_0

    :cond_0
    const-string v1, "onCreate second"

    .line 209
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isCM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/migu/MiGuUtils;->requestToken()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "onDestroy"

    .line 175
    invoke-static {v0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->unInit()V

    const/4 v1, 0x1

    .line 177
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->sendStateUpdateBrocast(I)V

    .line 178
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->onDestroy()V

    const/4 v1, 0x0

    .line 179
    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mInstance:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const-string v1, "onDestroy-end"

    .line 180
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string p1, "MusicService"

    const-string p2, "BrowserRoot onGetRoot-----------"

    .line 219
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance p1, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string p2, "1234"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 226
    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->detach()V

    return-void
.end method

.method protected onPlayerEvent(ILandroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerEvent callBackEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->translateStatus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1200
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateNotify()V

    .line 1201
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->refreshPlayStatus(I)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz p2, :cond_3

    const-string p1, "extra"

    .line 1210
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buf:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1204
    :pswitch_3
    iput v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mDuration:I

    .line 1205
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateNotify()V

    .line 1206
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->refreshPlayStatus(I)V

    goto/16 :goto_1

    .line 1172
    :pswitch_4
    iput v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mDuration:I

    .line 1173
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->onStartPlayMusic:Z

    if-nez p1, :cond_0

    .line 1174
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->refreshPlayStatus(I)V

    .line 1176
    :cond_0
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->onStartPlayMusic:Z

    .line 1178
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->notifyRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1179
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->notifyCancelRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->notifyCancelRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1183
    :pswitch_5
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->setMusicStarted(J)V

    .line 1184
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateNotify()V

    .line 1185
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->refreshPlayStatus(I)V

    .line 1186
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcGetDuration()J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mDuration:I

    .line 1187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "duration:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mDuration:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mDuration:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPlayerEvent"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1190
    iget p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mDuration:I

    const-string v1, "duration"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1191
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getProgress()I

    move-result p2

    const-string v1, "position"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1192
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p2, :cond_1

    const-string v1, "sessionEvent"

    .line 1193
    invoke-virtual {p2, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1195
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->getInstace()Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ScreenWakeManager;->setScreenAlwaysOn(Z)V

    .line 1196
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateMetadata(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    goto :goto_1

    :pswitch_6
    const/16 p2, 0xc

    if-ne p1, p2, :cond_2

    const/4 p1, -0x2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 1167
    :goto_0
    sput p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->Operation:I

    .line 1168
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->updateNotify()V

    .line 1169
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->refreshPlayStatus(I)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string p2, "onStartCommand"

    const-string p3, "MusicService"

    .line 242
    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 244
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_7

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.cmd"

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p3, -0x1

    const-string v0, "Control"

    .line 248
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    .line 249
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isFromNotify(Landroid/content/Intent;)Z

    move-result p1

    const-string p3, "FromNotify"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_1

    :cond_1
    const-string v1, "com.alibaba.ailabs.genie.musicplayer.pay"

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "state"

    .line 255
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand ,   status = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_1

    :cond_2
    const-string v1, "android.intent.action.VIEW"

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_3

    const-string p1, "commandIntent is NULL, return"

    .line 261
    invoke-static {p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    if-nez v0, :cond_4

    .line 265
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    :cond_4
    const-string v0, "agmcCallbackId"

    .line 267
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-nez v1, :cond_5

    .line 269
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->initPlayer(Ljava/lang/String;)V

    :cond_5
    const-string v0, "renderType"

    .line 271
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renderType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "default"

    .line 274
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p2, "renderData"

    .line 276
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 277
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cmdVal:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->processCmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 p3, 0x1

    .line 280
    iput-boolean p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->onStartPlayMusic:Z

    .line 281
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->parseIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 282
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "renderData:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "onStartCommand render "

    .line 284
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->authorThinkHwaDebug(Ljava/lang/String;)V

    .line 285
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$HbXPKUGCPXdET59BOmWiXyY4fqI;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$HbXPKUGCPXdET59BOmWiXyY4fqI;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 286
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 287
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$t_ULxwFUyixLQsZQOFuUQ7uTOTM;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$t_ULxwFUyixLQsZQOFuUQ7uTOTM;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    sget-object p3, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$05P5SBov2xOvq2bKqlhqwxOnpA8;->INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$05P5SBov2xOvq2bKqlhqwxOnpA8;

    .line 288
    invoke-virtual {p1, p2, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_1

    :cond_7
    const-string p1, "action is null"

    .line 353
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return v2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->onTaskRemoved(Landroid/content/Intent;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public pause(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, -0x2

    .line 1095
    sput p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->Operation:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1097
    sput p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->Operation:I

    .line 1099
    :goto_0
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p1, :cond_1

    .line 1100
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcPause()V

    goto :goto_1

    :cond_1
    const-string p1, "MusicService"

    const-string v0, "pause, mPlayerManager is NULL"

    .line 1102
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public resume()V
    .locals 1

    .line 1108
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_0

    .line 1109
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcResume()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    .line 1115
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isQuitting:Z

    const-string v0, "MusicService"

    const-string v1, "stop"

    .line 1116
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->clearAllActivity()V

    .line 1118
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_0

    .line 1119
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcStop()V

    .line 1121
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getGlobalSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1122
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$dkZFmF2x_9XHc5oNRJzmhkh_BQ8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$dkZFmF2x_9XHc5oNRJzmhkh_BQ8;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 1072
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-nez v0, :cond_0

    const-string v0, "MusicService"

    const-string v1, "toggle,mPlayerManager is null"

    .line 1073
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1076
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1077
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->pause(Z)V

    goto :goto_0

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->mContentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    if-eqz v0, :cond_2

    .line 1080
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->resume()V

    goto :goto_0

    .line 1084
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->resume()V

    :cond_3
    :goto_0
    return-void
.end method
