.class public Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;
.super Lcom/alibaba/analytics/core/config/UTBaseConfMgr;
.source "UTOrangeConfMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;
    }
.end annotation


# static fields
.field private static final ORANGE_CONFIGS:[Ljava/lang/String;

.field public static final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string/jumbo v0, "ut_sample"

    const-string/jumbo v1, "ut_stream"

    const-string/jumbo v2, "ut_bussiness"

    const-string/jumbo v3, "utap_system"

    const-string v4, "ap_alarm"

    const-string v5, "ap_counter"

    const-string v6, "ap_stat"

    const-string/jumbo v7, "ut_realtime"

    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;->ORANGE_CONFIGS:[Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$001(Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->updateAndDispatch(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;->ORANGE_CONFIGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$201(Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;)V
    .locals 0

    .line 15
    invoke-super {p0}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$301(Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;)V
    .locals 0

    .line 15
    invoke-super {p0}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->dispatchLocalCacheConfigs()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$401(Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->deleteDBConfigEntity(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public requestOnlineConfig()V
    .locals 3

    .line 23
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/orange/OrangeConfig;->init(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;

    invoke-direct {v1, p0}, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$OrangeGetConfigsRunnable;-><init>(Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/utils/TaskExecutor;->submit(Ljava/lang/Runnable;)V

    .line 26
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;->ORANGE_CONFIGS:[Ljava/lang/String;

    new-instance v2, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$1;

    invoke-direct {v2, p0}, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr$1;-><init>(Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;)V

    invoke-virtual {v0, v1, v2}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
