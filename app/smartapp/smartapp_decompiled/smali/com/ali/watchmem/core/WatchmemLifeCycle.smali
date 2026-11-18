.class public Lcom/ali/watchmem/core/WatchmemLifeCycle;
.super Ljava/lang/Object;
.source "WatchmemLifeCycle.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mStartStopCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/ali/watchmem/core/WatchmemLifeCycle;->mStartStopCount:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemActivityManager;->instance()Lcom/ali/watchmem/core/WatchmemActivityManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ali/watchmem/core/WatchmemActivityManager;->add(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/ali/watchmem/core/WatchmemActivityManager;->instance()Lcom/ali/watchmem/core/WatchmemActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/watchmem/core/WatchmemActivityManager;->remove(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 24
    iget p1, p0, Lcom/ali/watchmem/core/WatchmemLifeCycle;->mStartStopCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ali/watchmem/core/WatchmemLifeCycle;->mStartStopCount:I

    .line 25
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ali/watchmem/global/Global;->setVisible(Z)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 40
    iget p1, p0, Lcom/ali/watchmem/core/WatchmemLifeCycle;->mStartStopCount:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ali/watchmem/core/WatchmemLifeCycle;->mStartStopCount:I

    .line 41
    invoke-static {}, Lcom/ali/watchmem/global/Global;->instance()Lcom/ali/watchmem/global/Global;

    move-result-object p1

    iget v1, p0, Lcom/ali/watchmem/core/WatchmemLifeCycle;->mStartStopCount:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/ali/watchmem/global/Global;->setVisible(Z)V

    return-void
.end method
