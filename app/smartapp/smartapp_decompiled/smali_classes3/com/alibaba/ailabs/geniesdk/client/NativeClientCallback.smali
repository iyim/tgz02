.class public Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;
.super Ljava/lang/Object;
.source "NativeClientCallback.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/client/IClientCallback;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final BIND_USER_TYPE:I = 0x65

.field private static final KEY_BIND_TYPE:Ljava/lang/String; = "call_back_type"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_IS_FOREGROUND:Ljava/lang/String; = "is_foreground"

.field private static final SHOW_QRCODE_TYPE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "NativeClientCallback"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mRemoteClientCallback:Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->init(Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->init(Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/ipc/ICommu;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallbackEx;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallbackEx;-><init>(Lcom/alibaba/ailabs/ipc/ICommu;)V

    .line 54
    invoke-direct {p0, v0, p2}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->init(Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/yunos/tv/alitvasr/IAliTVASRCallback;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;-><init>(Lcom/yunos/tv/alitvasr/IAliTVASRCallback;Ljava/lang/String;Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/yunos/tv/alitvasr/IAliTVASRCallback;Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;-><init>(Lcom/yunos/tv/alitvasr/IAliTVASRCallback;)V

    .line 38
    invoke-direct {p0, v0, p2}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->init(Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/yunos/tv/alitvasr/IAliTVASRCallback;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance p3, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;

    invoke-direct {p3, p1}, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;-><init>(Lcom/yunos/tv/alitvasr/IAliTVASRCallback;)V

    .line 48
    invoke-direct {p0, p3, p2}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->init(Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mRemoteClientCallback:Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;

    .line 223
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;->asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private destroy()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mRemoteClientCallback:Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;

    .line 279
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", client callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeClientCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mPackageName:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mRemoteClientCallback:Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;

    return-void
.end method

.method private handleASRCommand(Landroid/os/Bundle;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;
    .locals 1

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mRemoteClientCallback:Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;

    .line 236
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;->handleASRCommand(Landroid/os/Bundle;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private init(Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mRemoteClientCallback:Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;

    .line 60
    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mPackageName:Ljava/lang/String;

    .line 63
    :try_start_0
    invoke-interface {p1}, Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 65
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private sendAsrStatus(Ljava/lang/String;I)V
    .locals 3

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mRemoteClientCallback:Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;

    .line 248
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "status"

    .line 249
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p2, :cond_0

    const-string p1, "volume"

    .line 251
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    :cond_0
    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;->onASRStatusUpdate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mPackageName:Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 296
    invoke-virtual {v1, v0, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->unregisterCallback(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mRemoteClientCallback:Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;

    .line 158
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;->getAppContextData()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaPolicy()I
    .locals 2

    const/16 v0, 0x2714

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "data"

    .line 177
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;
    .locals 3

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 114
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 116
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 122
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 124
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p4, :cond_2

    .line 130
    :try_start_2
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p3

    .line 132
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object p3, v1

    :goto_2
    :try_start_3
    const-string p4, "nlg_result"

    .line 138
    invoke-virtual {v0, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "nlu_result"

    .line 139
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "dm_result"

    .line 140
    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 142
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    :goto_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "asr"

    .line 146
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "nlp"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->handleASRCommand(Landroid/os/Bundle;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;

    move-result-object p1

    return-object p1
.end method

.method public isBinderAlive()Z
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->mRemoteClientCallback:Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 265
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public isForegroundApp()Z
    .locals 2

    const/16 v0, 0x2711

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "is_foreground"

    .line 169
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onASRStatus(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const-string p1, "volume_update"

    goto :goto_0

    :cond_1
    const-string p1, "stop_recognizing"

    goto :goto_0

    :cond_2
    const-string p1, "start_recognizing"

    goto :goto_0

    :cond_3
    const-string p1, "stop_recording"

    goto :goto_0

    :cond_4
    const-string p1, "start_recording"

    .line 95
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->sendAsrStatus(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onBindStatus(Z)V
    .locals 3

    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "call_back_type"

    const/16 v2, 0x65

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data"

    .line 203
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x2713

    .line 205
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 2

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 184
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x2715

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public onNotifyEvent(IILjava/lang/String;)V
    .locals 2

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 192
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "arg1"

    .line 193
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "data"

    .line 194
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2717

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public onShowQrCode(Ljava/lang/String;)V
    .locals 3

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "call_back_type"

    const/16 v2, 0x64

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data"

    .line 212
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2713

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public onStream(Ljava/lang/String;Z)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;
    .locals 2

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "asr"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string p2, "finish"

    .line 102
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;->handleASRCommand(Landroid/os/Bundle;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;

    move-result-object p1

    return-object p1
.end method
