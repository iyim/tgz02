.class public Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;
.super Lcom/alibaba/ailabs/geniesdk/client/AbstractClientCallBack;
.source "BluetoothsController.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final PAIR_FAIL:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "BluetoothsController"

.field private static gInstance:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;


# instance fields
.field private controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

.field private isProcess:Z

.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private managerApi:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;

.field private preState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AbstractClientCallBack;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->preState:I

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->isProcess:Z

    .line 42
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->mMainHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->mContext:Landroid/content/Context;

    .line 78
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->managerApi:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;

    .line 79
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->register(Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$OnPlayStateChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->playTTS(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;
    .locals 2

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->gInstance:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->gInstance:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->gInstance:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 73
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->gInstance:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    return-object p0
.end method

.method private playTTS(Ljava/lang/String;)V
    .locals 1

    .line 59
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;-><init>()V

    .line 60
    iput-object p1, v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, v0, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->isOpenMic:Z

    .line 62
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->playTts(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;)I

    return-void
.end method


# virtual methods
.method public closeDiscoverableTimeout(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->isProcess:Z

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->managerApi:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->turnOff()V

    if-eqz p1, :cond_0

    const-string p1, "\u84dd\u7259\u5df2\u65ad\u5f00"

    .line 97
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->playTTS(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public closeDiscoverableTimeoutEx(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->isProcess:Z

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->managerApi:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->turnOffEx()V

    if-eqz p1, :cond_0

    const-string p1, "\u84dd\u7259\u5df2\u65ad\u5f00"

    .line 109
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->playTTS(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isConnect()Z
    .locals 2

    .line 118
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getBluetoothStatus()Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;

    move-result-object v0

    .line 119
    iget v0, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNeedDisconnect()Z
    .locals 2

    .line 85
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x2

    .line 86
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onBlueStatusChange(I)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 210
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->isProcess:Z

    if-eqz p1, :cond_0

    const-string p1, "\u84dd\u7259\u914d\u5bf9\u6210\u529f"

    .line 211
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->playTTS(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->isProcess:Z

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController$SongInfo;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onNlpResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;
    .locals 7

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNlpResult commandDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    commandName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   commandParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothsController"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;-><init>()V

    const/4 v2, 0x0

    .line 142
    iput-boolean v2, v0, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z

    :try_start_0
    const-string v2, "Pause"

    .line 144
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 145
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->pause()V

    .line 146
    iput-boolean v3, v0, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z

    goto/16 :goto_0

    :cond_0
    const-string v2, "Play"

    .line 147
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->play()V

    .line 149
    iput-boolean v3, v0, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z

    goto/16 :goto_0

    :cond_1
    const-string v2, "Fastforward"

    .line 150
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "   time=  "

    const-string v5, "commandName = "

    const-string v6, "time"

    if-eqz v2, :cond_2

    .line 151
    :try_start_1
    iput-boolean v3, v0, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z

    .line 152
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 154
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    int-to-long v2, p2

    invoke-virtual {p3, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->seekTo(J)V

    .line 155
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "Fastbackword"

    .line 156
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    iput-boolean v3, v0, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z

    .line 158
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 160
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    neg-int v2, p2

    int-to-long v2, v2

    invoke-virtual {p3, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->seekTo(J)V

    .line 161
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "Next"

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 163
    iput-boolean v3, v0, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z

    .line 164
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->skipToNext()V

    goto :goto_0

    :cond_4
    const-string p1, "Previous"

    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 166
    iput-boolean v3, v0, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z

    .line 167
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->skipToPrevious()V

    goto :goto_0

    :cond_5
    const-string p1, "Exit"

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 169
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->stop()V

    .line 170
    iput-boolean v3, v0, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return-object v0
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 5

    .line 180
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->preState:I

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->preState:I

    .line 184
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;-><init>()V

    const/4 v1, 0x0

    .line 185
    iput v1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->type:I

    .line 186
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const/16 p1, 0x9

    .line 187
    iput p1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->status:I

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 189
    iput v1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->status:I

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-ne p1, v4, :cond_3

    const/16 p1, 0x8

    .line 191
    iput p1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->status:I

    :cond_3
    :goto_0
    const-string p1, "com.android.bluetooth"

    .line 193
    iput-object p1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->pkg:Ljava/lang/String;

    const-string p1, "bluetooth"

    .line 194
    iput-object p1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->audioSource:Ljava/lang/String;

    .line 195
    iput-object p1, v0, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;->source:Ljava/lang/String;

    .line 196
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p1

    const/16 v1, 0xc8

    invoke-virtual {p1, v1, v0, v4}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->controller:Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/MediaPlayStateController;->pause()V

    return-void
.end method

.method public setDiscoverableTimeout()V
    .locals 5

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->isProcess:Z

    .line 127
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getBluetoothStatus()Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;

    move-result-object v1

    .line 129
    iget v1, v1, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;->status:I

    if-ne v1, v0, :cond_0

    const-string v0, "\u84dd\u7259\u5df2\u5339\u914d\u6210\u529f"

    .line 130
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->playTTS(Ljava/lang/String;)V

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->managerApi:Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BTManagerApi;->turnOn()V

    const-string v0, "\u84dd\u7259\u914d\u5bf9\u5f00\u59cb"

    .line 134
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->playTTS(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
