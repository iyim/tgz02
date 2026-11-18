.class public Lcom/taobao/android/dinamicx/DXEngineConfig;
.super Ljava/lang/Object;
.source "DXEngineConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/DXEngineConfig$DownGradeType;,
        Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CACHE_COUNT:I = 0x64

.field public static final DEFAULT_PERIOD_TIME:I

.field private static final DEFAULT_TICK_INTERVAL:J = 0x64L

.field public static final DOWN_GRADE_ONCE:I = 0x2

.field public static final DOWN_GRADE_TO_PRESET:I = 0x1

.field public static final DX_DEFAULT_BIZTYPE:Ljava/lang/String; = "default_bizType"


# instance fields
.field bizType:Ljava/lang/String;

.field disabledDownGrade:Z

.field disabledFlatten:Z

.field downgradeType:I

.field engineId:J

.field periodTime:I

.field pipelineCacheMaxCount:I

.field tickInterval:J

.field usePipelineCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget v0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->PERIOD_TIME:I

    mul-int/lit8 v0, v0, 0x14

    sput v0, Lcom/taobao/android/dinamicx/DXEngineConfig;->DEFAULT_PERIOD_TIME:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    new-instance v0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;-><init>(Ljava/lang/String;Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->downgradeType:I

    .line 52
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    .line 53
    invoke-static {p2}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->access$000(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->periodTime:I

    .line 54
    invoke-static {p2}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->access$100(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->engineId:J

    .line 55
    invoke-static {p2}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->access$200(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->downgradeType:I

    .line 56
    invoke-static {p2}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->access$300(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->disabledDownGrade:Z

    .line 57
    invoke-static {p2}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->access$400(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->pipelineCacheMaxCount:I

    .line 58
    invoke-static {p2}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->access$500(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->usePipelineCache:Z

    .line 59
    iget-boolean v0, p2, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->disabledFlatten:Z

    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->disabledFlatten:Z

    .line 60
    invoke-static {p2}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->access$600(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->tickInterval:J

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "default_bizType"

    .line 62
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;Lcom/taobao/android/dinamicx/DXEngineConfig$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/DXEngineConfig;-><init>(Ljava/lang/String;Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getDowngradeType()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->downgradeType:I

    return v0
.end method

.method public getEngineId()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->engineId:J

    return-wide v0
.end method

.method public getPeriodTime()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->periodTime:I

    return v0
.end method

.method public getPipelineCacheMaxCount()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->pipelineCacheMaxCount:I

    return v0
.end method

.method public getTickInterval()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->tickInterval:J

    return-wide v0
.end method

.method public isDisabledDownGrade()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->disabledDownGrade:Z

    return v0
.end method

.method public isDisabledFlatten()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->disabledFlatten:Z

    return v0
.end method

.method public isUsePipelineCache()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig;->usePipelineCache:Z

    return v0
.end method
