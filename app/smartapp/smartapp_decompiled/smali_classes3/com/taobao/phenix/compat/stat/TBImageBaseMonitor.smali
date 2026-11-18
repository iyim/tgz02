.class public abstract Lcom/taobao/phenix/compat/stat/TBImageBaseMonitor;
.super Ljava/lang/Object;
.source "TBImageBaseMonitor.java"


# static fields
.field public static final CONST_0:Ljava/lang/String; = "0"

.field public static final CONST_1:Ljava/lang/String; = "1"

.field public static final COVERAGE_RANGE_MAX:I = 0x64

.field public static final COVERAGE_RANGE_MIN:I = 0x0

.field static final MEASURE_TIME_MAX_VALUE:D = 30000.0

.field private static sRandom:Ljava/util/Random;


# instance fields
.field protected mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/taobao/phenix/compat/stat/TBImageBaseMonitor;->sRandom:Ljava/util/Random;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static randomEnabled(I)Z
    .locals 2

    .line 25
    sget-object v0, Lcom/taobao/phenix/compat/stat/TBImageBaseMonitor;->sRandom:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected filterOutThisStat(I)Z
    .locals 1

    if-lez p1, :cond_1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 21
    invoke-static {p1}, Lcom/taobao/phenix/compat/stat/TBImageBaseMonitor;->randomEnabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v0, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 31
    invoke-virtual {v0, p4, p5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 33
    :cond_0
    invoke-virtual {p1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    return-void
.end method

.method protected abstract registerAppMonitor()V
.end method
