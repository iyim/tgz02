.class public Lanet/channel/util/AppLifecycle;
.super Ljava/lang/Object;
.source "AppLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/util/AppLifecycle$AppLifecycleListener;
    }
.end annotation


# static fields
.field public static volatile lastEnterBackgroundTime:J

.field private static listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lanet/channel/util/AppLifecycle$AppLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static mComponentCallbacks2:Landroid/content/ComponentCallbacks2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lanet/channel/util/AppLifecycle;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-wide/16 v0, 0x0

    .line 30
    sput-wide v0, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    .line 81
    new-instance v0, Lanet/channel/util/AppLifecycle$2;

    invoke-direct {v0}, Lanet/channel/util/AppLifecycle$2;-><init>()V

    sput-object v0, Lanet/channel/util/AppLifecycle;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 116
    new-instance v0, Lanet/channel/util/AppLifecycle$3;

    invoke-direct {v0}, Lanet/channel/util/AppLifecycle$3;-><init>()V

    sput-object v0, Lanet/channel/util/AppLifecycle;->mComponentCallbacks2:Landroid/content/ComponentCallbacks2;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1

    .line 19
    sget-object v0, Lanet/channel/util/AppLifecycle;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public static initialize()V
    .locals 2

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Lanet/channel/AwcnConfig;->isAppLifeCycleListenerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sget-object v1, Lanet/channel/util/AppLifecycle;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lanet/channel/util/AppLifecycle;->mComponentCallbacks2:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method private static notifyListener(Z)V
    .locals 4

    const/4 v0, 0x2

    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "foreground"

    aput-object v2, v0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "awcn.AppLifeCycle"

    const-string v2, "notifyListener"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lanet/channel/util/AppLifecycle$1;

    invoke-direct {v0, p0}, Lanet/channel/util/AppLifecycle$1;-><init>(Z)V

    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static onBackground()V
    .locals 2

    .line 58
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 59
    invoke-static {v0}, Lanet/channel/GlobalAppRuntimeInfo;->setBackground(Z)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Lanet/channel/util/AppLifecycle;->notifyListener(Z)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static onForeground()V
    .locals 1

    .line 51
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 52
    invoke-static {v0}, Lanet/channel/GlobalAppRuntimeInfo;->setBackground(Z)V

    const/4 v0, 0x1

    .line 53
    invoke-static {v0}, Lanet/channel/util/AppLifecycle;->notifyListener(Z)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 42
    sget-object v0, Lanet/channel/util/AppLifecycle;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static unregisterLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V
    .locals 1

    .line 47
    sget-object v0, Lanet/channel/util/AppLifecycle;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
