.class Lcom/taobao/android/AliMonitorMeasureValue$Bucket;
.super Ljava/lang/Object;
.source "AliMonitorMeasureValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/AliMonitorMeasureValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bucket"
.end annotation


# instance fields
.field private count:J

.field private max:Ljava/lang/Double;

.field private min:Ljava/lang/Double;

.field final synthetic this$0:Lcom/taobao/android/AliMonitorMeasureValue;


# direct methods
.method public constructor <init>(Lcom/taobao/android/AliMonitorMeasureValue;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2

    .line 218
    iput-object p1, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->this$0:Lcom/taobao/android/AliMonitorMeasureValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 216
    iput-wide v0, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->count:J

    .line 219
    iput-object p2, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->min:Ljava/lang/Double;

    .line 220
    iput-object p3, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->max:Ljava/lang/Double;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/AliMonitorMeasureValue$Bucket;)J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->count:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/taobao/android/AliMonitorMeasureValue$Bucket;)Ljava/lang/Double;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->min:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/android/AliMonitorMeasureValue$Bucket;)Ljava/lang/Double;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->max:Ljava/lang/Double;

    return-object p0
.end method


# virtual methods
.method public in(Ljava/lang/Double;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->min:Ljava/lang/Double;

    .line 228
    iget-object v2, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->max:Ljava/lang/Double;

    if-nez v1, :cond_1

    const-wide/16 v3, 0x1

    .line 230
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_1
    if-nez v2, :cond_2

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 233
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 236
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpg-double p1, v3, v1

    if-gez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public increase()V
    .locals 4

    .line 244
    iget-wide v0, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/android/AliMonitorMeasureValue$Bucket;->count:J

    return-void
.end method
