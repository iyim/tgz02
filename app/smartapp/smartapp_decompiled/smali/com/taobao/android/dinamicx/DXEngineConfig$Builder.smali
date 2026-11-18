.class public final Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;
.super Ljava/lang/Object;
.source "DXEngineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/DXEngineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bizType:Ljava/lang/String;

.field private disabledDownGrade:Z

.field disabledFlatten:Z

.field private downgradeType:I

.field private engineId:J

.field private periodTime:I

.field private pipelineCacheMaxCount:I

.field private tickInterval:J

.field private usePipelineCache:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->bizType:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->bizType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "default_bizType"

    .line 131
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->bizType:Ljava/lang/String;

    .line 133
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->engineId:J

    const/4 p1, 0x1

    .line 134
    iput p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->downgradeType:I

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->disabledDownGrade:Z

    const/16 v1, 0x64

    .line 136
    iput v1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->pipelineCacheMaxCount:I

    .line 137
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->usePipelineCache:Z

    .line 138
    sget p1, Lcom/taobao/android/dinamicx/DXEngineConfig;->DEFAULT_PERIOD_TIME:I

    iput p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->periodTime:I

    .line 139
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->disabledFlatten:Z

    const-wide/16 v0, 0x64

    .line 140
    iput-wide v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->tickInterval:J

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->periodTime:I

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->engineId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->downgradeType:I

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->disabledDownGrade:Z

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->pipelineCacheMaxCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->usePipelineCache:Z

    return p0
.end method

.method static synthetic access$600(Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->tickInterval:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/taobao/android/dinamicx/DXEngineConfig;
    .locals 3

    .line 221
    new-instance v0, Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->bizType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/taobao/android/dinamicx/DXEngineConfig;-><init>(Ljava/lang/String;Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;Lcom/taobao/android/dinamicx/DXEngineConfig$1;)V

    return-object v0
.end method

.method public withDisabledDownGrade(Z)Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->disabledDownGrade:Z

    return-object p0
.end method

.method public withDisabledFlatten(Z)Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->disabledFlatten:Z

    return-object p0
.end method

.method public withDowngradeType(I)Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;
    .locals 0

    .line 162
    iput p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->downgradeType:I

    return-object p0
.end method

.method public withPeriodTime(I)Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;
    .locals 0

    .line 151
    iput p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->periodTime:I

    return-object p0
.end method

.method public withPipelineCacheMaxCount(I)Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;
    .locals 0

    .line 184
    iput p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->pipelineCacheMaxCount:I

    return-object p0
.end method

.method public withTickInterval(J)Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;
    .locals 0

    .line 211
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->tickInterval:J

    return-object p0
.end method

.method public withUsePipelineCache(Z)Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->usePipelineCache:Z

    return-object p0
.end method
