.class public Lcom/alibaba/android/ultron/engine/utils/AppMonitorUtils;
.super Ljava/lang/Object;
.source "AppMonitorUtils.java"


# static fields
.field private static final APP_MONITOR_MODULE:Ljava/lang/String; = "Page_NewUltron_Performance"

.field private static final APP_MONITOR_POINT:Ljava/lang/String; = "Monitor_NewUltronEngine"

.field private static isPerfOptInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initPerfOptAppMonitor()V
    .locals 4

    .line 21
    sget-boolean v0, Lcom/alibaba/android/ultron/engine/utils/AppMonitorUtils;->isPerfOptInit:Z

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lcom/alibaba/android/ultron/engine/utils/AppMonitorUtils;->isPerfOptInit:Z

    const-string v0, "jsEngineContextInit"

    const-string v1, "jsFileInit"

    const-string v2, "jsCallMethod"

    .line 26
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    const-string v1, "bizType"

    .line 30
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string v2, "Page_NewUltron_Performance"

    const-string v3, "Monitor_NewUltronEngine"

    .line 32
    invoke-static {v2, v3, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static perfOptStateCommit(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/alibaba/android/ultron/engine/utils/AppMonitorUtils;->initPerfOptAppMonitor()V

    .line 40
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p1

    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string v0, "Page_NewUltron_Performance"

    const-string v1, "Monitor_NewUltronEngine"

    .line 39
    invoke-static {v0, v1, p1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
