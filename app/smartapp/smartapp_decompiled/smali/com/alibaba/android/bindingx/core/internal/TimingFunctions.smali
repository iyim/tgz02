.class public Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.super Ljava/lang/Object;
.source "TimingFunctions.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;,
        Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
    }
.end annotation


# static fields
.field private static final cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache<",
            "Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;-><init>(I)V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->isCacheHit(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    return-object v0
.end method

.method static synthetic access$200(DDDD)D
    .locals 0

    .line 40
    invoke-static/range {p0 .. p7}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeInBounce(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(DDDD)D
    .locals 0

    .line 40
    invoke-static/range {p0 .. p7}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBounce(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static cubicBezier()Ljava/lang/Object;
    .locals 1

    .line 64
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$2;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$2;-><init>()V

    return-object v0
.end method

.method public static easeInBack()Ljava/lang/Object;
    .locals 1

    .line 573
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$27;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$27;-><init>()V

    return-object v0
.end method

.method private static easeInBounce(DDDD)D
    .locals 8

    sub-double v0, p6, p0

    const-wide/16 v2, 0x0

    move-wide v4, p4

    move-wide v6, p6

    .line 677
    invoke-static/range {v0 .. v7}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->easeOutBounce(DDDD)D

    move-result-wide p0

    sub-double/2addr p4, p0

    add-double/2addr p4, p2

    return-wide p4
.end method

.method public static easeInBounce()Ljava/lang/Object;
    .locals 1

    .line 627
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$30;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$30;-><init>()V

    return-object v0
.end method

.method public static easeInCirc()Ljava/lang/Object;
    .locals 1

    .line 424
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$21;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$21;-><init>()V

    return-object v0
.end method

.method public static easeInCubic()Ljava/lang/Object;
    .locals 1

    .line 166
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$6;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$6;-><init>()V

    return-object v0
.end method

.method public static easeInElastic()Ljava/lang/Object;
    .locals 1

    .line 476
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$24;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$24;-><init>()V

    return-object v0
.end method

.method public static easeInExpo()Ljava/lang/Object;
    .locals 1

    .line 367
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$18;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$18;-><init>()V

    return-object v0
.end method

.method public static easeInOutBack()Ljava/lang/Object;
    .locals 1

    .line 607
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$29;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$29;-><init>()V

    return-object v0
.end method

.method public static easeInOutBounce()Ljava/lang/Object;
    .locals 1

    .line 659
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$32;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$32;-><init>()V

    return-object v0
.end method

.method public static easeInOutCirc()Ljava/lang/Object;
    .locals 1

    .line 456
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$23;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$23;-><init>()V

    return-object v0
.end method

.method public static easeInOutCubic()Ljava/lang/Object;
    .locals 1

    .line 198
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$8;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$8;-><init>()V

    return-object v0
.end method

.method public static easeInOutElastic()Ljava/lang/Object;
    .locals 1

    .line 539
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$26;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$26;-><init>()V

    return-object v0
.end method

.method public static easeInOutExpo()Ljava/lang/Object;
    .locals 1

    .line 399
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$20;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$20;-><init>()V

    return-object v0
.end method

.method public static easeInOutQuad()Ljava/lang/Object;
    .locals 1

    .line 147
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$5;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$5;-><init>()V

    return-object v0
.end method

.method public static easeInOutQuart()Ljava/lang/Object;
    .locals 1

    .line 249
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$11;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$11;-><init>()V

    return-object v0
.end method

.method public static easeInOutQuint()Ljava/lang/Object;
    .locals 1

    .line 300
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$14;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$14;-><init>()V

    return-object v0
.end method

.method public static easeInOutSine()Ljava/lang/Object;
    .locals 1

    .line 351
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$17;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$17;-><init>()V

    return-object v0
.end method

.method public static easeInQuad()Ljava/lang/Object;
    .locals 1

    .line 115
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$3;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$3;-><init>()V

    return-object v0
.end method

.method public static easeInQuart()Ljava/lang/Object;
    .locals 1

    .line 217
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$9;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$9;-><init>()V

    return-object v0
.end method

.method public static easeInQuint()Ljava/lang/Object;
    .locals 1

    .line 268
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$12;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$12;-><init>()V

    return-object v0
.end method

.method public static easeInSine()Ljava/lang/Object;
    .locals 1

    .line 319
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$15;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$15;-><init>()V

    return-object v0
.end method

.method public static easeOutBack()Ljava/lang/Object;
    .locals 1

    .line 590
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$28;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$28;-><init>()V

    return-object v0
.end method

.method private static easeOutBounce(DDDD)D
    .locals 3

    div-double/2addr p0, p6

    const-wide p6, 0x401e400000000000L    # 7.5625

    const-wide v0, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    mul-double p6, p6, p0

    mul-double p6, p6, p0

    :goto_0
    mul-double p4, p4, p6

    add-double/2addr p4, p2

    return-wide p4

    :cond_0
    const-wide v0, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    const-wide v0, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr p0, v0

    mul-double p6, p6, p0

    mul-double p6, p6, p0

    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    :goto_1
    add-double/2addr p6, p0

    goto :goto_0

    :cond_1
    const-wide v0, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v2, p0, v0

    if-gez v2, :cond_2

    const-wide v0, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr p0, v0

    mul-double p6, p6, p0

    mul-double p6, p6, p0

    const-wide/high16 p0, 0x3fee000000000000L    # 0.9375

    goto :goto_1

    :cond_2
    const-wide v0, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr p0, v0

    mul-double p6, p6, p0

    mul-double p6, p6, p0

    const-wide p0, 0x3fef800000000000L    # 0.984375

    goto :goto_1
.end method

.method public static easeOutBounce()Ljava/lang/Object;
    .locals 1

    .line 643
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$31;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$31;-><init>()V

    return-object v0
.end method

.method public static easeOutCirc()Ljava/lang/Object;
    .locals 1

    .line 440
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$22;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$22;-><init>()V

    return-object v0
.end method

.method public static easeOutCubic()Ljava/lang/Object;
    .locals 1

    .line 182
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$7;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$7;-><init>()V

    return-object v0
.end method

.method public static easeOutElastic()Ljava/lang/Object;
    .locals 1

    .line 508
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$25;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$25;-><init>()V

    return-object v0
.end method

.method public static easeOutExpo()Ljava/lang/Object;
    .locals 1

    .line 383
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$19;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$19;-><init>()V

    return-object v0
.end method

.method public static easeOutQuad()Ljava/lang/Object;
    .locals 1

    .line 131
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$4;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$4;-><init>()V

    return-object v0
.end method

.method public static easeOutQuart()Ljava/lang/Object;
    .locals 1

    .line 233
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$10;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$10;-><init>()V

    return-object v0
.end method

.method public static easeOutQuint()Ljava/lang/Object;
    .locals 1

    .line 284
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$13;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$13;-><init>()V

    return-object v0
.end method

.method public static easeOutSine()Ljava/lang/Object;
    .locals 1

    .line 335
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$16;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$16;-><init>()V

    return-object v0
.end method

.method private static isCacheHit(FFFF)Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 101
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;->cache:Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$InnerCache;->getAll()Ljava/util/Deque;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;

    .line 103
    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->x1:F

    invoke-static {v2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->x2:F

    invoke-static {v2, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->y1:F

    .line 104
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$BezierInterpolatorWrapper;->y2:F

    invoke-static {v2, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static linear()Ljava/lang/Object;
    .locals 1

    .line 47
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$1;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$1;-><init>()V

    return-object v0
.end method
