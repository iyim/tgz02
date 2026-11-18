.class public Lcom/alibaba/ailabs/genie/utils/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static sHeight:I

.field private static sWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getHeigth(Landroid/content/Context;)I
    .locals 1

    .line 45
    sget v0, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->sHeight:I

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "window"

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    .line 49
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    sput p0, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->sHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    :cond_0
    :goto_0
    sget p0, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->sHeight:I

    return p0
.end method

.method public static getWidth(Landroid/content/Context;)I
    .locals 1

    .line 31
    sget v0, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->sWidth:I

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "window"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    .line 35
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    sput p0, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->sWidth:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :cond_0
    :goto_0
    sget p0, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->sWidth:I

    return p0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
