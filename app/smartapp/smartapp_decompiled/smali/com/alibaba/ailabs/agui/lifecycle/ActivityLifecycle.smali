.class public Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;
.super Ljava/lang/Object;
.source "ActivityLifecycle.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;
.implements Lcom/alibaba/ailabs/agui/event/OnMmiEventInfoCallback;


# instance fields
.field private mCheckRunnable:Ljava/lang/Runnable;

.field private mDefaultConfig:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

.field private mFrontActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mMmiClient:Lcom/alibaba/ailabs/agui/mmi/MmiClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle$1;-><init>(Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mCheckRunnable:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Lcom/alibaba/ailabs/agui/mmi/MmiClient;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mMmiClient:Lcom/alibaba/ailabs/agui/mmi/MmiClient;

    .line 28
    iget-object p1, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mMmiClient:Lcom/alibaba/ailabs/agui/mmi/MmiClient;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/agui/mmi/MmiClient;->setCallback(Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;)Lcom/alibaba/ailabs/agui/mmi/MmiClient;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mMmiClient:Lcom/alibaba/ailabs/agui/mmi/MmiClient;

    return-object p0
.end method

.method private notifyCheck()V
    .locals 4

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getMmiEventCallback()Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mFrontActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 104
    instance-of v2, v0, Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    if-eqz v2, :cond_1

    .line 105
    check-cast v0, Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getMmiEventInfoCallback()Lcom/alibaba/ailabs/agui/event/OnMmiEventInfoCallback;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mFrontActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 116
    instance-of v2, v0, Lcom/alibaba/ailabs/agui/event/OnMmiEventInfoCallback;

    if-eqz v2, :cond_1

    .line 117
    check-cast v0, Lcom/alibaba/ailabs/agui/event/OnMmiEventInfoCallback;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mFrontActivity:Ljava/lang/ref/WeakReference;

    .line 92
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mFrontActivity:Ljava/lang/ref/WeakReference;

    .line 95
    invoke-direct {p0}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->notifyCheck()V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mFrontActivity:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mFrontActivity:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-direct {p0}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->notifyCheck()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mFrontActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mFrontActivity:Ljava/lang/ref/WeakReference;

    .line 66
    invoke-direct {p0}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->notifyCheck()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;
    .locals 2

    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->getMmiEventCallback()Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;->onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public onGetEventInfo()Lcom/alibaba/ailabs/agui/mmi/MmiInfo;
    .locals 2

    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->getMmiEventCallback()Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->getMmiEventInfoCallback()Lcom/alibaba/ailabs/agui/event/OnMmiEventInfoCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v1}, Lcom/alibaba/ailabs/agui/event/OnMmiEventInfoCallback;->onGetEventInfo()Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mDefaultConfig:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public setDefaultConfig(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/lifecycle/ActivityLifecycle;->mDefaultConfig:Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    return-void
.end method
