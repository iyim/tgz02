.class Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;
.super Ljava/lang/Object;
.source "UMUniformErrorReporter.java"


# static fields
.field private static final DEFAULT_DIMENSION_SET:[Ljava/lang/String;

.field private static final DEFAULT_MEASURE_SET:[Ljava/lang/String;

.field private static final K_API_NAME:Ljava/lang/String; = "apiName"

.field private static final K_BIZ_INFO:Ljava/lang/String; = "bizInfo"

.field private static final K_CODE:Ljava/lang/String; = "code"

.field private static final K_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final K_ERROR_TYPE:Ljava/lang/String; = "errorType"

.field private static final K_MAPPING_CODE:Ljava/lang/String; = "mappingCode"

.field private static final K_PAGE_NAME:Ljava/lang/String; = "pageName"

.field private static final K_PAGE_URL:Ljava/lang/String; = "pageURL"

.field private static final K_RESPONSE_CODE:Ljava/lang/String; = "responseCode"

.field private static final K_SUBTITLE:Ljava/lang/String; = "subtitle"

.field private static final K_TITLE:Ljava/lang/String; = "title"

.field private static final K_TRACE_ID:Ljava/lang/String; = "traceId"

.field private static final MODULE_NAME:Ljava/lang/String; = "TBErrorView"

.field private static final MONITOR_POINT:Ljava/lang/String; = "show_error"

.field private static final TAG:Ljava/lang/String; = "UMUniformError"

.field private static isMonitorRegistered:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "pageName"

    const-string v1, "pageURL"

    const-string v2, "title"

    const-string v3, "subtitle"

    const-string v4, "code"

    const-string v5, "mappingCode"

    const-string v6, "responseCode"

    const-string v7, "apiName"

    const-string v8, "errorType"

    const-string v9, "errorMsg"

    const-string v10, "traceId"

    const-string v11, "bizInfo"

    .line 44
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->DEFAULT_DIMENSION_SET:[Ljava/lang/String;

    const-string v0, "value"

    .line 53
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->DEFAULT_MEASURE_SET:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getFromNullableMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 131
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method private static varargs setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 5
    .param p0    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 109
    array-length v1, p3

    if-lez v1, :cond_1

    .line 110
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 111
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_1
    :goto_1
    invoke-static {p2, p1}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->getFromNullableMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, v0

    .line 123
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    return-void
.end method


# virtual methods
.method commit(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1    # Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sUMUniformErrorReport:Lcom/alibaba/android/umbrella/utils/KVConfigItem;

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 63
    :cond_0
    sget-boolean v0, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->isMonitorRegistered:Z

    const-string v1, "show_error"

    const-string v2, "TBErrorView"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 64
    sput-boolean v3, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->isMonitorRegistered:Z

    .line 65
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 66
    sget-object v5, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->DEFAULT_DIMENSION_SET:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 67
    invoke-virtual {v0, v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    .line 71
    sget-object v6, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->DEFAULT_MEASURE_SET:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 72
    invoke-virtual {v5, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 75
    :cond_2
    invoke-static {v2, v1, v5, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 80
    :cond_3
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 81
    iget-object v5, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array v6, v3, [Ljava/lang/String;

    iget-object v7, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->invokePage:Ljava/lang/String;

    aput-object v7, v6, v4

    const-string v7, "pageName"

    invoke-static {v0, v7, v5, v6}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 82
    iget-object v5, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array v6, v3, [Ljava/lang/String;

    iget-object v7, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->invokePageUrl:Ljava/lang/String;

    aput-object v7, v6, v4

    const-string v7, "pageURL"

    invoke-static {v0, v7, v5, v6}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 83
    iget-object v5, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "title"

    invoke-static {v0, v7, v5, v6}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 84
    iget-object v5, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "subtitle"

    invoke-static {v0, v7, v5, v6}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 85
    iget-object v5, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array v6, v3, [Ljava/lang/String;

    aput-object p2, v6, v4

    const-string p2, "code"

    invoke-static {v0, p2, v5, v6}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 86
    iget-object p2, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "mappingCode"

    invoke-static {v0, v6, p2, v5}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 87
    iget-object p2, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "responseCode"

    invoke-static {v0, v6, p2, v5}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 88
    iget-object p2, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "apiName"

    invoke-static {v0, v6, p2, v5}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 89
    iget-object p2, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "errorType"

    invoke-static {v0, v6, p2, v5}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 90
    iget-object p2, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array v5, v3, [Ljava/lang/String;

    aput-object p3, v5, v4

    const-string p3, "errorMsg"

    invoke-static {v0, p3, p2, v5}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 91
    iget-object p2, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array p3, v4, [Ljava/lang/String;

    const-string v5, "traceId"

    invoke-static {v0, v5, p2, p3}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 92
    iget-object p2, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    new-array p3, v3, [Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    aput-object p1, p3, v4

    const-string p1, "bizInfo"

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/android/umbrella/trace/UMUniformErrorReporter;->setDVSValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p1

    const-wide/16 p2, 0x0

    const-string v3, "value"

    .line 95
    invoke-virtual {p1, v3, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 97
    invoke-static {v2, v1, v0, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    return-void

    :cond_4
    :goto_2
    const-string p1, "UMUniformError"

    const-string p2, "sUMUniformErrorReport == false, do not report uniform error"

    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
