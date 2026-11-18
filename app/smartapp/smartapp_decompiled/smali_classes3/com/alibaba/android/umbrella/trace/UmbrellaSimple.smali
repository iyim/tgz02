.class public Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;
.super Ljava/lang/Object;
.source "UmbrellaSimple.java"


# static fields
.field private static final BIZ_INFO_INIT_VALUE_TAOBAO_BUY_BUY:Ljava/lang/String; = "taobao.buy,buy"

.field private static final BOOLEAN_FALSE:Ljava/lang/String; = "false"

.field private static final BOOLEAN_TRUE:Ljava/lang/String; = "true"

.field public static final DEFAULT_FAIL_SAMPLE_RATING:D = 1.0

.field public static final DEFAULT_PERFORMANCE_SAMPLE_RATING:D = 0.001

.field public static final DEFAULT_SUCCESS_SAMPLE_RATING:D = 5.0E-5

.field public static final FORCE_CLOSE_FAILURE_KEY:Ljava/lang/String; = "ForceCloseFailure"

.field public static final FORCE_CLOSE_PERFORMANCE_PAGE_KEY:Ljava/lang/String; = "ForceClosePerformancePage"

.field public static final FORCE_CLOSE_PERFORMANCE_POINT_KEY:Ljava/lang/String; = "ForceClosePerformancePoint"

.field public static final FORCE_CLOSE_SUCCESS_KEY:Ljava/lang/String; = "ForceCloseSuccess"

.field public static final OPEN_CRASH_REPORT_KEY:Ljava/lang/String; = "isPointReportToCrash"

.field public static final OPEN_GRAY_REPORT_KEY:Ljava/lang/String; = "isGrayReport"

.field public static final ORANGE_GROUP_NAME:Ljava/lang/String; = "umbrella_trace"

.field private static final UM_UNIFORM_ERROR_REPORT:Ljava/lang/String; = "UMUniformErrorReport"

.field private static sFailSampleRating:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceCloseFailure:Z

.field private static sForceClosePerformancePage:Z

.field private static sForceClosePerformancePoint:Z

.field private static sForceCloseSuccess:Z

.field private static sIsGrayVersion:Z

.field private static sOpenCrashReport:Z

.field private static sOpenGrayReport:Z

.field private static sPerformanceSampleRating:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static sSampleRating:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field static final sUMUniformErrorReport:Lcom/alibaba/android/umbrella/utils/KVConfigItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/umbrella/utils/KVConfigItem<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sSampleRating:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sFailSampleRating:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sPerformanceSampleRating:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceCloseSuccess:Z

    .line 39
    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceCloseFailure:Z

    .line 40
    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceClosePerformancePoint:Z

    .line 41
    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceClosePerformancePage:Z

    const/4 v1, 0x1

    .line 42
    sput-boolean v1, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sOpenCrashReport:Z

    .line 43
    sput-boolean v1, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sOpenGrayReport:Z

    .line 44
    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sIsGrayVersion:Z

    .line 49
    new-instance v0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;

    new-instance v1, Lcom/alibaba/android/umbrella/utils/converter/StringListConfigConverter;

    invoke-direct {v1}, Lcom/alibaba/android/umbrella/utils/converter/StringListConfigConverter;-><init>()V

    const-string v2, "umbrella_trace"

    const-string v3, "UMUniformErrorReport"

    const-string v4, "taobao.buy,buy"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/alibaba/android/umbrella/utils/KVConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/utils/IConfigItemConverter;)V

    sput-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sUMUniformErrorReport:Lcom/alibaba/android/umbrella/utils/KVConfigItem;

    .line 53
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sSampleRating:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sFailSampleRating:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .line 22
    sput-boolean p0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sOpenGrayReport:Z

    return p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 22
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getOpenGrayReport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sPerformanceSampleRating:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 22
    sput-boolean p0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceCloseSuccess:Z

    return p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getForceCloseOrange(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 22
    sput-boolean p0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceCloseFailure:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 22
    sput-boolean p0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceClosePerformancePoint:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 22
    sput-boolean p0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceClosePerformancePage:Z

    return p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 22
    sput-boolean p0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sOpenCrashReport:Z

    return p0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 22
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getOpenCrashReport()Z

    move-result v0

    return v0
.end method

.method public static getFailSampleResult(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getOrangeFailSampleRating(Ljava/lang/String;)D

    move-result-wide p0

    .line 79
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    cmpl-double v3, p0, v1

    if-lez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private static getForceCloseFailure()Z
    .locals 4

    .line 147
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    const-string v1, "umbrella_trace"

    const-string v2, "ForceCloseFailure"

    const-string v3, "false"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getForceCloseOrange(Ljava/lang/String;)Z
    .locals 4

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 158
    :cond_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    const-string v2, "umbrella_trace"

    const-string v3, "false"

    invoke-virtual {v0, v2, p0, v3}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static getForceCloseSuccess()Z
    .locals 4

    .line 139
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    const-string v1, "umbrella_trace"

    const-string v2, "ForceCloseSuccess"

    const-string v3, "false"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getIsGrayVersion()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sIsGrayVersion:Z

    return v0
.end method

.method private static getOpenCrashReport()Z
    .locals 4

    .line 166
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    const-string v1, "true"

    const-string v2, "umbrella_trace"

    const-string v3, "isPointReportToCrash"

    invoke-virtual {v0, v2, v3, v1}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getOpenGrayReport()Z
    .locals 4

    .line 174
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    const-string v1, "true"

    const-string v2, "umbrella_trace"

    const-string v3, "isGrayReport"

    invoke-virtual {v0, v2, v3, v1}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getOrangeFailSampleRating(Ljava/lang/String;)D
    .locals 6

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    return-wide v1

    .line 217
    :cond_0
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sFailSampleRating:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 221
    :cond_1
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, "umbrella_trace"

    invoke-virtual {v0, v4, p0, v3}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 224
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sFailSampleRating:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 227
    :catch_0
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sFailSampleRating:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v1
.end method

.method public static getOrangeSampleRating(Ljava/lang/String;)D
    .locals 6

    .line 188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide v1, 0x3f0a36e2eb1c432dL    # 5.0E-5

    if-eqz v0, :cond_0

    return-wide v1

    .line 191
    :cond_0
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sSampleRating:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 195
    :cond_1
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, "umbrella_trace"

    invoke-virtual {v0, v4, p0, v3}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 198
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sSampleRating:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 201
    :catch_0
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sSampleRating:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v1
.end method

.method public static getPerformanceOrangeSampleRating(Ljava/lang/String;)D
    .locals 6

    .line 240
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    if-eqz v0, :cond_0

    return-wide v1

    .line 243
    :cond_0
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sPerformanceSampleRating:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 247
    :cond_1
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, "umbrella_trace"

    invoke-virtual {v0, v4, p0, v3}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 250
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sPerformanceSampleRating:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 253
    :catch_0
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sPerformanceSampleRating:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v1
.end method

.method public static getPerformancePageSampleResult(Ljava/lang/String;)Z
    .locals 6

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performance_Page_Load_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getPerformanceOrangeSampleRating(Ljava/lang/String;)D

    move-result-wide v2

    .line 103
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static getPerformanceSampleResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performance_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getPerformanceOrangeSampleRating(Ljava/lang/String;)D

    move-result-wide p0

    .line 91
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpl-double v0, p0, v2

    if-lez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static getSampleResult(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->tagId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->tagId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getOrangeSampleRating(Ljava/lang/String;)D

    move-result-wide v1

    .line 67
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    cmpl-double p0, v1, v3

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static init()V
    .locals 3

    const-string v0, "ForceCloseSuccess"

    .line 260
    invoke-static {v0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getForceCloseOrange(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceCloseSuccess:Z

    const-string v0, "ForceCloseFailure"

    .line 261
    invoke-static {v0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getForceCloseOrange(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceCloseFailure:Z

    .line 262
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getOpenCrashReport()Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sOpenCrashReport:Z

    const-string v0, "ForceClosePerformancePoint"

    .line 263
    invoke-static {v0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getForceCloseOrange(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceClosePerformancePoint:Z

    const-string v0, "ForceClosePerformancePage"

    .line 264
    invoke-static {v0}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getForceCloseOrange(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceClosePerformancePage:Z

    .line 265
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->getOpenGrayReport()Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sOpenGrayReport:Z

    .line 266
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->isGrayVersion()Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sIsGrayVersion:Z

    .line 268
    sget-object v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sUMUniformErrorReport:Lcom/alibaba/android/umbrella/utils/KVConfigItem;

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->refreshValue()V

    .line 270
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    const-string v1, "umbrella_trace"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple$1;

    invoke-direct {v2}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    return-void
.end method

.method public static isForceCloseFailure()Z
    .locals 1

    .line 115
    sget-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceCloseFailure:Z

    return v0
.end method

.method public static isForceClosePerformancePage()Z
    .locals 1

    .line 135
    sget-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceClosePerformancePage:Z

    return v0
.end method

.method public static isForceClosePerformancePoint()Z
    .locals 1

    .line 131
    sget-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceClosePerformancePoint:Z

    return v0
.end method

.method public static isForceCloseSuccess()Z
    .locals 1

    .line 111
    sget-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sForceCloseSuccess:Z

    return v0
.end method

.method private static isGrayVersion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isOpenCrashReport()Z
    .locals 1

    .line 119
    sget-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sOpenCrashReport:Z

    return v0
.end method

.method public static isOpenGrayReport()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sOpenGrayReport:Z

    return v0
.end method
