.class public Lcom/alibaba/genie/alarm/picker/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# static fields
.field private static sDM:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->sDM:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static dpToPx(F)I
    .locals 2

    .line 27
    sget-object v0, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->sDM:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static dpToPx(I)I
    .locals 0

    int-to-float p0, p0

    .line 23
    invoke-static {p0}, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->dpToPx(F)I

    move-result p0

    return p0
.end method

.method public static getDensity()F
    .locals 1

    .line 19
    sget-object v0, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->sDM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .line 15
    sget-object v0, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->sDM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .line 11
    sget-object v0, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->sDM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static pxToDp(I)I
    .locals 1

    int-to-float p0, p0

    .line 35
    invoke-static {}, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->getDensity()F

    move-result v0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static spToPx(F)I
    .locals 2

    .line 31
    sget-object v0, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->sDM:Landroid/util/DisplayMetrics;

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
