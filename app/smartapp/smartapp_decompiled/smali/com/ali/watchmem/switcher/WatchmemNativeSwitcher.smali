.class Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;
.super Ljava/lang/Object;
.source "WatchmemNativeSwitcher.java"

# interfaces
.implements Lcom/ali/watchmem/switcher/IWatchmemSwitcher;
.implements Ljava/lang/Runnable;
.implements Lcom/ali/watchmem/core/INativeLowMemoryListener;


# static fields
.field private static final CRITICAL:J = 0xaL

.field private static final DANGEROUS:J = 0x64L

.field private static final FIRST:J = 0x7530L

.field private static final HIGH:J = 0x1f4L

.field private static final NORMAL:J = 0xbb8L


# instance fields
.field private mInterval:J

.field private volatile mOpen:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mOpen:Z

    const-wide/16 v0, 0x7530

    .line 21
    iput-wide v0, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mInterval:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mOpen:Z

    .line 35
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->instance()Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->removeNativeLowMemoryListener(Lcom/ali/watchmem/core/INativeLowMemoryListener;)V

    return-void
.end method

.method public onNativeLowMemory(Lcom/ali/watchmem/core/WatchmemLevel;)V
    .locals 3

    .line 49
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->NORMAL:Lcom/ali/watchmem/core/WatchmemLevel;

    const-wide/16 v1, 0xbb8

    if-ne p1, v0, :cond_0

    .line 50
    iput-wide v1, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mInterval:J

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->HIGH:Lcom/ali/watchmem/core/WatchmemLevel;

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x1f4

    .line 52
    iput-wide v0, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mInterval:J

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->DANGEROUS:Lcom/ali/watchmem/core/WatchmemLevel;

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x64

    .line 54
    iput-wide v0, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mInterval:J

    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Lcom/ali/watchmem/core/WatchmemLevel;->CRITICAL:Lcom/ali/watchmem/core/WatchmemLevel;

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0xa

    .line 56
    iput-wide v0, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mInterval:J

    goto :goto_0

    .line 58
    :cond_3
    iput-wide v1, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mInterval:J

    :goto_0
    return-void
.end method

.method public open()V
    .locals 3

    .line 25
    iget-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mOpen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mOpen:Z

    .line 27
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->instance()Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/watchmem/core/WatchmemNativeMemoryManager;->addNativeLowMemoryListener(Lcom/ali/watchmem/core/INativeLowMemoryListener;)V

    .line 28
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mInterval:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 40
    iget-boolean v0, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mOpen:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemManager;->instance()Lcom/ali/watchmem/core/WatchmemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/core/WatchmemManager;->nativeMemory()V

    .line 43
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/watchmem/global/Global;->handler()Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/ali/watchmem/switcher/WatchmemNativeSwitcher;->mInterval:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
