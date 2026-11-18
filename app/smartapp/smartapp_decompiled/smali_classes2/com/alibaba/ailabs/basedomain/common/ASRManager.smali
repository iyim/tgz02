.class public Lcom/alibaba/ailabs/basedomain/common/ASRManager;
.super Ljava/lang/Object;
.source "ASRManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;,
        Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;,
        Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;,
        Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;
    }
.end annotation


# static fields
.field private static final BUNDLE_NAME:Ljava/lang/String; = "com.alibaba.ailabs.basedomain"

.field private static final SECRET_KEY:Ljava/lang/String; = "488a7efa-40a2-4f4c-a0de-0cc95851ad9e"

.field public static final TAG:Ljava/lang/String; = "ASRManager"

.field private static final TONE_DEFAULT:Ljava/lang/String; = "ailabfgyy"

.field private static mAppContextData:Lorg/json/JSONObject;

.field private static volatile mInstance:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private ASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field private mASRTtsListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

.field private mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

.field private mCommandClientHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurAlarmId:Ljava/lang/String;

.field private mCurPlayActionData:Ljava/lang/String;

.field private mCurrentRegisterSessionId:I

.field private mOnAsrWakeUpListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;

.field private mSecretKey:Ljava/lang/String;

.field private mSelectListData:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

.field private mTtsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mLock:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCommandClientHashMap:Ljava/util/HashMap;

    const-string v0, "488a7efa-40a2-4f4c-a0de-0cc95851ad9e"

    .line 44
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mSecretKey:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mTtsListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;-><init>(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->ASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    .line 542
    new-instance v0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager$3;-><init>(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mASRTtsListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

    .line 200
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->ASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setASRListenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    const-string v1, "com.alibaba.ailabs.basedomain"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setPackageName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mOnAsrWakeUpListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Ljava/util/HashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCommandClientHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200()Lorg/json/JSONObject;
    .locals 1

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAppContextData:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mSecretKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mSelectListData:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCurPlayActionData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCurAlarmId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCurrentRegisterSessionId:I

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mTtsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static compatToneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTone tone code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v2, "ailabfgyy"

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "frxl"

    goto :goto_2

    :cond_2
    const-string v2, "ailabfgyy_nn"

    goto :goto_2

    :cond_3
    const-string v2, "xiaokubao_nn"

    .line 355
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compat ToneNumber() called with: tone res = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " voice_type = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;
    .locals 2

    .line 209
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mInstance:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mInstance:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    .line 213
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    sget-object p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mInstance:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 213
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getSystemModel()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "persist.sys.is.child.mode"

    .line 367
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "child"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ASRManager"

    const-string v2, "getSystemModel err"

    .line 372
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, "normal"

    return-object v0
.end method

.method public static getTTSURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 396
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 399
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ttsUrl need join, origin ttsurl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getTone()Ljava/lang/String;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mp3"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getTone()Ljava/lang/String;
    .locals 5

    const-string v0, "persist.tts.tone"

    .line 301
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ailabfgyy"

    const-string v3, "ASRManager"

    if-eqz v1, :cond_0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTone empty= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 307
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tempid"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-le v1, v4, :cond_1

    .line 312
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTone new= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 323
    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->compatToneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :catch_0
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTone old= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static jointTtsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 408
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jointTtsUrl, origin tts url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getTone()Ljava/lang/String;

    move-result-object v0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mp3"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideGenieBar()V
    .locals 3

    const-string v0, "ASRManager"

    const-string v1, "ASRManager hideGenieBar"

    .line 387
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "hideGenieBar exception, e"

    .line 391
    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public playTts(Ljava/lang/String;Z)I
    .locals 12

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playTts() called with: ttsText = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], needFeedback = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 517
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p1

    move v8, p2

    invoke-static/range {v3 .. v11}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZZZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "playTts err"

    .line 521
    invoke-static {v1, p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v2
.end method

.method public registerCommandListener(Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 439
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
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

    const-string v3, "ASRManager"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCommandClientHashMap:Ljava/util/HashMap;

    new-instance v9, Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;-><init>(Lcom/alibaba/ailabs/basedomain/common/ASRManager;Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerOnAsrWakeUpListener(Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;)V
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerOnAsrWakeUpListener onAsrWakeUpListener 22:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mOnAsrWakeUpListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;

    .line 244
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setIsWindowType(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 245
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setBackgroundService(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method public registerTTSStatusCallback(ILcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;)V
    .locals 2

    .line 268
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

    const-string v1, "ASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCurrentRegisterSessionId:I

    if-ne p1, v0, :cond_0

    .line 270
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_0
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCurrentRegisterSessionId:I

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "registerTTSStatusCallback new one"

    .line 275
    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mASRTtsListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;

    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->registerTtsCallback(Landroid/content/Context;ILcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "ASRManager"

    const-string v1, "release but do nothing"

    .line 472
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setAlarmState(Z)V
    .locals 2

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/common/ASRManager$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager$2;-><init>(Lcom/alibaba/ailabs/basedomain/common/ASRManager;Z)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnGetMediaPolicyListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnGetMediaPolicyListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ASRManager"

    const-string v1, "setAlarmState e"

    .line 227
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setCurPlayActionData(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;
    .locals 2

    .line 232
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCurPlayActionData:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCurAlarmId:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurPlayActionData() called with: curPlayActionData = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], curAlarmId = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ASRManager"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSelectListData(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V
    .locals 2

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectListData secretKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mSecretKey:Ljava/lang/String;

    .line 424
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mSelectListData:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    return-void
.end method

.method public showAlarmToast()Z
    .locals 5

    const-string v0, "ASRManager"

    const/4 v1, 0x0

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getMediaPolicy(Landroid/content/Context;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAlarmToast 2, :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    const/4 v2, 0x0

    :goto_0
    const-string v4, "showAlarmToast e"

    .line 261
    invoke-static {v0, v4, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAlarmToast, :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public showGenieBar()V
    .locals 3

    const-string v0, "ASRManager"

    const-string v1, "ASRManager showGenieBar"

    .line 378
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "showGenieBar exception, e"

    .line 382
    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public stopTTS(I)V
    .locals 3

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopTTS sessionId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->stopTTS(Landroid/content/Context;I)V

    .line 487
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;

    .line 489
    invoke-interface {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;->onTtsEnd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Stop tts err"

    .line 493
    invoke-static {v1, v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public syncAllAlarmDataRequest()V
    .locals 6

    const-string v0, "ASRManager"

    .line 527
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 529
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 530
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "requestType"

    const-string v5, "alarmClockData"

    .line 531
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "localVersion"

    const-string v5, "1.0"

    .line 532
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "requestArray"

    .line 534
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "ASRManger syncAllAlarmDataRequest add json err"

    .line 536
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncAllAlarmDataRequest payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x3f0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->AlarmStatusSync(Landroid/content/Context;ILjava/lang/String;)V

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

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterCommandListener commandList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCommandClientHashMap\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ASRManager"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCommandClientHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 453
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 454
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;

    .line 455
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;->hostFlag:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removed clientInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "After unregisterCommandListener  mCommandClientHashMap\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCommandClientHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterOnAsrWakeUpListener()V
    .locals 2

    const-string v0, "ASRManager"

    const-string v1, "unregisterOnAsrWakeUpListener "

    .line 249
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mOnAsrWakeUpListener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setIsWindowType(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 252
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setBackgroundService(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method public unregisterTTSStatusCallback(ILcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;)V
    .locals 4

    .line 281
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

    const-string v2, "ASRManager"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCurrentRegisterSessionId:I

    if-ne p1, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mTtsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->unregisterTtsCallback(Landroid/content/Context;I)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterTTSStatusCallback for asr sessionId"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 290
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mCurrentRegisterSessionId:I

    :cond_0
    return-void
.end method

.method public updateAppContext(Lorg/json/JSONObject;)V
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAppContext :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sput-object p1, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->mAppContextData:Lorg/json/JSONObject;

    return-void
.end method

.method public updateCompusData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 429
    :try_start_0
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateCorpusData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ASRManager"

    const-string v0, "updateCompusData error, e"

    .line 431
    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
