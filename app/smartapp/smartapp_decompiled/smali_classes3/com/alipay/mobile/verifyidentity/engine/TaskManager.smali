.class public Lcom/alipay/mobile/verifyidentity/engine/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "TaskManager"

.field private static b:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

.field private e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    .line 60
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 245
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "code"

    .line 246
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    .line 247
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_0
    move-object v1, v0

    :catch_1
    :goto_0
    return-object v1
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 9

    .line 141
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string v1, "handleTask"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->RUN:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setTaskStatus(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;)V

    .line 144
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyId()Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Ljava/util/Map;

    move-result-object v8

    .line 147
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string v2, "UC-MobileIC-150810-1"

    const-string v3, "20000666"

    const-string v4, "mdhxhssdk"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->mTaskStartTime:J

    .line 149
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->startVerifyTask(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 2

    if-nez p3, :cond_0

    .line 162
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string p2, "notifyListenerResult task is null"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_0
    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getListener()Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 166
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string p2, "no listener to callback"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string v1, "notifyListenerResult"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/common/VerifyType;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 297
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$3;->$SwitchMap$com$alipay$mobile$verifyidentity$common$VerifyType:[I

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 302
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 299
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private b(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 325
    iget-object v1, p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->sceneId:Ljava/lang/String;

    const-string v2, "sceneId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v1, p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizId:Ljava/lang/String;

    const-string v2, "bizId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getCompatibleVerifyType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "verifyType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 2

    .line 179
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getListener()Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getListener()Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    move-result-object p1

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getBizName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    goto :goto_1

    .line 183
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getBizName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    goto :goto_1

    .line 180
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getBizName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;
    .locals 2

    .line 48
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    return-object v0
.end method


# virtual methods
.method public addSlientModule(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .line 338
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;-><init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;)V

    const-string v1, "nextVerifyId"

    .line 339
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextVerifyId:Ljava/lang/String;

    const-string v1, "nextModuleData"

    .line 340
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextModuleData:Ljava/lang/String;

    .line 341
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addSlientModule] nextVerifyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextVerifyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , nextModuleData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextModuleData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    return-void
.end method

.method public declared-synchronized addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 4

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->needCleanTasks()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->exit()V

    goto :goto_0

    .line 129
    :cond_0
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string v3, "no need to clean tasks"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->setCurrentTask(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 132
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string v3, "addTaskInstace\u8017\u65f6\uff1a"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 133
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 134
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->getInstance()Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearAllTasks()V
    .locals 4

    .line 102
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string v1, "clear all tasks"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string v1, "1003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "subCode"

    const-string v3, "101"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string v2, "clearAllTasks error: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 1

    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->d:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public needCleanTasks()Z
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    sget-object v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskStatus()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    move-result-object v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 311
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string v1, "no task on going"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 8

    monitor-enter p0

    if-nez p4, :cond_0

    .line 197
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string v1, "notifyVerifyTaskResult task is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->onTaskOver(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->canTaskContinue(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string v1, "\u4e0a\u4e0b\u6587\u4e2dtask\u4e0e\u5f53\u524dtask\u5339\u914d"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-virtual {p4, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setTaskStatus(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;)V

    .line 208
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getListener()Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->c:Landroid/os/Handler;

    new-instance v7, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;-><init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->setCurrentTask(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 234
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->onTaskOver(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 205
    :cond_3
    :try_start_2
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string p2, "\u4e0a\u4e0b\u6587\u4e2dtask\u4e0e\u5f53\u524dtask\u4e0d\u5339\u914d\uff0c\u672c\u6b21\u4efb\u52a1\u5df2\u8fc7\u671f\uff08\u4e4b\u524d\u5df2\u56de\u8c03\uff09\uff0c\u4e0d\u518d\u56de\u8c03"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTaskOver(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 10

    .line 71
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 73
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    const-string v2, "onTaskOver"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->b(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Ljava/util/Map;

    move-result-object v0

    .line 75
    invoke-direct {p0, p3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)Ljava/util/HashMap;

    move-result-object v9

    .line 76
    invoke-interface {v9, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 77
    sget-object p3, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object p3, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object p3, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a:Ljava/lang/String;

    invoke-static {v1, p3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "lastReportTime"

    invoke-interface {v9, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide p3, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->mTaskStartTime:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v3, "UC-MobileIC-150810-4"

    const-string v4, "20000666"

    const-string v5, "mdtchssdk"

    move-object v6, p2

    move-object v7, p1

    .line 80
    invoke-static/range {v2 .. v9}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    if-eqz p1, :cond_0

    .line 84
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object p2

    new-instance p3, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;

    invoke-direct {p3, p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;-><init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;)V

    const-string p1, "SlientModule"

    invoke-virtual {p2, p3, p1}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 92
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->e:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    const/4 p1, 0x1

    const-string p2, "sdkExit"

    .line 93
    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(ZLjava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->b()V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->getInstance()Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/log/crash/VerifyIdentityCrashHandler;->cancel()V

    return-void
.end method

.method public declared-synchronized preCheckTaskQueue(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/common/VerifyType;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    .line 284
    invoke-direct {p0, p1, v1, p2}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/common/VerifyType;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 286
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is already exist in currentTask"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCurrentTask(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    monitor-enter p0

    .line 266
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->d:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
