.class public Lcom/ali/watchmem/Watchmem;
.super Ljava/lang/Object;
.source "Watchmem.java"


# static fields
.field private static inited:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2

    .line 20
    sget-boolean v0, Lcom/ali/watchmem/Watchmem;->inited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lcom/ali/watchmem/Watchmem;->inited:Z

    .line 22
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/watchmem/global/Global;->setApplication(Landroid/app/Application;)Lcom/ali/watchmem/global/Global;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/watchmem/global/Global;->setContext(Landroid/content/Context;)Lcom/ali/watchmem/global/Global;

    .line 24
    new-instance v0, Lcom/ali/watchmem/core/WatchmemLifeCycle;

    invoke-direct {v0}, Lcom/ali/watchmem/core/WatchmemLifeCycle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static registerCallback(Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;)V
    .locals 1

    .line 35
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemActivityManager;->instance()Lcom/ali/watchmem/core/WatchmemActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/watchmem/core/WatchmemActivityManager;->registerCallback(Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;)V

    return-void
.end method

.method public static setWatchmemActivityWrapperFetcher(Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemActivityManager;->instance()Lcom/ali/watchmem/core/WatchmemActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/watchmem/core/WatchmemActivityManager;->setWatchmemActivityWrapperFetcher(Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;)Lcom/ali/watchmem/core/WatchmemActivityManager;

    return-void
.end method

.method public static stop()V
    .locals 2

    .line 29
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->getSwitcher()Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->setCloseForever(Z)Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;

    .line 31
    invoke-virtual {v0}, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->close()V

    return-void
.end method
