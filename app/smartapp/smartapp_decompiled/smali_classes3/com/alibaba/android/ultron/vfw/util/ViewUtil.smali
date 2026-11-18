.class public Lcom/alibaba/android/ultron/vfw/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field public static final DINAMICX_3_CUSTOM_INPUT_KEY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget v0, Lcom/alibaba/android/ultron/vfw/R$id;->dinamic_x_3_view_params_key:I

    sput v0, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->DINAMICX_3_CUSTOM_INPUT_KEY:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createZeroHeightView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 23
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    sget p0, Lcom/alibaba/android/ultron/vfw/R$id;->TAG_ULTRON_VIEW_ZERO_HEIGHT:I

    const-string v1, "ZeroHeightView"

    invoke-virtual {v0, p0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static getGradientDrawable(IFF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 40
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 41
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p0, 0x8

    .line 42
    new-array p0, p0, [F

    const/4 v1, 0x0

    aput p1, p0, v1

    const/4 v1, 0x1

    aput p1, p0, v1

    const/4 v1, 0x2

    aput p1, p0, v1

    const/4 v1, 0x3

    aput p1, p0, v1

    const/4 p1, 0x4

    aput p2, p0, p1

    const/4 p1, 0x5

    aput p2, p0, p1

    const/4 p1, 0x6

    aput p2, p0, p1

    const/4 p1, 0x7

    aput p2, p0, p1

    .line 50
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 36
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_1
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 57
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
