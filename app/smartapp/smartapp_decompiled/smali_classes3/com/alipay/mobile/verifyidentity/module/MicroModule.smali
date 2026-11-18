.class public abstract Lcom/alipay/mobile/verifyidentity/module/MicroModule;
.super Ljava/lang/Object;
.source "MicroModule.java"


# static fields
.field private static a:Ljava/lang/String; = "MicroModule"


# instance fields
.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

.field private k:Landroid/content/BroadcastReceiver;

.field public needKeepInside:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->needKeepInside:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    .line 88
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->f:Z

    .line 89
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->h:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    .line 90
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

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 382
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string v2, "20000666"

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p1

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 384
    sget-object p2, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    const-string p3, "logBehavior Exception"

    invoke-static {p2, p3, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static a()Z
    .locals 2

    .line 296
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    const-string v1, "alipay can not find appid: 09999983"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->j:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    return-object p0
.end method

.method private static b()Z
    .locals 6

    const-string v0, "com.alipay.mobile.framework.LauncherApplicationAgent"

    const-string v1, "getInstance"

    .line 307
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 308
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->c(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-string v0, "getMicroApplicationContext"

    .line 311
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.alipay.mobile.framework.MicroApplicationContext"

    .line 312
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->c(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 315
    :cond_1
    new-array v1, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "09999983"

    aput-object v5, v3, v4

    const-string v5, "findAppById"

    invoke-static {v0, v5, v1, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private c()V
    .locals 3

    .line 335
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->k:Landroid/content/BroadcastReceiver;

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->h:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 374
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "KExitMiniPayViewNotification"

    .line 375
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.alipay.closevidactivity"

    .line 376
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 3

    .line 100
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micromodule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->i:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->e:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->j:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    if-eqz p4, :cond_0

    const/4 p5, 0x0

    const-string v0, "isFirstModule"

    .line 107
    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p5

    iput-boolean p5, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->g:Z

    .line 108
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {p6}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getPluginOrProxyMode()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c()V

    .line 113
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->needKeepInside:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    const-string v1, "needKeepInside\u4e3atrue\uff01\u6a21\u5757\u9700\u8981\u4fdd\u7559\uff0c\u5ffd\u7565\u8fd9\u6b21\u7684destroy()\uff01"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micromodule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->needKeepInside:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->onDestroyModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->h:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
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

.method public getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->h:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->j:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyId()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isMicroModuleFinished()Z
    .locals 3

    .line 273
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BANKCARD_BINDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    const-string v1, "isMicroModuleFinished module is: BANKCARD_BINDING"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a()Z

    move-result v0

    return v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->f:Z

    if-nez v0, :cond_1

    return v1

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 283
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 284
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method

.method public isNeedReportVisible()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->g:Z

    return v0
.end method

.method public final declared-synchronized notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 8

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " notifyResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->j:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-object v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;->onModuleExecuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->c:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    goto :goto_0

    .line 182
    :cond_0
    sget-object p1, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mListener is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected abstract onDestroy()V
.end method

.method protected abstract onStart()V
.end method

.method public final declared-synchronized pushActivity(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushActivity(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeActivity(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 246
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move-object v0, v2

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove Activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 256
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setIsPrevent(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->f:Z

    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->d:Ljava/lang/String;

    return-void
.end method

.method public setNeedReportVisible(Z)V
    .locals 0

    .line 328
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->g:Z

    return-void
.end method

.method public final start()V
    .locals 3

    .line 120
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micromodule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->onStart()V

    return-void
.end method
