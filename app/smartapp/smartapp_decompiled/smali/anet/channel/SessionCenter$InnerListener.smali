.class Lanet/channel/SessionCenter$InnerListener;
.super Ljava/lang/Object;
.source "SessionCenter.java"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;
.implements Lanet/channel/util/AppLifecycle$AppLifecycleListener;
.implements Lanet/channel/strategy/IStrategyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerListener"
.end annotation


# instance fields
.field foreGroundCheckRunning:Z

.field final synthetic this$0:Lanet/channel/SessionCenter;


# direct methods
.method private constructor <init>(Lanet/channel/SessionCenter;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 586
    iput-boolean p1, p0, Lanet/channel/SessionCenter$InnerListener;->foreGroundCheckRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/SessionCenter;Lanet/channel/SessionCenter$1;)V
    .locals 0

    .line 553
    invoke-direct {p0, p1}, Lanet/channel/SessionCenter$InnerListener;-><init>(Lanet/channel/SessionCenter;)V

    return-void
.end method


# virtual methods
.method public background()V
    .locals 5

    .line 622
    iget-object v0, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "awcn.SessionCenter"

    const-string v4, "[background]"

    invoke-static {v3, v4, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    invoke-static {}, Lanet/channel/SessionCenter;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "background not inited!"

    invoke-static {v3, v2, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 628
    :cond_0
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0}, Lanet/channel/strategy/IStrategyInstance;->saveData()V

    const-string v0, "OPPO"

    .line 629
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "close session for OPPO"

    .line 630
    iget-object v2, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0, v1}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public forground()V
    .locals 7

    .line 590
    iget-object v0, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "awcn.SessionCenter"

    const-string v4, "[forground]"

    invoke-static {v3, v4, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 596
    :cond_0
    iget-boolean v0, p0, Lanet/channel/SessionCenter$InnerListener;->foreGroundCheckRunning:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 599
    iput-boolean v0, p0, Lanet/channel/SessionCenter$InnerListener;->foreGroundCheckRunning:Z

    .line 600
    invoke-static {}, Lanet/channel/SessionCenter;->access$200()Z

    move-result v2

    if-nez v2, :cond_2

    .line 601
    iget-object v0, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "forground not inited!"

    invoke-static {v3, v2, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 606
    :cond_2
    :try_start_0
    sget-wide v2, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 608
    iget-object v2, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v2, v0}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V

    goto :goto_0

    .line 610
    :cond_3
    iget-object v0, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :catch_0
    :goto_0
    :try_start_1
    iput-boolean v1, p0, Lanet/channel/SessionCenter$InnerListener;->foreGroundCheckRunning:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lanet/channel/SessionCenter$InnerListener;->foreGroundCheckRunning:Z

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    return-void
.end method

.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 6

    .line 569
    iget-object v0, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "networkStatus"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string p1, "awcn.SessionCenter"

    const-string v3, "onNetworkStatusChanged."

    invoke-static {p1, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    iget-object v0, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/SessionPool;

    invoke-virtual {v0}, Lanet/channel/SessionPool;->getInfos()Ljava/util/List;

    move-result-object v0

    .line 571
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 572
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionRequest;

    .line 573
    iget-object v3, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object v3, v3, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "network change, try recreate session"

    invoke-static {p1, v5, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 574
    invoke-virtual {v1, v3}, Lanet/channel/SessionRequest;->reCreateSession(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_0
    iget-object p1, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object p1, p1, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {p1}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    return-void
.end method

.method public onStrategyUpdated(Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V
    .locals 1

    .line 582
    iget-object v0, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    invoke-static {v0, p1}, Lanet/channel/SessionCenter;->access$100(Lanet/channel/SessionCenter;Lanet/channel/strategy/StrategyResultParser$HttpDnsResponse;)V

    .line 583
    iget-object p1, p0, Lanet/channel/SessionCenter$InnerListener;->this$0:Lanet/channel/SessionCenter;

    iget-object p1, p1, Lanet/channel/SessionCenter;->accsSessionManager:Lanet/channel/AccsSessionManager;

    invoke-virtual {p1}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    return-void
.end method

.method registerAll()V
    .locals 1

    .line 556
    invoke-static {p0}, Lanet/channel/util/AppLifecycle;->registerLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V

    .line 557
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 558
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/IStrategyInstance;->registerListener(Lanet/channel/strategy/IStrategyListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method unRegisterAll()V
    .locals 1

    .line 562
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/IStrategyInstance;->unregisterListener(Lanet/channel/strategy/IStrategyListener;)V

    .line 563
    invoke-static {p0}, Lanet/channel/util/AppLifecycle;->unregisterLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V

    .line 564
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->removeStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
