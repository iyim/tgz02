.class public Lcom/taobao/phenix/compat/StatMonitor4Phenix;
.super Ljava/lang/Object;
.source "StatMonitor4Phenix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatPhenixLifeCycle;,
        Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;
    }
.end annotation


# static fields
.field private static final sImageDecodingListener:Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;

.field private static final sStatPhenixLifeCycle:Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatPhenixLifeCycle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;-><init>(Lcom/taobao/phenix/compat/StatMonitor4Phenix$1;)V

    sput-object v0, Lcom/taobao/phenix/compat/StatMonitor4Phenix;->sImageDecodingListener:Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;

    .line 65
    new-instance v0, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatPhenixLifeCycle;

    invoke-direct {v0, v1}, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatPhenixLifeCycle;-><init>(Lcom/taobao/phenix/compat/StatMonitor4Phenix$1;)V

    sput-object v0, Lcom/taobao/phenix/compat/StatMonitor4Phenix;->sStatPhenixLifeCycle:Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatPhenixLifeCycle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;
    .locals 1

    .line 27
    sget-object v0, Lcom/taobao/phenix/compat/StatMonitor4Phenix;->sImageDecodingListener:Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;

    return-object v0
.end method

.method public static setupFlowMonitor(Landroid/content/Context;Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, p1, p2, v0, v1}, Lcom/taobao/phenix/compat/StatMonitor4Phenix;->setupFlowMonitor(Landroid/content/Context;Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;III)V

    return-void
.end method

.method public static setupFlowMonitor(Landroid/content/Context;Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;II)V
    .locals 1

    const/16 v0, 0x64

    .line 112
    invoke-static {p0, p1, p2, v0, p3}, Lcom/taobao/phenix/compat/StatMonitor4Phenix;->setupFlowMonitor(Landroid/content/Context;Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;III)V

    return-void
.end method

.method public static setupFlowMonitor(Landroid/content/Context;Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;III)V
    .locals 1

    .line 116
    new-instance v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;

    invoke-direct {v0, p2, p3, p1}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;-><init>(IILcom/taobao/phenix/compat/stat/NetworkAnalyzer;)V

    .line 119
    invoke-static {}, Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;->getInstance()Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->setNavigationInfoObtainer(Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;)V

    .line 120
    move-object p1, p0

    check-cast p1, Landroid/app/Application;

    invoke-static {}, Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;->getInstance()Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 121
    new-instance p1, Lcom/taobao/phenix/compat/stat/TBNonCriticalErrorReporter;

    invoke-direct {p1, p0}, Lcom/taobao/phenix/compat/stat/TBNonCriticalErrorReporter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->setNonCriticalErrorReporter(Lcom/taobao/phenix/compat/stat/NonCriticalErrorReporter;)V

    if-lez p4, :cond_0

    .line 123
    invoke-virtual {v0, p4}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->setImageWarningSize(I)V

    .line 125
    :cond_0
    invoke-static {v0}, Lcom/taobao/pexode/Pexode;->setForcedDegradationListener(Lcom/taobao/pexode/Pexode$ForcedDegradationListener;)V

    .line 126
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/taobao/phenix/intf/Phenix;->setImageFlowMonitor(Lcom/taobao/phenix/request/ImageFlowMonitor;)V

    .line 130
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/phenix/intf/Phenix;->schedulerBuilder()Lcom/taobao/phenix/builder/SchedulerBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/phenix/builder/SchedulerBuilder;->build()Lcom/taobao/rxm/schedule/SchedulerSupplier;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forNetwork()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object p0

    instance-of p1, p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;

    if-eqz p1, :cond_1

    .line 131
    check-cast p0, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;

    invoke-virtual {p0, v0}, Lcom/taobao/rxm/schedule/PairingThrottlingScheduler;->setDegradationListener(Lcom/taobao/rxm/schedule/PairingThrottlingScheduler$DegradationListener;)V

    .line 133
    :cond_1
    invoke-static {}, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->instance()Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;

    move-result-object p0

    sget-object p1, Lcom/taobao/phenix/compat/StatMonitor4Phenix;->sStatPhenixLifeCycle:Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatPhenixLifeCycle;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->addLifeCycle(Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;)V

    .line 135
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object p0

    sget-object p1, Lcom/taobao/phenix/compat/StatMonitor4Phenix;->sImageDecodingListener:Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/Phenix;->setImageDecodingListener(Lcom/taobao/phenix/chain/ImageDecodingListener;)V

    .line 137
    invoke-static {}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->getInstance()Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    move-result-object p0

    new-instance p1, Lcom/taobao/phenix/compat/StatMonitor4Phenix$1;

    invoke-direct {p1}, Lcom/taobao/phenix/compat/StatMonitor4Phenix$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->setCrashCaughtListener(Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;)V

    const/4 p0, 0x1

    .line 151
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "StatMonitor4Phenix"

    const-string p2, "init stat monitor with sampling=%d"

    invoke-static {p1, p2, p0}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
