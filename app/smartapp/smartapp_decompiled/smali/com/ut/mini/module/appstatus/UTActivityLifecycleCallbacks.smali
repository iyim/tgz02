.class public Lcom/ut/mini/module/appstatus/UTActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "UTActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static mInstance:Lcom/ut/mini/module/appstatus/UTActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/ut/mini/module/appstatus/UTActivityLifecycleCallbacks;

    invoke-direct {v0}, Lcom/ut/mini/module/appstatus/UTActivityLifecycleCallbacks;-><init>()V

    sput-object v0, Lcom/ut/mini/module/appstatus/UTActivityLifecycleCallbacks;->mInstance:Lcom/ut/mini/module/appstatus/UTActivityLifecycleCallbacks;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/ut/mini/module/appstatus/UTActivityLifecycleCallbacks;
    .locals 1

    .line 15
    sget-object v0, Lcom/ut/mini/module/appstatus/UTActivityLifecycleCallbacks;->mInstance:Lcom/ut/mini/module/appstatus/UTActivityLifecycleCallbacks;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 35
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 50
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
