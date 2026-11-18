.class public Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;
.super Ljava/lang/Object;
.source "VerifyIdentityEngine.java"


# static fields
.field private static final a:Ljava/lang/String; = "VerifyIdentityEngine"

.field private static b:Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->attachContext(Landroid/content/Context;)V

    .line 48
    new-instance v1, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;-><init>()V

    .line 49
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/ModuleMetaInfo;->getModules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->addDescription([Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(Landroid/content/Context;)V

    .line 58
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string v2, "\u521d\u59cb\u5316\u65e5\u5fd7"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_1
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string v2, "\u4e0d\u521d\u59cb\u5316\u65e5\u5fd7"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->init(Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;->isDebug(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->init(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->start()V

    .line 67
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/common/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 1

    .line 432
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;-><init>()V

    .line 433
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVerifyType(Lcom/alipay/mobile/verifyidentity/common/VerifyType;)V

    .line 434
    iput-object p2, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->sceneId:Ljava/lang/String;

    .line 435
    iput-object p3, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizId:Ljava/lang/String;

    .line 436
    iput-object p4, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizRequestData:Ljava/lang/String;

    .line 437
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setExtParams(Landroid/os/Bundle;)V

    .line 438
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVidListener(Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/common/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 1

    .line 454
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;-><init>()V

    .line 455
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVerifyType(Lcom/alipay/mobile/verifyidentity/common/VerifyType;)V

    .line 456
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVerifyId(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setBizName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setListener(Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V

    .line 460
    invoke-virtual {v0, p7}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVidListener(Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    .line 461
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setExtParams(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 8

    monitor-enter p0

    .line 183
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " add verifyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    .line 186
    new-instance p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string p6, "2000"

    invoke-direct {p4, p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-interface {p5, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    monitor-exit p0

    return-object v1

    .line 191
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v0, p1, v2}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->preCheckTaskQueue(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/common/VerifyType;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p5, :cond_2

    .line 193
    new-instance p4, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string p6, "2004"

    invoke-direct {p4, p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-interface {p5, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_2
    monitor-exit p0

    return-object v1

    .line 199
    :cond_3
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Lcom/alipay/mobile/verifyidentity/common/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object p1

    .line 200
    invoke-virtual {p1, p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVIMessageChannel(Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 10

    move-object v0, p1

    move-object v4, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    monitor-enter p0

    .line 296
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " add verifyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v8, :cond_0

    .line 299
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string v2, "2000"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p8

    .line 300
    invoke-interface {v8, p1, p2, v2, v1}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    .line 302
    monitor-exit p0

    return-object v0

    .line 313
    :cond_1
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const-string v5, ""

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Lcom/alipay/mobile/verifyidentity/common/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    move-object v1, p3

    .line 314
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setEntryModuleName(Ljava/lang/String;)V

    move-object v1, p4

    .line 315
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setEntryModuleData(Ljava/lang/String;)V

    move-object v1, p5

    .line 316
    iput-object v1, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizRequestData:Ljava/lang/String;

    .line 317
    invoke-virtual {v0, v9}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->setVIMessageChannel(Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V

    if-eqz v9, :cond_2

    .line 319
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string v2, "\u76f4\u63a5\u8d77\u6a21\u5757\u65f6\u82e5\u6709rpc\u4ee3\u7406\uff0c\u5219\u4e0d\u518d\u4e0a\u62a5\u73af\u5883\u53c2\u6570"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 320
    iput-boolean v1, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->needReportEnvInfo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;
    .locals 2

    const-class v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->b:Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->b:Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    .line 90
    :cond_0
    sget-object p0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->b:Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public exit()V
    .locals 2

    .line 466
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string v1, "EXIT VerifyIdentityEngine!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->exit()V

    return-void
.end method

.method public declared-synchronized fastVerifyWithInitRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "logonId"

    .line 215
    invoke-virtual {p5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sceneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bizId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bizRequestData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p6, :cond_0

    .line 219
    new-instance p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string p2, "2000"

    invoke-direct {p1, p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    const-string p2, ""

    const-string p3, ""

    .line 220
    invoke-interface {p6, p2, p3, p7, p1}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :cond_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Lcom/alipay/mobile/verifyidentity/common/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object p1

    .line 228
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fastVerifyWithModuleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 245
    :try_start_0
    invoke-direct/range {v1 .. v10}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 248
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fastVerifyWithModuleRequest] Failed to build the task by verifyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fastVerifyWithModuleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    .locals 0

    monitor-enter p0

    .line 270
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object p3

    if-nez p3, :cond_0

    .line 273
    sget-object p3, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "[fastVerifyWithModuleRequest] Failed to build the task by verifyId: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 277
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBioInfo()Ljava/lang/String;
    .locals 1

    .line 494
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertSN(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 477
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getInstalledCert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEnvInfoForMsp(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 486
    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getEnvInfoForMsp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSecDataForMsp()Ljava/lang/String;
    .locals 1

    .line 490
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getSecDataForMsp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 498
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public preInit(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "isNeedFP"

    .line 396
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 397
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 399
    :goto_0
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isNeedFP]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isNeedBio"

    .line 402
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 404
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 406
    :cond_2
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isNeedBio]:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 409
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getIsSupportFP()Ljava/lang/String;

    move-result-object p1

    const-string v1, "isSupportFP"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdata()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fpSecdata"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v3, :cond_4

    .line 414
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bioMetaInfo"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getEnvInfo()Ljava/lang/String;

    move-result-object p1

    const-string v1, "envData"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public reportInfo()V
    .locals 1

    const-string v0, "appStart"

    .line 509
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getAndReportData()V

    return-void
.end method

.method public setAppDataProvider(Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->setDataProvider(Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;)V

    return-void
.end method

.method public setStartActivityContext(Landroid/content/Context;)V
    .locals 1

    .line 502
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->setStartActivityContext(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized startVerifyByToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V
    .locals 8

    monitor-enter p0

    .line 112
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " add token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 115
    new-instance p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string v0, "2000"

    invoke-direct {p3, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-interface {p4, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->preCheckTaskQueue(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/common/VerifyType;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_2

    .line 123
    new-instance p3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string v0, "2004"

    invoke-direct {p3, v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-interface {p4, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :cond_2
    monitor-exit p0

    return-void

    .line 129
    :cond_3
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const-string v2, ""

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Lcom/alipay/mobile/verifyidentity/common/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object p1

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V
    .locals 7

    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 143
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object p3

    if-nez p3, :cond_0

    .line 145
    sget-object p3, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "[startVerifyByVerifyId] Failed to build the task by verifyId: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    .locals 0

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object p3

    if-nez p3, :cond_0

    .line 164
    sget-object p3, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to build the task by verifyId: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->addTaskInstace(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unifiedStartByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V
    .locals 7

    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 336
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->unifiedStartByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unifiedStartByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    .locals 11

    move-object v0, p1

    move-object/from16 v8, p5

    monitor-enter p0

    .line 351
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unifiedStartByVerifyId | verifyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", verifyData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string v2, "verifyData\uff0c\u5207\u5230\u6807\u51c6VerifyId\u6a21\u5f0f"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 354
    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 357
    :cond_0
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string v2, "\u5f00\u59cb\u89e3\u6790verifyData"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {p2}, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->parse(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v8, :cond_1

    const-string v1, ""

    const-string v2, ""

    .line 361
    new-instance v3, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string v4, "2002"

    invoke-direct {v3, v4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, p1, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;->onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :cond_1
    monitor-exit p0

    return-void

    .line 366
    :cond_2
    :try_start_2
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string v3, "\u89e3\u6790verifyData\u6210\u529f"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_3

    .line 368
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v7, v2

    goto :goto_0

    :cond_3
    move-object v7, p4

    :goto_0
    const-string v2, "VIE_envType"

    .line 370
    iget-object v3, v1, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->envType:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "VIE_useBird"

    .line 371
    iget-object v3, v1, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->useBird:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p6, :cond_4

    .line 372
    iget-object v2, v1, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->nextStep:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 373
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    const-string v2, "\u6b32\u7528unifiedStartByVerifyId\u76f4\u63a5\u8d77\u4eba\u8138\uff0c\u5207\u5230\u6807\u51c6VerifyId\u6a21\u5f0f"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, p0

    move-object v2, p1

    move-object v5, v7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 374
    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->startVerifyByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 377
    :cond_4
    :try_start_3
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u59cb\u76f4\u63a5\u542f\u52a8\u6a21\u5757\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->nextStep:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v3, v1, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->token:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->nextStep:Ljava/lang/String;

    iget-object v5, v1, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->data:Ljava/lang/String;

    const-string v9, ""

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->fastVerifyWithModuleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
