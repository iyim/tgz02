.class public Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "MediaPlayerManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IMediaPlayer;


# static fields
.field private static final AGMC_METHOD_ABANDON_FOCUS:I = 0xe

.field private static final AGMC_METHOD_ADD_PLAYER_PARAM:I = 0x12

.field private static final AGMC_METHOD_GET_CURRENT_POSITION:I = 0x9

.field private static final AGMC_METHOD_GET_DURATION:I = 0xa

.field private static final AGMC_METHOD_GET_PLAYABLE_DURATION:I = 0xb

.field private static final AGMC_METHOD_HAS_FOCUS:I = 0xd

.field private static final AGMC_METHOD_IS_PLAYING:I = 0xc

.field private static final AGMC_METHOD_MUSIC_CONTROL:I = 0x11

.field private static final AGMC_METHOD_PAUSE:I = 0x6

.field private static final AGMC_METHOD_PLAY:I = 0x2

.field private static final AGMC_METHOD_REGISTER_CALLBACK:I = 0x0

.field private static final AGMC_METHOD_RESUME:I = 0x7

.field private static final AGMC_METHOD_SEEK_TO:I = 0x8

.field private static final AGMC_METHOD_SET_FADE_IN:I = 0x3

.field private static final AGMC_METHOD_SET_SPEED:I = 0x10

.field private static final AGMC_METHOD_SET_VOLUME:I = 0x4

.field protected static final AGMC_METHOD_STATUS_CALLBACK:I = 0xf

.field private static final AGMC_METHOD_STOP:I = 0x5

.field private static final AGMC_METHOD_UNREGISTER_CALLBACK:I = 0x1

.field public static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.agmc"

.field private static final TAG:Ljava/lang/String; = "AgmcPlayerClient"


# instance fields
.field private final mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

.field private mCallbackId:Ljava/lang/String;

.field private mCallbackKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;)V
    .locals 1

    const-string v0, ""

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;Ljava/lang/String;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

    .line 77
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackId:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p3, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callStringMethod(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.agmc"

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p1, v0, p0, v1}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "agmcRegisterCallback = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " key = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " callbackId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgmcPlayerClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;)Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public agmcAbandonFocus(Z)Z
    .locals 2

    const-string v0, ""

    .line 247
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "virtual"

    .line 248
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xe

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callBooleanMethod(ILandroid/os/Bundle;)Z

    move-result p1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "agmcAbandonFocus result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgmcPlayerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public agmcAddPlayerParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, ""

    .line 277
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    .line 278
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    .line 279
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "append"

    .line 280
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcAddPlayerParam key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " append = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgmcPlayerClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x12

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public agmcGetCurrentPosition()J
    .locals 3

    const-string v0, ""

    .line 190
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 192
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callStringMethod(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public agmcGetDuration()J
    .locals 3

    const-string v0, ""

    .line 203
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callStringMethod(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcGetDuration result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AgmcPlayerClient"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public agmcGetPlayableDuration()J
    .locals 3

    const-string v0, ""

    .line 216
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    .line 218
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callStringMethod(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcGetPlayableDuration result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AgmcPlayerClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public agmcHasFocus()Z
    .locals 3

    const-string v0, ""

    .line 238
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    .line 240
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callBooleanMethod(ILandroid/os/Bundle;)Z

    move-result v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcHasFocus result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AgmcPlayerClient"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public agmcIsPlaying()Z
    .locals 3

    const-string v0, ""

    .line 229
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    .line 231
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callBooleanMethod(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public agmcMusicControl(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    .line 267
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->ordinal()I

    move-result v1

    const-string v2, "controlType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "payload"

    .line 269
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcMusicControl key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->ordinal()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " payload = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgmcPlayerClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x11

    .line 272
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public agmcPause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, ""

    .line 166
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcPause key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AgmcPlayerClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    .line 169
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public agmcPlay(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->setAgmcItem(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;)V

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcPlay audioUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->getAudioUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " key = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AgmcPlayerClient"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public agmcRelease()V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "agmcUnregister key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgmcPlayerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    .line 119
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const-string v0, ""

    .line 120
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->release()V

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    const-string v1, "com.alibaba.ailabs.genie.assistant.agmc"

    .line 123
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    return-void
.end method

.method public agmcResume()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, ""

    .line 174
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcResume key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AgmcPlayerClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    .line 177
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public agmcSeekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 182
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcSeekTo msec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " key = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgmcPlayerClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public agmcSetFadeIn(IFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "range"

    .line 140
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "start"

    .line 141
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "end"

    .line 142
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 143
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcSetFadeIn range = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " start = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " end = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " key = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgmcPlayerClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public agmcSetSpeed(IF)V
    .locals 3

    const-string v0, ""

    .line 257
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "soundDelta"

    .line 258
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "speed"

    .line 259
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 260
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcSetSpeed key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " soundDelta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " speed = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgmcPlayerClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public agmcSetVolume(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcSetVolume volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " key = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AgmcPlayerClient"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public agmcStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, ""

    .line 158
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agmcStop key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallbackKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AgmcPlayerClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    .line 161
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->agmcGetCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->agmcGetDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isLooping()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->agmcIsPlaying()Z

    move-result v0

    return v0
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 90
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.agmc"

    .line 91
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "AgmcPlayerClient"

    if-nez p2, :cond_1

    const-string p2, "onServerStatusChange exception"

    .line 100
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->mCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->onException()V

    goto :goto_0

    :cond_1
    const-string p2, "onServerStatusChange restore"

    .line 103
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->agmcPause()V

    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public release()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public reset()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public seekTo(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->agmcSeekTo(J)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setDataSource(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setDataSource(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setLooping(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnBufferingUpdateListener(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnCompletionListener(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnErrorListener(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IMediaPlayer$OnErrorListener;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnInfoListener(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IMediaPlayer$OnInfoListener;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnPreparedListener(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setVolume(FF)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->agmcStop()V

    return-void
.end method
