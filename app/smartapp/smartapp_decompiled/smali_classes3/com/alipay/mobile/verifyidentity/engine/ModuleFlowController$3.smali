.class Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;
.super Ljava/lang/Object;
.source "ModuleFlowController.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

.field final synthetic val$moduleStartTime:J


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;J)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iput-wide p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;->val$moduleStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onModuleExecuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    if-eqz v5, :cond_2

    .line 461
    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->isLocalTrans()Z

    move-result v1

    if-nez v1, :cond_2

    .line 462
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    invoke-static {v1, v5, v6}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$800(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Ljava/util/HashMap;

    move-result-object v14

    .line 463
    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getLogicModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "module"

    if-nez v1, :cond_0

    .line 464
    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getLogicModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p3

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    .line 466
    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :goto_0
    iget-boolean v1, v6, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    if-eqz v1, :cond_1

    const-string v1, "Y"

    goto :goto_1

    :cond_1
    const-string v1, "N"

    :goto_1
    const-string v2, "useBird"

    invoke-virtual {v14, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v7, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v8, v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;->val$moduleStartTime:J

    sub-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const-string v8, "UC-MobileIC-150810-3"

    const-string v9, "20000666"

    const-string v10, "mdtchscp"

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    .line 469
    invoke-static/range {v7 .. v14}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    .line 473
    :goto_2
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$900(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method
