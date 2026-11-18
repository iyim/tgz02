.class public Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;
.super Ljava/lang/Object;
.source "MediaPlayStateController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;,
        Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;,
        Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SessionChangeListener;,
        Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;
    }
.end annotation


# static fields
.field private static final A2DP_MBS_TAG:Ljava/lang/String; = "A2dpMediaBrowserService"

.field private static final BLUETOOTH_MEDIA_TAG:Ljava/lang/String; = "BluetoothMediaBrowserService"

.field private static final TAG:Ljava/lang/String; = "MediaPlayState"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field private mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    .line 29
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mListener:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;Landroid/media/MediaMetadata;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->getSongInfo(Landroid/media/MediaMetadata;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;Landroid/media/session/MediaController;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->setCurrentMediaController(Landroid/media/session/MediaController;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private displayMetaDataAlbum(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "MediaPlayState"

    const-string v1, "mMetaData is null"

    .line 120
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "android.media.metadata.TITLE"

    .line 124
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "android.media.metadata.ALBUM"

    .line 125
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private displayMetaDataArtist(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "MediaPlayState"

    const-string v1, "mMetaData is null"

    .line 133
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "android.media.metadata.ARTIST"

    .line 137
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private displayMetaDataTime(Landroid/media/MediaMetadata;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "MediaPlayState"

    const-string v2, "mMetaData is null"

    .line 158
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    const-string v2, "android.media.metadata.DURATION"

    .line 162
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method private displayMetaDataTitle(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "MediaPlayState"

    const-string v1, "mMetaData is null"

    .line 146
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "android.media.metadata.TITLE"

    .line 150
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static getMediaControllerTag(Landroid/media/session/MediaController;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "android.media.session.MediaController"

    .line 233
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTag"

    const/4 v2, 0x0

    .line 234
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 235
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "MediaPlayState"

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object p0, p1

    :catch_1
    :goto_0
    return-object p0
.end method

.method private getSongInfo(Landroid/media/MediaMetadata;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "MediaPlayState"

    const-string v0, "mMetaData is null"

    .line 105
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 108
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;-><init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->displayMetaDataTitle(Landroid/media/MediaMetadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;->title:Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->displayMetaDataAlbum(Landroid/media/MediaMetadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;->album:Ljava/lang/String;

    .line 112
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->displayMetaDataArtist(Landroid/media/MediaMetadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;->artist:Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->displayMetaDataTime(Landroid/media/MediaMetadata;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;->time:J

    return-object v0
.end method

.method private initMediaController()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$MediaControllerCallback;-><init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$1;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mContext:Landroid/content/Context;

    const-string v2, "media_session"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 54
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SessionChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SessionChangeListener;-><init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$1;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_3

    .line 57
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v2, v1, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Num Sessions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaPlayState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 60
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    const-string v3, ""

    .line 64
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->getMediaControllerTag(Landroid/media/session/MediaController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "A2dpMediaBrowserService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->getMediaControllerTag(Landroid/media/session/MediaController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothMediaBrowserService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->setCurrentMediaController(Landroid/media/session/MediaController;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setCurrentMediaController(Landroid/media/session/MediaController;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 82
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    const-string v2, "MediaPlayState"

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v0, " Setting MediaController "

    .line 84
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " Changing MediaController "

    .line 90
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1, v1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const-string v0, " Clearing MediaController "

    .line 97
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 99
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    :cond_0
    return-void
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " STATE:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaPlayState"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public pause()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    :cond_0
    return-void
.end method

.method public register(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mListener:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->initMediaController()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public skipToNext()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    :cond_0
    return-void
.end method

.method public skipToPrevious()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    :cond_0
    return-void
.end method

.method public unregister(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;)V
    .locals 1

    const-string p1, "MediaPlayState"

    const-string v0, "unregister"

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->setCurrentMediaController(Landroid/media/session/MediaController;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mListener:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

    if-eqz v0, :cond_0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->mListener:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;

    :cond_0
    return-void
.end method
