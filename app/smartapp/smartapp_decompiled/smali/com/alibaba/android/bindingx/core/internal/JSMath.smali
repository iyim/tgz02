.class public Lcom/alibaba/android/bindingx/core/internal/JSMath;
.super Ljava/lang/Object;
.source "JSMath.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static sArgbEvaluator:Landroid/animation/ArgbEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 282
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static E()Ljava/lang/Object;
    .locals 2

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static PI()Ljava/lang/Object;
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 238
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static abs()Ljava/lang/Object;
    .locals 1

    .line 148
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$13;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$13;-><init>()V

    return-object v0
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/alibaba/android/bindingx/core/internal/JSMath;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100()Landroid/animation/ArgbEvaluator;
    .locals 1

    .line 36
    sget-object v0, Lcom/alibaba/android/bindingx/core/internal/JSMath;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method public static acos()Ljava/lang/Object;
    .locals 1

    .line 76
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$5;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$5;-><init>()V

    return-object v0
.end method

.method static applyOrientationValuesToScope(Ljava/util/Map;DDDDDDDDD)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;DDDDDDDDD)V"
        }
    .end annotation

    move-object v0, p0

    .line 344
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "alpha"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "beta"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "gamma"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-double v1, p1, p7

    .line 348
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "dalpha"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-double v1, p3, p9

    .line 349
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "dbeta"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-double v1, p5, p11

    .line 350
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "dgamma"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static/range {p13 .. p14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-static/range {p15 .. p16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static/range {p17 .. p18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "z"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static applyRotationInDegreesToScope(Ljava/util/Map;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;D)V"
        }
    .end annotation

    .line 338
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo p2, "r"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static applyScaleFactorToScope(Ljava/util/Map;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;D)V"
        }
    .end annotation

    .line 334
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo p2, "s"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static applyScrollValuesToScope(Ljava/util/Map;DDDDDDLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;DDDDDD",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p13

    const/4 v2, 0x0

    .line 364
    new-array v3, v2, [Ljava/lang/Object;

    move-wide v4, p1

    invoke-interface {v1, p1, p2, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v6, "x"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-array v3, v2, [Ljava/lang/Object;

    move-wide v6, p3

    invoke-interface {v1, p3, p4, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v8, "y"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-array v3, v2, [Ljava/lang/Object;

    move-wide v8, p5

    invoke-interface {v1, v8, v9, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v8, "dx"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-array v3, v2, [Ljava/lang/Object;

    move-wide/from16 v8, p7

    invoke-interface {v1, v8, v9, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v8, "dy"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-array v3, v2, [Ljava/lang/Object;

    move-wide/from16 v8, p9

    invoke-interface {v1, v8, v9, v3}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v8, "tdx"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-array v2, v2, [Ljava/lang/Object;

    move-wide/from16 v8, p11

    invoke-interface {v1, v8, v9, v2}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "tdy"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "internal_x"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "internal_y"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static applySpringValueToScope(Ljava/util/Map;DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;DD)V"
        }
    .end annotation

    .line 329
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "p"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo p2, "v"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static applyTimingValuesToScope(Ljava/util/Map;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;D)V"
        }
    .end annotation

    .line 359
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo p2, "t"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static applyXYToScope(Ljava/util/Map;DDLcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;DD",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 322
    new-array v1, v0, [Ljava/lang/Object;

    invoke-interface {p5, p1, p2, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p5, p3, p4, v0}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    const-string/jumbo v0, "y"

    invoke-interface {p0, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "internal_x"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "internal_y"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static asArray()Ljava/lang/Object;
    .locals 1

    .line 313
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$23;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$23;-><init>()V

    return-object v0
.end method

.method public static asin()Ljava/lang/Object;
    .locals 1

    .line 67
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$4;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$4;-><init>()V

    return-object v0
.end method

.method public static atan()Ljava/lang/Object;
    .locals 1

    .line 85
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$6;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$6;-><init>()V

    return-object v0
.end method

.method public static atan2()Ljava/lang/Object;
    .locals 1

    .line 94
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$7;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$7;-><init>()V

    return-object v0
.end method

.method public static cbrt()Ljava/lang/Object;
    .locals 1

    .line 130
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$11;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$11;-><init>()V

    return-object v0
.end method

.method public static ceil()Ljava/lang/Object;
    .locals 1

    .line 173
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$15;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$15;-><init>()V

    return-object v0
.end method

.method public static cos()Ljava/lang/Object;
    .locals 1

    .line 50
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$2;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$2;-><init>()V

    return-object v0
.end method

.method public static evaluateColor()Ljava/lang/Object;
    .locals 1

    .line 286
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$22;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$22;-><init>()V

    return-object v0
.end method

.method public static exp()Ljava/lang/Object;
    .locals 1

    .line 112
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$9;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$9;-><init>()V

    return-object v0
.end method

.method public static floor()Ljava/lang/Object;
    .locals 1

    .line 182
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$16;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$16;-><init>()V

    return-object v0
.end method

.method public static log()Ljava/lang/Object;
    .locals 1

    .line 139
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$12;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$12;-><init>()V

    return-object v0
.end method

.method public static max()Ljava/lang/Object;
    .locals 1

    .line 200
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$18;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$18;-><init>()V

    return-object v0
.end method

.method public static min()Ljava/lang/Object;
    .locals 1

    .line 219
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$19;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$19;-><init>()V

    return-object v0
.end method

.method private static parseColor(Ljava/lang/String;)I
    .locals 3

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\'"

    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 306
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0xff

    .line 307
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    .line 300
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown color"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pow()Ljava/lang/Object;
    .locals 1

    .line 103
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$8;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$8;-><init>()V

    return-object v0
.end method

.method public static rgb()Ljava/lang/Object;
    .locals 1

    .line 247
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$20;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$20;-><init>()V

    return-object v0
.end method

.method public static rgba()Ljava/lang/Object;
    .locals 1

    .line 265
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$21;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$21;-><init>()V

    return-object v0
.end method

.method public static round()Ljava/lang/Object;
    .locals 1

    .line 191
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$17;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$17;-><init>()V

    return-object v0
.end method

.method public static sign()Ljava/lang/Object;
    .locals 1

    .line 157
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$14;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$14;-><init>()V

    return-object v0
.end method

.method public static sin()Ljava/lang/Object;
    .locals 1

    .line 42
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$1;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$1;-><init>()V

    return-object v0
.end method

.method public static sqrt()Ljava/lang/Object;
    .locals 1

    .line 121
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$10;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$10;-><init>()V

    return-object v0
.end method

.method public static tan()Ljava/lang/Object;
    .locals 1

    .line 58
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/JSMath$3;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/JSMath$3;-><init>()V

    return-object v0
.end method
