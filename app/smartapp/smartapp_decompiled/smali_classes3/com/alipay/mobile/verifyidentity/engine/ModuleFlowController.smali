.class public Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;
.super Ljava/lang/Object;
.source "ModuleFlowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;,
        Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;,
        Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ModuleFlowController"

.field private static b:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
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

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 5

    const/4 v0, 0x0

    .line 201
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->showProgressDialog(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    move-result-object v1

    .line 203
    new-instance v2, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v2}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcStartTime:J

    .line 205
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v1

    .line 206
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    if-eqz v1, :cond_0

    return-object v1

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 227
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 228
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string v3, "catch exception when getNextStep"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-boolean v2, p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-nez v2, :cond_1

    .line 230
    new-instance v2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string v3, "2002"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    :cond_1
    return-object v0

    :catch_1
    move-exception v1

    .line 213
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 214
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string v3, "catch rpcexception"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-boolean v2, p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-eqz v2, :cond_2

    return-object v0

    .line 218
    :cond_2
    new-instance v2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string v3, "2003"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2, p3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 221
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 222
    :cond_3
    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;",
            ")",
            "Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 303
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->showProgressDialog(Ljava/lang/String;)V

    .line 304
    new-instance v2, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;

    invoke-direct {v2}, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;-><init>()V

    .line 305
    iput-object p1, v2, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->sceneId:Ljava/lang/String;

    .line 306
    iput-object p2, v2, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->bizId:Ljava/lang/String;

    .line 307
    iput-object p3, v2, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->bizRequestData:Ljava/lang/String;

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 309
    invoke-direct {p0, p5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "isSupportFP"

    .line 311
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getIsSupportFP()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "fpSecdata"

    .line 312
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdata()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    invoke-direct {p0, p5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "bioMetaInfo"

    .line 315
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p3, "bp"

    .line 317
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBirdNestInfo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iput-object p4, v2, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->externParams:Ljava/util/Map;

    .line 319
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBaseEnvInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v2, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->envData:Ljava/lang/String;

    .line 320
    sget-object p3, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string p4, "\u83b7\u53d6\u73af\u5883\u53c2\u6570\u8017\u65f6\uff1a"

    invoke-static {p3, p4, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 321
    new-instance p1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p5, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcStartTime:J

    .line 323
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p1

    .line 324
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 342
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 343
    sget-object p2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string p3, "catch exception when initVerifyTask"

    invoke-static {p2, p3, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    iget-boolean p2, p5, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-nez p2, :cond_2

    .line 345
    new-instance p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string p3, "2002"

    invoke-direct {p2, p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p1

    invoke-virtual {p1, v0, v0, p2, p5}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    :cond_2
    return-object v1

    :catch_1
    move-exception p1

    .line 328
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 329
    sget-object p2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string p3, "catch rpcexception"

    invoke-static {p2, p3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-boolean p2, p5, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-eqz p2, :cond_3

    return-object v1

    .line 333
    :cond_3
    new-instance p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string p3, "2003"

    invoke-direct {p2, p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p3

    invoke-virtual {p3, v0, v0, p2, p5}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 336
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v1

    .line 337
    :cond_4
    throw p1
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;",
            "Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "proVerifyResult"

    const-string v1, "proVerifyType"

    .line 626
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 628
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 629
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p1

    const-string v3, "success"

    .line 630
    iget-boolean v4, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sysErrCode"

    .line 631
    iget-object v4, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->sysErrCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "verifySuccess"

    .line 632
    iget-boolean v4, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "verifyCode"

    .line 633
    iget-object v4, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "finish"

    .line 634
    iget-boolean v4, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finish:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "finishCode"

    .line 635
    iget-object v4, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nextStep"

    .line 636
    iget-object p1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 639
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 640
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 643
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v2
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 607
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string v1, "need do more"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, "nextVerifyId"

    .line 609
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nextModuleData"

    .line 610
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 611
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 613
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 614
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addSlientModule(Lcom/alibaba/fastjson/JSONObject;)V

    .line 616
    :cond_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 3

    .line 562
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->useBird:Ljava/lang/String;

    const-string v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 565
    iput-boolean v0, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    .line 567
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u4e00\u4e2a\u6a21\u5757["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    if-eqz p2, :cond_1

    const-string p2, " \u8981 "

    goto :goto_1

    :cond_1
    const-string p2, "\u4e0d"

    :goto_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u8d70\u52a8\u6001\u7248\u4ea7\u54c1"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    sget-object p2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "envType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->envType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object p2

    iget-object p1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->envType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->setEnvType(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 622
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->cleanByVerifyId(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 4

    .line 578
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    iget-object v1, p4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 579
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 581
    :try_start_0
    iget-object v2, p4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishParams:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 583
    invoke-direct {p0, v2}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 584
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 587
    sget-object v3, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 591
    invoke-virtual {p3}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p3

    .line 594
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_1
    :goto_1
    iget-object p3, p4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 597
    iget-object p3, p4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v2, "verifyCode"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 600
    iget-object p3, p4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 601
    iget-object p3, p4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->bizResponseData:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setBizResponseData(Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0, p5}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 603
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 11

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcEndTime:J

    .line 361
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "processRpcResult verifyId: %s, token: %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 362
    invoke-static {v0, p3}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    if-eqz p3, :cond_5

    .line 364
    iget-boolean v0, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    if-eqz v0, :cond_5

    .line 365
    iget v0, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->expireTime:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    sput-wide v5, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->TASK_TIMEOUT:J

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    iget-object p2, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    goto :goto_0

    .line 373
    :cond_0
    iget-object p2, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 374
    iget-object p1, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    .line 376
    :cond_1
    iget-object p2, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    .line 378
    :cond_2
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string v2, "processRpcResult updateVidToken verifyId: %s, token: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-boolean v0, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finish:Z

    if-eqz v0, :cond_4

    .line 381
    iget-boolean v0, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-eqz v0, :cond_3

    .line 384
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->vi_server_wrong_data:I

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->vi_confirm:I

    .line 385
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 384
    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 393
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void

    .line 396
    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 397
    iget-object v8, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    iget-object v9, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 398
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    iget-wide v1, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcEndTime:J

    const-string v3, "processRpcResult\u8017\u65f6\uff1a"

    invoke-static {v0, v3, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 399
    iget-object p3, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void

    .line 404
    :cond_5
    invoke-direct {p0, p1, p2, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 10

    .line 519
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v7, 0x1

    aput-object p2, v4, v7

    const-string v8, "handleModuleExecuteResult verifyId: %s, token: %s"

    .line 520
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-static {v2, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_7

    .line 522
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 529
    :cond_0
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v4

    const/4 v2, 0x0

    .line 530
    invoke-static {v2, v4, v7}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Z)V

    .line 531
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " execute finishCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    iget-object v2, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 535
    iget-object v1, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    move-object v2, v1

    move-object v1, p1

    goto :goto_1

    :cond_1
    move-object v1, p1

    move-object v2, p2

    goto :goto_1

    .line 539
    :cond_2
    iget-object v1, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 540
    iget-object v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 542
    :goto_0
    iget-object v1, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;

    move-object v2, v1

    move-object v1, v0

    .line 544
    :goto_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v2, v3, v7

    const-string v5, "handleModuleExecuteResult updateVidToken verifyId: %s, token: %s"

    .line 545
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-static {v0, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-boolean v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finish:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v3, p4

    move-object v5, p5

    .line 547
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    goto :goto_3

    .line 549
    :cond_4
    invoke-direct {p0, v4, p5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    const-string v0, ""

    if-eqz v4, :cond_5

    .line 551
    iget-object v3, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v3, v0

    :goto_2
    if-eqz v4, :cond_6

    iget-object v0, v4, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    :cond_6
    move-object v4, v0

    .line 552
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->isLocalTrans()Z

    move-result v5

    const/4 v7, 0x0

    move-object v0, p0

    move-object v6, p5

    .line 551
    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Z)V

    :goto_3
    return-void

    .line 524
    :cond_7
    :goto_4
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string v3, "ModuleExecuteResult is null or ResultEnum is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string v3, "2002"

    invoke-direct {v2, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2, p5}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 8

    if-eqz p4, :cond_1

    .line 497
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 498
    iget-object v0, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->sceneId:Ljava/lang/String;

    const-string v1, "sceneId"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v0, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizId:Ljava/lang/String;

    const-string v1, "bizId"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "module"

    .line 500
    invoke-interface {v7, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getCompatibleVerifyType()Ljava/lang/String;

    move-result-object p3

    const-string v0, "verifyType"

    invoke-interface {v7, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-boolean p3, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    if-eqz p3, :cond_0

    const-string p3, "Y"

    goto :goto_0

    :cond_0
    const-string p3, "N"

    :goto_0
    const-string v0, "useBird"

    invoke-interface {v7, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-wide v0, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcEndTime:J

    iget-wide v2, p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcStartTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v0, "interval"

    invoke-interface {v7, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskCreateTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v1, "UC-MobileIC-160316-1"

    const-string v2, "20000666"

    const-string v3, "mddychqcp"

    move-object v4, p2

    move-object v5, p1

    .line 504
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 506
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getTaskCreateTime()J

    move-result-wide p2

    const-string p4, "\u9996\u4e2aModule\u5524\u8d77\u603b\u8017\u65f6\uff1a"

    invoke-static {p1, p4, p2, p3}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 18

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 456
    new-instance v6, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;

    move-object/from16 v9, p0

    invoke-direct {v6, v9, v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;J)V

    const-string v0, "isLocalTrans"

    .line 476
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "module"

    move-object/from16 v3, p3

    .line 478
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-boolean v2, v8, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    if-eqz v2, :cond_0

    const-string v2, "Y"

    goto :goto_0

    :cond_0
    const-string v2, "N"

    :goto_0
    const-string v4, "useBird"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v10, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const/16 v16, 0x0

    const-string v11, "UC-MobileIC-150810-2"

    const-string v12, "20000666"

    const-string v13, "mdhxhscp"

    move-object/from16 v14, p2

    move-object/from16 v15, p1

    move-object/from16 v17, v1

    invoke-static/range {v10 .. v17}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    .line 482
    :goto_1
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->startModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 486
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->taskPrepareEndTime:J

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 261
    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Z)V
    .locals 8

    .line 277
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextStep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 280
    invoke-virtual {p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v0, "isLocalTrans"

    .line 283
    invoke-virtual {v6, v0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p5, "isFirstModule"

    .line 284
    invoke-virtual {v6, p5, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    .line 285
    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    goto :goto_0

    .line 288
    :cond_1
    new-instance p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string p4, "2002"

    invoke-direct {p3, p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, p6}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z
    .locals 3

    .line 656
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isNeedFP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 661
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isNeedFP]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Ljava/util/HashMap;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;
    .locals 2

    .line 239
    new-instance v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    invoke-direct {v0}, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;-><init>()V

    .line 240
    iput-object p1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 241
    iput-object p2, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    .line 242
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "INIT"

    .line 243
    iput-object p1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "VERIFY_INIT"

    .line 245
    iput-object p1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 248
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 249
    invoke-direct {p0, p3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result v1

    .line 250
    invoke-direct {p0, p3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result p3

    .line 252
    invoke-static {v1, p3}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getEnvInfoWithExt(ZZ)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->data:Ljava/lang/String;

    .line 253
    sget-object p3, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string v1, "\u83b7\u53d6\u73af\u5883\u53c2\u6570\u8017\u65f6\uff1a"

    invoke-static {p3, v1, p1, p2}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 4

    .line 411
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    iget-object v1, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 412
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 414
    :try_start_0
    iget-object v2, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishParams:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 416
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 419
    sget-object v3, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    :goto_0
    iget-object v2, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 422
    iget-object v2, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v3, "verifyCode"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_1
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 425
    iget-object v1, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 426
    iget-object p3, p3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->bizResponseData:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setBizResponseData(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method

.method private b(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z
    .locals 3

    .line 667
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isNeedBio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 670
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 673
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isNeedBio]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 12

    .line 431
    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string v0, "2003"

    invoke-direct {v4, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 432
    iget-boolean v0, p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->a:Ljava/lang/String;

    const-string v1, "\u9700\u8981\u8fdb\u884c\u521d\u59cb\u5316\u5f02\u5e38\u63d0\u793a"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v6

    const/4 v7, 0x0

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->vi_network_unavailable:I

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(I)Ljava/lang/String;

    move-result-object v8

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$string;->vi_confirm:I

    .line 435
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$2;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    const/4 p1, 0x0

    const/4 v11, 0x0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, p1

    .line 434
    invoke-virtual/range {v5 .. v11}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4, p3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;
    .locals 2

    .line 51
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;-><init>()V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 58
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->b:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    return-object v0
.end method


# virtual methods
.method public startVerifyTask(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 5

    .line 168
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getExtParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 172
    :cond_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    :cond_1
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;

    invoke-direct {v0, p0, p1, v1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Ljava/util/Map;)V

    const-string v1, "verifyInitThread"

    .line 180
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->setName(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->start()V

    goto :goto_1

    .line 182
    :cond_2
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    const-string v1, "verifyDirectThread"

    .line 184
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->setName(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->start()V

    goto :goto_1

    .line 187
    :cond_3
    new-instance v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;-><init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    const-string v1, "VerifyThread"

    .line 188
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->setName(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->start()V

    .line 191
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->taskPrepareStartTime:J

    return-void
.end method
