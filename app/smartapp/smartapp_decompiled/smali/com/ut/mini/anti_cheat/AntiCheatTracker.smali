.class public Lcom/ut/mini/anti_cheat/AntiCheatTracker;
.super Ljava/lang/Object;
.source "AntiCheatTracker.java"

# interfaces
.implements Lcom/ut/mini/module/appstatus/UTAppStatusDelayCallbacks;
.implements Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;


# static fields
.field private static instance:Lcom/ut/mini/anti_cheat/AntiCheatTracker;


# instance fields
.field private init:Z

.field private mActivity:Landroid/app/Activity;

.field private mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;

    invoke-direct {v0}, Lcom/ut/mini/anti_cheat/AntiCheatTracker;-><init>()V

    sput-object v0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->instance:Lcom/ut/mini/anti_cheat/AntiCheatTracker;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->init:Z

    .line 24
    iput-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    return-void
.end method

.method public static getInstance()Lcom/ut/mini/anti_cheat/AntiCheatTracker;
    .locals 1

    .line 27
    sget-object v0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->instance:Lcom/ut/mini/anti_cheat/AntiCheatTracker;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 1

    .line 31
    sget-boolean v0, Lcom/ut/mini/extend/UTExtendSwitch;->bAntiCheat:Z

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/utils/BuildCompatUtils;->isAtLeastQ()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 39
    :cond_1
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->i()V

    .line 40
    iget-boolean v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->init:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->init:Z

    .line 42
    new-instance v0, Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    .line 43
    invoke-static {p0}, Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;->registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mActivity:Landroid/app/Activity;

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

.method public onScreenCaptured(Ljava/lang/String;)V
    .locals 5

    .line 101
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->i()V

    .line 103
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper;->getCurrentPageName()Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 108
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v3, "screen_capture"

    invoke-direct {v2, v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "anti_cheat"

    .line 110
    invoke-virtual {v2, v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string v3, "page_name"

    .line 111
    invoke-virtual {v2, v3, p1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    const-string p1, "contain_name"

    .line 112
    invoke-virtual {v2, p1, v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    const-string p1, "current_time"

    .line 113
    invoke-virtual {v2, p1, v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 114
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p1

    invoke-virtual {v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public onScreenCapturedWithDeniedPermission()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSwitchBackground()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSwitchBackgroundDelay()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->stop()V

    :cond_0
    return-void
.end method

.method public onSwitchForeground()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ut/mini/anti_cheat/AntiCheatTracker;->mDetector:Lcom/ut/mini/anti_cheat/ScreenshotDetector;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p0}, Lcom/ut/mini/anti_cheat/ScreenshotDetector;->start(Lcom/ut/mini/anti_cheat/ScreenshotDetector$ScreenshotListener;)V

    :cond_0
    return-void
.end method
