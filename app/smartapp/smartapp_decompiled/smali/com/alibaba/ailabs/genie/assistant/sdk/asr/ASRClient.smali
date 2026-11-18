.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "ASRClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;


# static fields
.field public static final ASR_MODE_DEFAULT:I = 0x0

.field public static final ASR_MODE_INPUT_TEXT:I = 0x1

.field private static final ASR_STATUS_ERROR:Ljava/lang/String; = "error"

.field private static final ASR_STATUS_START_RECOGNIZING:Ljava/lang/String; = "start_recognizing"

.field private static final ASR_STATUS_START_RECORDING:Ljava/lang/String; = "start_recording"

.field private static final ASR_STATUS_STOP_RECOGNIZING:Ljava/lang/String; = "stop_recognizing"

.field private static final ASR_STATUS_STOP_RECORDING:Ljava/lang/String; = "stop_recording"

.field private static final ASR_STATUS_VOLUME_UPDATE:Ljava/lang/String; = "volume_update"

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_ACTION_PARAM:Ljava/lang/String; = "action_param"

.field public static final KEY_DM_RESULT:Ljava/lang/String; = "dm_result"

.field public static final KEY_NLG_RESULT:Ljava/lang/String; = "nlg_result"

.field public static final TAG:Ljava/lang/String; = "AliTVASRManager"


# instance fields
.field mASRCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

.field private mCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInit:Z

.field private mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

.field private mOnFocusChangeListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGetMediaPolicyListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnNluResultListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNluResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnNotifyEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mOnUserBindListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnUserBindListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    .line 53
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnNotifyEvent:Ljava/lang/ref/WeakReference;

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mHasInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnNotifyEvent:Ljava/lang/ref/WeakReference;

    .line 55
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mHasInit:Z

    return-void
.end method

.method private checkValid()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mHasInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getCtx()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clientToAsr(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 712
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getCtx()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->clientToAsr(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCtx()Landroid/content/Context;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mCtx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNlgJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    const-string v0, "nlp"

    .line 303
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "nlg_result"

    .line 307
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/JSONUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getOnASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mASRCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getOnNluResultListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNluResultListener;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnNluResultListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNluResultListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getOnUserBindListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnUserBindListener;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnUserBindListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnUserBindListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private isMediaHost(Ljava/lang/String;)Z
    .locals 2

    .line 405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "Pause"

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Stop"

    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Screen"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Play"

    .line 411
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Select"

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Continue"

    .line 413
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private onNLPResult(Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 5

    .line 316
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const-string v1, "nlp"

    .line 317
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNLPResult->nlpResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AliTVASRManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "dm_result"

    .line 322
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/JSONUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "action"

    .line 326
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Action"

    .line 330
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 332
    invoke-direct {p0, v2, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->processAction(Landroid/net/Uri;Lorg/json/JSONObject;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 337
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, ""

    .line 344
    invoke-interface {v1, v0, v0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private processAction(Landroid/net/Uri;Lorg/json/JSONObject;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 8

    .line 350
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    .line 351
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v1

    .line 352
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAction->dmResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AliTVASRManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 355
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processAction->actionUri ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " host:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " path:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " param:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "action_param"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v4, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient$1;->$SwitchMap$com$alibaba$ailabs$genie$assistant$sdk$asr$OnASRCommandListener$ASRListenerType:[I

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    const-string v6, "Multimedia"

    if-eq v2, v4, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    .line 394
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v5, v3

    .line 395
    :cond_0
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-interface {v1, v3, v5, p1, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v2, "air_conditioner"

    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "air_cube"

    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "air_cleaner"

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "water_heater"

    .line 386
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 387
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v5, v3

    .line 388
    :cond_3
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-interface {v1, v3, v5, p1, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v2, "Signal"

    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 374
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "/Tvchannel/Switch"

    .line 375
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 376
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v5, v3

    .line 377
    :cond_6
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-interface {v1, v3, v5, p1, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_7
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Music"

    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Audio"

    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Video"

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 365
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->isMediaHost(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 366
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v5, v3

    .line 367
    :cond_9
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-interface {v1, v3, v5, p1, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object v0

    :cond_a
    :goto_0
    return-object v0
.end method

.method private triggerAll()Z
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getASRManager()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->registerClient(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;Landroid/os/IBinder;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 76
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerAll: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", client info ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    .line 77
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", asrManager= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AliTVASRManager"

    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "id"

    .line 586
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "data"

    packed-switch v1, :pswitch_data_0

    .line 662
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v1

    goto/16 :goto_1

    .line 648
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnNotifyEvent()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v3, "type"

    .line 650
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "arg1"

    .line 651
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 653
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 655
    invoke-interface {v1, v3, v4, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;->onNotifyEvent(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 638
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnFocusChangeListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnFocusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 641
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 643
    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnFocusChangeListener;->onFocusChange(Z)V

    goto/16 :goto_2

    .line 624
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnGetMediaPolicyListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 626
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;->onGetMediaPolicy()I

    move-result p1

    .line 628
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 629
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    move-object v0, v1

    goto :goto_2

    .line 609
    :pswitch_4
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnUserBindListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnUserBindListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string v3, "call_back_type"

    .line 611
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 613
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnUserBindListener;->onQrCodeCallBack(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    .line 615
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnUserBindListener;->onUserBind(Z)V

    goto :goto_2

    .line 597
    :pswitch_5
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnNluResultListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNluResultListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 599
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNluResultListener;->onNluResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 601
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 602
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/CommonUtils;->isForegroundBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_1

    .line 666
    :try_start_2
    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 668
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    return-object v0

    :catch_1
    move-exception p1

    .line 676
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkBindUser(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnUserBindListener;)Z
    .locals 1

    .line 720
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnUserBindListener:Ljava/lang/ref/WeakReference;

    .line 722
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x2713

    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->clientToAsr(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "is_need_bind"

    .line 724
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getASRManager()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;
    .locals 2

    .line 275
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mHasInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getCtx()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 285
    :cond_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    move-result-object v0

    return-object v0
.end method

.method getAppContextData()Ljava/lang/String;
    .locals 3

    .line 564
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->checkValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "AliTVASRManager"

    const-string v2, "getAppContextData: no valid"

    .line 565
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    :try_start_0
    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;-><init>()V

    .line 572
    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V

    .line 573
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->toString(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 575
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public getOnFocusChangeListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnFocusChangeListener;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnFocusChangeListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnFocusChangeListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOnGetMediaPolicyListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnGetMediaPolicyListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOnNotifyEvent()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnNotifyEvent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method handleASRCommand(Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 6

    .line 683
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    .line 686
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->checkValid()Z

    move-result v1

    const-string v2, "AliTVASRManager"

    if-nez v1, :cond_0

    const-string p1, "handleASRCommand -> asrCommandBundle no valid"

    .line 687
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 694
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getResultMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "asr"

    .line 695
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "finish"

    .line 696
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "0"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    .line 695
    invoke-interface {v1, v3, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onASRResult(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 700
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->onNLPResult(Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_0
    move-object v0, p1

    .line 706
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleASRCommand process result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 1

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mCtx:Ljava/lang/ref/WeakReference;

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->setPackageName(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->setShowUI(Z)V

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mHasInit:Z

    .line 96
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->updateKey()V

    .line 98
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mContext:Landroid/content/Context;

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {p2, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p2

    .line 99
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p0, p1}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    .line 101
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->triggerAll()Z

    return-void
.end method

.method onASRStatusUpdate(Landroid/os/Bundle;)V
    .locals 5

    .line 531
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getOnASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v0

    const-string v1, "AliTVASRManager"

    if-nez v0, :cond_0

    const-string p1, "no onASRStatusUpdate listener"

    .line 534
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 537
    :cond_0
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_NULL:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    if-eqz p1, :cond_6

    const-string/jumbo v3, "status"

    .line 539
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 542
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "start_recording"

    .line 543
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 544
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECORD_START:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "stop_recording"

    .line 545
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECORD_END:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "start_recognizing"

    .line 547
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 548
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECOGNIZE_START:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "stop_recognizing"

    .line 549
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 550
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECOGNIZE_END:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "volume_update"

    .line 551
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 552
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_VOLUME_UPDATE:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    goto :goto_0

    :cond_5
    const-string v4, "error"

    .line 553
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 554
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_ERROR:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    .line 558
    :cond_6
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onASRStatusUpdate status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-interface {v0, v2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onASRStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 514
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->onASRStatusUpdate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getAppContextData()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 520
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 522
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->handleASRCommand(Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object p1

    .line 524
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->getReturnEx()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    .line 265
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->checkValid()Z

    move-result v0

    const-string v1, ", binder = "

    const-string v2, "AliTVASRManager"

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusChange: has expiration, serverName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusChange: serverName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->triggerAll()Z

    return-void
.end method

.method public release()V
    .locals 4

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getASRManager()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->unregisterClient(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "release key =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", init = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mHasInit:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", self = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AliTVASRManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mContext:Landroid/content/Context;

    const-string v2, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    .line 121
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mHasInit:Z

    return-void
.end method

.method public setASRListenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mListenerType:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    return-object p0
.end method

.method public setASRResultMode(I)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->setResultMode(I)V

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getASRManager()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->setResultMode(Ljava/lang/String;I)Z

    :cond_0
    return-object p0
.end method

.method public setASRServerMode(I)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->setServerMode(I)V

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getASRManager()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->setServerMode(Ljava/lang/String;I)Z

    :cond_0
    return-object p0
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 1

    if-eqz p1, :cond_0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->setClassName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setAliTVASREnable(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->setEnable(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getASRManager()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->setEnable(Ljava/lang/String;Z)Z

    :cond_0
    return-object p0
.end method

.method public setBackgroundService(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->setBackgroundService(Z)V

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getASRManager()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->setBackgroundService(Ljava/lang/String;Z)Z

    :cond_0
    return-object p0
.end method

.method public setIsWindowType(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->setWindowType(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getASRManager()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->setWindowType(Ljava/lang/String;Z)Z

    :cond_0
    return-object p0
.end method

.method public setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 1

    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mASRCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mASRCommandListener:Ljava/lang/ref/WeakReference;

    :cond_0
    return-object p0
.end method

.method public setOnFocusChangeListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnFocusChangeListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 1

    if-eqz p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnFocusChangeListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 481
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnFocusChangeListener:Ljava/lang/ref/WeakReference;

    :goto_0
    return-object p0
.end method

.method public setOnGetMediaPolicyListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 2

    if-eqz p1, :cond_0

    .line 463
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnGetMediaPolicyListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnGetMediaPolicyListener:Ljava/lang/ref/WeakReference;

    .line 467
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOnGetMediaPolicyListener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AliTVASRManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setOnNluResultListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNluResultListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 1

    .line 449
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnNluResultListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public setOnNotifyEvent(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnNotifyEvent;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 1

    if-eqz p1, :cond_0

    .line 495
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnNotifyEvent:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mOnNotifyEvent:Ljava/lang/ref/WeakReference;

    :goto_0
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->setPkg(Ljava/lang/String;)V

    return-object p0
.end method

.method public showASRUI(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->setShowUI(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->getASRManager()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->mAsrClientInfo:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->showASRUI(Ljava/lang/String;Z)Z

    :cond_0
    return-object p0
.end method
