.class public Lcom/ut/mini/UTAppLaunch;
.super Ljava/lang/Object;
.source "UTAppLaunch.java"

# interfaces
.implements Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;


# static fields
.field private static final IS_FIRST_TIME_LAUNCH:Ljava/lang/String; = "_is_ft"

.field private static final IS_HOT_LAUNCH:Ljava/lang/String; = "_is_hl"

.field private static final TAG:Ljava/lang/String; = "UTAppLaunch"

.field private static final UT_DATABASE_NAME:Ljava/lang/String; = "ut.db"

.field private static bCheckedFirstAppLaunch:Z = false

.field private static bEnable:Z = true

.field private static bFirstAppLaunch:Z = false

.field private static mInstance:Lcom/ut/mini/UTAppLaunch;


# instance fields
.field private bFirstSend:Z

.field private bMainProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/ut/mini/UTAppLaunch;

    invoke-direct {v0}, Lcom/ut/mini/UTAppLaunch;-><init>()V

    sput-object v0, Lcom/ut/mini/UTAppLaunch;->mInstance:Lcom/ut/mini/UTAppLaunch;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/ut/mini/UTAppLaunch;->bFirstSend:Z

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/ut/mini/UTAppLaunch;->bMainProcess:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 23
    sget-boolean v0, Lcom/ut/mini/UTAppLaunch;->bFirstAppLaunch:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ut/mini/UTAppLaunch;Ljava/util/Map;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/ut/mini/UTAppLaunch;->send(Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static checkFirstLaunch(Landroid/content/Context;)V
    .locals 2

    .line 51
    sget-boolean v0, Lcom/ut/mini/UTAppLaunch;->bEnable:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/ut/mini/UTAppLaunch;->bCheckedFirstAppLaunch:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/ut/mini/UTAppLaunch;->bCheckedFirstAppLaunch:Z

    const-string/jumbo v1, "ut.db"

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    sput-boolean v0, Lcom/ut/mini/UTAppLaunch;->bFirstAppLaunch:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/ut/mini/UTAppLaunch;
    .locals 1

    .line 43
    sget-object v0, Lcom/ut/mini/UTAppLaunch;->mInstance:Lcom/ut/mini/UTAppLaunch;

    return-object v0
.end method

.method private send(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    new-instance v7, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string v1, "UT"

    const/16 v2, 0x3ff

    const-string v3, "/tracking.init.rdy"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 109
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p1

    invoke-virtual {v7}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method private sendFirstLaunch(Landroid/content/Context;)V
    .locals 2

    .line 78
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/ut/mini/UTAppLaunch$1;

    invoke-direct {v1, p0, p1}, Lcom/ut/mini/UTAppLaunch$1;-><init>(Lcom/ut/mini/UTAppLaunch;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/utils/TaskExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendHotLaunch()V
    .locals 3

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_is_hl"

    const-string v2, "1"

    .line 100
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-direct {p0, v0}, Lcom/ut/mini/UTAppLaunch;->send(Ljava/util/Map;)V

    const/4 v0, 0x2

    .line 102
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "sendHotLaunch _is_hl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "UTAppLaunch"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private sendLaunch(Landroid/content/Context;)V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/ut/mini/UTAppLaunch;->bEnable:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/ut/mini/UTAppLaunch;->bFirstSend:Z

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p1}, Lcom/alibaba/analytics/utils/AppInfoUtil;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ut/mini/UTAppLaunch;->bMainProcess:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/ut/mini/UTAppLaunch;->sendFirstLaunch(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/ut/mini/UTAppLaunch;->bFirstSend:Z

    return-void

    .line 72
    :cond_1
    iget-boolean p1, p0, Lcom/ut/mini/UTAppLaunch;->bMainProcess:Z

    if-eqz p1, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/ut/mini/UTAppLaunch;->sendHotLaunch()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setEnable(Z)V
    .locals 0

    .line 47
    sput-boolean p0, Lcom/ut/mini/UTAppLaunch;->bEnable:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
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

.method public onSwitchBackground()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSwitchForeground()V
    .locals 1

    .line 119
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/ClientVariables;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ut/mini/UTAppLaunch;->sendLaunch(Landroid/content/Context;)V

    return-void
.end method
