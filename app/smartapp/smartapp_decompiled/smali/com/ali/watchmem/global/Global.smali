.class public final Lcom/ali/watchmem/global/Global;
.super Ljava/lang/Object;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/watchmem/global/Global$Holder;
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mSwitcher:Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;

.field private mVisible:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/ali/watchmem/global/Global;->mVisible:Z

    .line 20
    new-instance v0, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;

    invoke-direct {v0}, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;-><init>()V

    iput-object v0, p0, Lcom/ali/watchmem/global/Global;->mSwitcher:Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Watchmem"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/watchmem/global/Global;->mHandlerThread:Landroid/os/HandlerThread;

    .line 25
    iget-object v0, p0, Lcom/ali/watchmem/global/Global;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ali/watchmem/global/Global$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/ali/watchmem/global/Global;-><init>()V

    return-void
.end method

.method public static instance()Lcom/ali/watchmem/global/Global;
    .locals 1

    .line 29
    sget-object v0, Lcom/ali/watchmem/global/Global$Holder;->INSTANCE:Lcom/ali/watchmem/global/Global;

    return-object v0
.end method


# virtual methods
.method public application()Landroid/app/Application;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/ali/watchmem/global/Global;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public context()Landroid/content/Context;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ali/watchmem/global/Global;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSwitcher()Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ali/watchmem/global/Global;->mSwitcher:Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;

    return-object v0
.end method

.method public handler()Landroid/os/Handler;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/ali/watchmem/global/Global;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/watchmem/global/Global;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/watchmem/global/Global;->mHandler:Landroid/os/Handler;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/ali/watchmem/global/Global;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/ali/watchmem/global/Global;->mVisible:Z

    return v0
.end method

.method public setApplication(Landroid/app/Application;)Lcom/ali/watchmem/global/Global;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ali/watchmem/global/Global;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/ali/watchmem/global/Global;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ali/watchmem/global/Global;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setVisible(Z)V
    .locals 2

    .line 58
    iget-boolean v0, p0, Lcom/ali/watchmem/global/Global;->mVisible:Z

    .line 59
    iput-boolean p1, p0, Lcom/ali/watchmem/global/Global;->mVisible:Z

    .line 60
    iget-boolean v1, p0, Lcom/ali/watchmem/global/Global;->mVisible:Z

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/ali/watchmem/global/Global;->mSwitcher:Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;

    invoke-virtual {p1}, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->open()V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/ali/watchmem/global/Global;->mSwitcher:Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;

    invoke-virtual {p1}, Lcom/ali/watchmem/switcher/WatchmemTotalSwitcher;->close()V

    :cond_1
    :goto_0
    return-void
.end method
