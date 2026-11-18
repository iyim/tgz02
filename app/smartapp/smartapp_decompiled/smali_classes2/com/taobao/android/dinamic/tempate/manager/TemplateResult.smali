.class public Lcom/taobao/android/dinamic/tempate/manager/TemplateResult;
.super Ljava/lang/Object;
.source "TemplateResult.java"


# instance fields
.field public arrivedPhase:I

.field public content:Ljava/lang/String;

.field public fileCostTimeMillis:J

.field public jsonCostTimeMillis:J

.field public jsonObject:Lcom/alibaba/fastjson/JSONObject;

.field public loadDefault:Z

.field public memCostTimeMillis:J

.field public networkCostTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateResult;->arrivedPhase:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateResult;->memCostTimeMillis:J

    .line 22
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateResult;->fileCostTimeMillis:J

    .line 24
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateResult;->networkCostTimeMillis:J

    .line 26
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateResult;->jsonCostTimeMillis:J

    return-void
.end method


# virtual methods
.method public fillPerfInfo(Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;)V
    .locals 2

    .line 29
    iget v0, p1, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->phase:I

    iput v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateResult;->arrivedPhase:I

    .line 30
    iget-wide v0, p1, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->memCostTimeMillis:J

    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateResult;->memCostTimeMillis:J

    .line 31
    iget-wide v0, p1, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->fileCostTimeMillis:J

    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateResult;->fileCostTimeMillis:J

    .line 32
    iget-wide v0, p1, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->networkCostTimeMillis:J

    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateResult;->networkCostTimeMillis:J

    return-void
.end method
