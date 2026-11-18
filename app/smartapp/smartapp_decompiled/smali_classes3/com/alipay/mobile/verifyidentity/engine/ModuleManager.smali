.class public Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "ModuleManager"


# instance fields
.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/verifyidentity/module/MicroModule;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/verifyidentity/module/MicroModule;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->b:Ljava/util/Stack;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->d:Ljava/util/List;

    .line 51
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

.method private a(Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;Landroid/os/Bundle;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 3

    .line 283
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createModuleByDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "not"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "null"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 286
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 288
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz v0, :cond_2

    .line 298
    nop

    nop

    return-object p2

    .line 296
    :cond_2
    new-instance p2, Lcom/alipay/mobile/verifyidentity/module/ModuleLoadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a Module"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alipay/mobile/verifyidentity/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    .line 293
    new-instance p2, Lcom/alipay/mobile/verifyidentity/module/ModuleLoadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alipay/mobile/verifyidentity/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz v0, :cond_0

    .line 95
    sget-object v1, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishModule microModule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->destroy()V

    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishModule can\'t find microModule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 1

    .line 250
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->canTaskContinue(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u5f53\u524d\u4efb\u52a1\u5df2\u8fc7\u671f\uff0c\u65e0\u9700\u518d\u542f\u52a8 ["

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object p4

    .line 256
    iget-object p6, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->b:Ljava/util/Stack;

    invoke-virtual {p6, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createModule() completed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z
    .locals 13

    move-object v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p7

    .line 223
    iget-boolean v0, v12, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    const-string v1, "[startNativeModule] Task is in dynamic mode now. It will use the unified dynamic module!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VI_DYNAMIC_CENTER"

    .line 225
    invoke-direct {p0, v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0, v11}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    move-result-object v0

    :goto_0
    move-object v6, v0

    if-eqz v6, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 231
    :try_start_0
    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/module/ModuleLoadException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 235
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find ModuleDescription by ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_2

    .line 241
    new-instance v5, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v0, "2002"

    invoke-direct {v5, v0}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p6

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;->onModuleExecuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 7

    .line 275
    invoke-direct {p0, p5, p6}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a(Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;Landroid/os/Bundle;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object p5

    .line 276
    invoke-virtual {p5, p3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->setModuleName(Ljava/lang/String;)V

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 277
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-object p5
.end method

.method private declared-synchronized b(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 309
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 310
    monitor-exit p0

    return-object v0

    .line 312
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;

    .line 313
    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 318
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public varargs declared-synchronized addDescription([Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 326
    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 329
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public clearModuleMapByToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->b:Ljava/util/Stack;

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 163
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear mModules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 166
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 167
    sget-object p1, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear mModulesMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public findModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object p1
.end method

.method public declared-synchronized finishAllModules()V
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    const-string v1, "no microModule need to be finished"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    invoke-direct {p0, v1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized finishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public finishTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 135
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishTask verifyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->destroy()V

    .line 141
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishModule microModule by token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->destroy()V

    .line 147
    sget-object v2, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishModule microModule by verifyId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getTopRunningModule()Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->b:Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized notifyAndFinishAllModule()V
    .locals 7

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    const-string v1, "no microModule need to be finished"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    const-string v1, "Now to [notifyAndFinishAllModule]!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v1, "1003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "subCode"

    const-string v3, "101"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-nez v3, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->notifyModuleResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 125
    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->finishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v3, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Module "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " have been finished!"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public notifyModuleResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    sget-object p2, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " notifyModuleResult"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1, p4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    :cond_0
    return-void
.end method

.method public onDestroyModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyModule pop microModule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized startModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 3

    monitor-enter p0

    .line 203
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    const-string v1, "token or moduleName should not be empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startModule(): [token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], [moduleName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
