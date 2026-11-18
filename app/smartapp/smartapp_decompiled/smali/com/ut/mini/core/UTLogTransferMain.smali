.class public Lcom/ut/mini/core/UTLogTransferMain;
.super Ljava/lang/Object;
.source "UTLogTransferMain.java"


# static fields
.field private static s_instance:Lcom/ut/mini/core/UTLogTransferMain;


# instance fields
.field public mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/ut/mini/core/UTLogTransferMain;

    invoke-direct {v0}, Lcom/ut/mini/core/UTLogTransferMain;-><init>()V

    sput-object v0, Lcom/ut/mini/core/UTLogTransferMain;->s_instance:Lcom/ut/mini/core/UTLogTransferMain;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    return-void
.end method

.method public static getInstance()Lcom/ut/mini/core/UTLogTransferMain;
    .locals 1

    .line 23
    sget-object v0, Lcom/ut/mini/core/UTLogTransferMain;->s_instance:Lcom/ut/mini/core/UTLogTransferMain;

    return-object v0
.end method


# virtual methods
.method public transferLog(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTSampleConfBiz;->getInstance()Lcom/alibaba/analytics/core/config/UTSampleConfBiz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/analytics/core/config/UTSampleConfBiz;->isSampleSuccess(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {p1}, Lcom/alibaba/analytics/core/LogProcessor;->process(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v1, "log discard"

    const/4 v2, 0x2

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "aLogMap"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
