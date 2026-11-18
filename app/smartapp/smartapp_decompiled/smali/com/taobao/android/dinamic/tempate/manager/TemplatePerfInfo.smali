.class public Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;
.super Ljava/lang/Object;
.source "TemplatePerfInfo.java"


# static fields
.field public static final PERF_PHASE_IN_DEFAULT:I = 0x4

.field public static final PERF_PHASE_IN_FILE:I = 0x2

.field public static final PERF_PHASE_IN_JOBJC:I = 0x5

.field public static final PERF_PHASE_IN_MEM:I = 0x1

.field public static final PERF_PHASE_IN_REMOTE:I = 0x3


# instance fields
.field public fileCostTimeMillis:J

.field public memCostTimeMillis:J

.field public module:Ljava/lang/String;

.field public networkCostTimeMillis:J

.field public phase:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->phase:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->memCostTimeMillis:J

    .line 18
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->fileCostTimeMillis:J

    .line 19
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->networkCostTimeMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->phase:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->memCostTimeMillis:J

    .line 18
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->fileCostTimeMillis:J

    .line 19
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->networkCostTimeMillis:J

    .line 10
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;->module:Ljava/lang/String;

    return-void
.end method
