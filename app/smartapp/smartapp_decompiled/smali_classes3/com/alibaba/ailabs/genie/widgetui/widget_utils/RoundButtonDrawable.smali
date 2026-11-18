.class public Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "RoundButtonDrawable.java"


# instance fields
.field private mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->mStrokeWidth:I

    return-void
.end method

.method public static fromAttrSet(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;
    .locals 8

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/R$styleable;->widget_ui_button_style:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    sget p2, Lcom/alibaba/ailabs/genie/widgetui/R$styleable;->widget_ui_button_style_bgColor:I

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_shadow_white:I

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 33
    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$styleable;->widget_ui_button_style_radius:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 34
    sget v2, Lcom/alibaba/ailabs/genie/widgetui/R$styleable;->widget_ui_button_style_topLeftRadius:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 35
    sget v3, Lcom/alibaba/ailabs/genie/widgetui/R$styleable;->widget_ui_button_style_topRightRadius:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 36
    sget v4, Lcom/alibaba/ailabs/genie/widgetui/R$styleable;->widget_ui_button_style_bottomRightRadius:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 37
    sget v5, Lcom/alibaba/ailabs/genie/widgetui/R$styleable;->widget_ui_button_style_bottomLeftRadius:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 38
    sget v6, Lcom/alibaba/ailabs/genie/widgetui/R$styleable;->widget_ui_button_style_strokeColor:I

    sget v7, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_neutral_color_gray1:I

    invoke-static {p0, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, v6, p0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    .line 39
    sget v6, Lcom/alibaba/ailabs/genie/widgetui/R$styleable;->widget_ui_button_style_strokeWidth:I

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    new-instance p1, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;-><init>()V

    .line 44
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setColor(I)V

    if-gtz v2, :cond_1

    if-gtz v3, :cond_1

    if-gtz v5, :cond_1

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, v0

    .line 55
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setCornerRadius(F)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p2, 0x8

    .line 47
    new-array p2, p2, [F

    int-to-float v0, v2

    aput v0, p2, v1

    const/4 v1, 0x1

    aput v0, p2, v1

    const/4 v0, 0x2

    int-to-float v1, v3

    aput v1, p2, v0

    const/4 v0, 0x3

    aput v1, p2, v0

    const/4 v0, 0x4

    int-to-float v1, v4

    aput v1, p2, v0

    const/4 v0, 0x5

    aput v1, p2, v0

    const/4 v0, 0x6

    int-to-float v1, v5

    aput v1, p2, v0

    const/4 v0, 0x7

    aput v1, p2, v0

    .line 53
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setCornerRadii([F)V

    .line 58
    :goto_1
    invoke-virtual {p1, v6, p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setStrokeData(II)V

    return-object p1
.end method


# virtual methods
.method public setStrokeColor(I)V
    .locals 1

    .line 27
    iget v0, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->mStrokeWidth:I

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setStrokeData(II)V

    return-void
.end method

.method public setStrokeData(II)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->mStrokeWidth:I

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setStroke(II)V

    return-void
.end method
