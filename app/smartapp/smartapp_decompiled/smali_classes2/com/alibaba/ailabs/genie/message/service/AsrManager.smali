.class public Lcom/alibaba/ailabs/genie/message/service/AsrManager;
.super Ljava/lang/Object;
.source "AsrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;,
        Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;,
        Lcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AsrManager"

.field private static volatile gASRManager:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

.field private static mAppContextData:Lorg/json/JSONObject;


# instance fields
.field private mASRClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mASRTtsListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

.field private mCommandClientHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentRegisterSessionId:I

.field private final mOnASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field private mOnCurASRCommandListener:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSecretKey:Ljava/lang/String;

.field private mSelectListData:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

.field private mTtsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mTtsListeners:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;-><init>(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mOnASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    .line 318
    new-instance v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager$2;-><init>(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mASRTtsListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCommandClientHashMap:Ljava/util/HashMap;

    const-string v0, ""

    .line 419
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mSecretKey:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->initASRClient()V

    return-void
.end method

.method static synthetic access$000()Lorg/json/JSONObject;
    .locals 1

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mAppContextData:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mSecretKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mSelectListData:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/util/HashMap;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCommandClientHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/message/service/AsrManager;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mASRClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCurrentRegisterSessionId:I

    return p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mTtsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/service/AsrManager;
    .locals 1

    .line 68
    sget-object v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->gASRManager:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    if-nez v0, :cond_0

    const-string v0, "gASRManager is null"

    .line 69
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;)V

    .line 70
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->init(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    .line 72
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->gASRManager:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    return-object p0
.end method

.method public static init(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/service/AsrManager;
    .locals 2

    .line 41
    sget-object v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->gASRManager:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->gASRManager:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->gASRManager:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 48
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->gASRManager:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    return-object p0
.end method

.method private releaseASRClient()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mASRClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mASRClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method


# virtual methods
.method public getMtopToken()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnCurASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 100
    const-class v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    monitor-enter v0

    .line 101
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOnCurASRCommandListener mOnCurASRCommandListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mOnCurASRCommandListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mOnCurASRCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUsrId()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideGenieBar()V
    .locals 3

    const-string v0, "AsrManager"

    const-string v1, "AsrManager hideGenieBar"

    .line 446
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "hideGenieBar exception, e"

    .line 450
    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public initASRClient()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mASRClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;-><init>(Landroid/content/Context;)V

    const-string v1, "com.alibaba.ailabs.genie.messagecenter"

    .line 85
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setPackageName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 86
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mOnASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 88
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->init(Landroid/content/Context;Z)V

    .line 89
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setASRListenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setASRResultMode(I)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 92
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mASRClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    goto :goto_0

    :cond_0
    const-string v0, "initAlitvSRManager: has been inited"

    .line 94
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public playTTS(Ljava/lang/String;)V
    .locals 7

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    return-void
.end method

.method public registerCommandListener(Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 391
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCommandListener command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hostFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AsrManager"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCommandClientHashMap:Ljava/util/HashMap;

    new-instance v9, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;-><init>(Lcom/alibaba/ailabs/genie/message/service/AsrManager;Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerTTSStatusCallback(ILcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;)V
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTTSStatusCallback sessionId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsrManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCurrentRegisterSessionId:I

    if-ne p1, v0, :cond_0

    .line 294
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_0
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCurrentRegisterSessionId:I

    .line 297
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "registerTTSStatusCallback new one"

    .line 299
    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mASRTtsListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->registerTtsCallback(Landroid/content/Context;ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 52
    sget-object v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->gASRManager:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->releaseASRClient()V

    :cond_0
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->gASRManager:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnCurASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)V
    .locals 2

    .line 109
    const-class v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 111
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mOnCurASRCommandListener:Ljava/lang/ref/WeakReference;

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnCurASRCommandListener mOnCurASRCommandListener, this = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOnCurASRCommandListener == null;this = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mOnCurASRCommandListener:Ljava/lang/ref/WeakReference;

    .line 117
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSelectListData(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V
    .locals 2

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectListData secretKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsrManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mSecretKey:Ljava/lang/String;

    .line 425
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mSelectListData:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    return-void
.end method

.method public showGenieBar()V
    .locals 3

    const-string v0, "AsrManager"

    const-string v1, "AsrManager showGenieBar"

    .line 437
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "showGenieBar exception, e"

    .line 441
    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public stopTTS(I)V
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopTTS sessionId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsrManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->stopTTS(Landroid/content/Context;I)V

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;

    .line 275
    invoke-interface {v2, p1}, Lcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;->onTtsEnd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Stop tts err"

    .line 279
    invoke-static {v1, v0, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public unregisterCommandListener(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterCommandListener commandList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCommandClientHashMap\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AsrManager"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCommandClientHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 402
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 403
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;

    .line 404
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->hostFlag:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 406
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removed clientInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "After unregisterCommandListener  mCommandClientHashMap\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterTTSStatusCallback(ILcom/alibaba/ailabs/genie/message/service/AsrManager$OnTtsStatusListener;)V
    .locals 4

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterTTSStatusCallback sessionId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AsrManager"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCurrentRegisterSessionId:I

    if-ne p1, v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->unregisterTtsCallback(Landroid/content/Context;I)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterTTSStatusCallback for asr sessionId"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 311
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->mCurrentRegisterSessionId:I

    :cond_0
    return-void
.end method

.method public updateCompusData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 430
    :try_start_0
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateCorpusData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AsrManager"

    const-string v0, "updateCompusData error, e"

    .line 432
    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
