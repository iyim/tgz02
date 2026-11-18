.class Lcom/alibaba/android/umbrella/link/AppMonitorLogger;
.super Ljava/lang/Object;
.source "AppMonitorLogger.java"


# static fields
.field private static final CHILD_BIZ_NAME:Ljava/lang/String; = "umb2"

.field private static final DEFAULT_MEASURE_SET:[Ljava/lang/String;

.field private static final ERROR_CODE:Ljava/lang/String; = "umb8"

.field private static final ERROR_MSG:Ljava/lang/String; = "umb9"

.field private static final EXT_DATA:Ljava/lang/String; = "umb20"

.field private static final FEATURE_TYPE:Ljava/lang/String; = "umb7"

.field private static final LAUNCH_ID:Ljava/lang/String; = "umb3"

.field private static final LOG_LEVEL:Ljava/lang/String; = "umb10"

.field private static final LOG_STAGE:Ljava/lang/String; = "umb11"

.field private static final MAIN_BIZ_NAME:Ljava/lang/String; = "umb1"

.field private static final MODULE_PAGE_UMBRELLA_GOVERN:Ljava/lang/String; = "Page_Umbrella_Govern"

.field private static final PAGE_NAME:Ljava/lang/String; = "umb5"

.field private static final POINT_MONITOR_UMBRELLA_LINK:Ljava/lang/String; = "Monitor_Umbrella_Link"

.field private static final RESERVED_13:Ljava/lang/String; = "umb13"

.field private static final RESERVED_14:Ljava/lang/String; = "umb14"

.field private static final RESERVED_15:Ljava/lang/String; = "umb15"

.field private static final RESERVED_16:Ljava/lang/String; = "umb16"

.field private static final RESERVED_17:Ljava/lang/String; = "umb17"

.field private static final RESERVED_18:Ljava/lang/String; = "umb18"

.field private static final RESERVED_19:Ljava/lang/String; = "umb19"

.field private static final THREAD_ID:Ljava/lang/String; = "umb6"

.field private static final TIMESTAMP_12:Ljava/lang/String; = "umb12"

.field private static final U_LINK_ID:Ljava/lang/String; = "umb4"

.field private static hasRegistered:Z

.field private static final sDimensionSet:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "umb1"

    const-string v1, "umb2"

    const-string v2, "umb3"

    const-string v3, "umb4"

    const-string v4, "umb5"

    const-string v5, "umb6"

    const-string v6, "umb7"

    const-string v7, "umb8"

    const-string v8, "umb9"

    const-string v9, "umb10"

    const-string v10, "umb11"

    const-string v11, "umb12"

    const-string v12, "umb13"

    const-string v13, "umb14"

    const-string v14, "umb15"

    const-string v15, "umb16"

    const-string v16, "umb17"

    const-string v17, "umb18"

    const-string v18, "umb19"

    const-string v19, "umb20"

    .line 48
    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->sDimensionSet:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->hasRegistered:Z

    const-string v0, "value"

    .line 59
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->DEFAULT_MEASURE_SET:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static logAppMonitor(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V
    .locals 7

    .line 63
    sget-boolean v0, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->hasRegistered:Z

    const-string v1, "Monitor_Umbrella_Link"

    const-string v2, "Page_Umbrella_Govern"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->hasRegistered:Z

    .line 68
    sget-object v0, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->sDimensionSet:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->values()[Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 71
    invoke-virtual {v6}, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->getUmbName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    :cond_0
    sget-object v3, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->DEFAULT_MEASURE_SET:[Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 75
    invoke-static {v2, v1, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 78
    :cond_1
    invoke-static {p0}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->toMap(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p0

    const-wide/16 v3, 0x0

    .line 80
    invoke-static {v2, v1, p0, v3, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V

    return-void
.end method

.method private static putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, "null"

    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p2}, Lcom/alibaba/android/umbrella/link/util/UMLinkLogUtils;->toUnifiedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    const-string p2, ""

    .line 121
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static toMap(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)Ljava/util/Map;
    .locals 4
    .param p0    # Lcom/alibaba/android/umbrella/link/LinkLogEntity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/umbrella/link/LinkLogEntity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getMainBizName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb1"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getChildBizName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb2"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getLaunchId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb3"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getLinkId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb4"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getPageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb5"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb6"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getFeatureType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb7"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb8"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb9"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getLogLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "umb10"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getLogStage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "umb11"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb12"

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getDimMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-virtual {v3}, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->getUmbName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getExtData()Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->toClipExtMap()Ljava/util/Map;

    move-result-object p0

    const-string v1, "umb20"

    invoke-static {v0, v1, p0}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->putNonNullValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method
