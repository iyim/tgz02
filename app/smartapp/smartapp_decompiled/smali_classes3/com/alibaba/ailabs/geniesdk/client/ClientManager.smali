.class public Lcom/alibaba/ailabs/geniesdk/client/ClientManager;
.super Ljava/lang/Object;
.source "ClientManager.java"


# static fields
.field public static final ID_CHECK_USER_BIND:I = 0x2713

.field public static final ID_GET_MEDIA_POLICY:I = 0x2714

.field public static final ID_IS_FOREGROUND:I = 0x2711

.field public static final ID_ON_FOCUS_CHANGE:I = 0x2715

.field public static final ID_ON_NOTIFY_EVENT:I = 0x2717

.field public static final ID_SET_BACKGROUND_SERVICE:I = 0x2712

.field public static final ID_SET_WINDOW_TYPE:I = 0x2716

.field public static final KEY_ARG1:Ljava/lang/String; = "arg1"

.field public static final KEY_BIND:Ljava/lang/String; = "is_need_bind"

.field public static final KEY_BIND_TYPE:Ljava/lang/String; = "call_back_type"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final TAG:Ljava/lang/String; = "ClientManager"


# instance fields
.field private mAsrSvr:Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;

.field private mContext:Landroid/content/Context;

.field private mIAliTVASR:Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;-><init>(Lcom/alibaba/ailabs/geniesdk/client/ClientManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->mIAliTVASR:Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->mMainHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;-><init>(Lcom/alibaba/ailabs/geniesdk/client/ClientManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->mAsrSvr:Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;

    return-void
.end method

.method private canPlayTts()Z
    .locals 4

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    .line 223
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method


# virtual methods
.method public clientToAsr(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2712

    const-string v2, "service = "

    const-string v3, "packageName"

    const-string v4, "data"

    const-string v5, "ClientManager"

    if-eq p1, v1, :cond_5

    const/16 v1, 0x2713

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2716

    if-eq p1, v1, :cond_1

    goto/16 :goto_1

    .line 188
    :cond_1
    :try_start_0
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 189
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->setWindowType(Ljava/lang/String;Z)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWindowType: packageName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isMemberType()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 200
    :goto_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "is_need_bind"

    .line 201
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_4

    .line 203
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->bindUser()V

    .line 205
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID_CHECK_USER_BIND  isNeedBind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p2, v0

    goto :goto_2

    .line 179
    :cond_5
    :try_start_2
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 180
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 182
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->setBackgroundService(Ljava/lang/String;Z)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setbackground: packageName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object p2, v0

    goto :goto_3

    .line 210
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2
.end method

.method public getASRListenner(Ljava/lang/String;)Lcom/yunos/tv/alitvasr/IAliTVASRCallback;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getASRManager()Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->mAsrSvr:Lcom/alibaba/ailabs/geniesdk/client/AsrSvrEx;

    return-object v0
.end method

.method public getIAliTVASR()Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->mIAliTVASR:Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;

    return-object v0
.end method

.method public isScreenOn()Z
    .locals 1

    .line 61
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isScreenOn()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public playTTSWithCallback(Ljava/lang/String;Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;)Z
    .locals 2

    .line 235
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->canPlayTts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/geniesdk/client/ClientManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager$1;-><init>(Lcom/alibaba/ailabs/geniesdk/client/ClientManager;Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;Ljava/lang/String;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerCallback(Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;)V
    .locals 1

    .line 81
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerCallback(Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setASRMode(Ljava/lang/String;I)V
    .locals 3

    .line 124
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setAsrMode(Ljava/lang/String;I)V

    const-string v0, "ClientManager"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsrMode: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mode="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBackgroundService(Ljava/lang/String;Z)V
    .locals 1

    .line 155
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setBackgroundService(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setEnable(Ljava/lang/String;Z)V
    .locals 3

    .line 101
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setEnable(Ljava/lang/String;Z)V

    const-string v0, "ClientManager"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",enable="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setResultMode(Ljava/lang/String;I)V
    .locals 3

    .line 112
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setResultMode(Ljava/lang/String;I)V

    const-string v0, "ClientManager"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResultMode: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mode="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setServerMode(Ljava/lang/String;I)V
    .locals 1

    .line 163
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setAsrMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setWindowType(Ljava/lang/String;Z)V
    .locals 1

    .line 146
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setWindowType(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showASRUI(Ljava/lang/String;Z)V
    .locals 3

    .line 136
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->showAsrUI(Ljava/lang/String;Z)V

    const-string v0, "ClientManager"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showASRUI: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",showUI="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopTTS()V
    .locals 2

    .line 259
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->canPlayTts()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->stopVoice(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterCallback(Ljava/lang/String;)V
    .locals 3

    .line 89
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->unregisterCallback(Ljava/lang/String;Z)V

    const-string v0, "ClientManager"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCallback: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
