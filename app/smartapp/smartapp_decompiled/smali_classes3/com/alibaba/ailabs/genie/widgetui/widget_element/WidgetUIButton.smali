.class public Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "WidgetUIButton.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private roundButtonDrawable:Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;

.field private style:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p1, p2, p3}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->fromAttrSet(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->roundButtonDrawable:Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;

    .line 30
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->roundButtonDrawable:Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIDensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIDensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getStyle()Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->style:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->roundButtonDrawable:Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setColor(I)V

    return-void
.end method

.method public setEachCornerRadius(IIII)V
    .locals 2

    const/16 v0, 0x8

    .line 81
    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x2

    aput p1, v0, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    int-to-float p1, p3

    const/4 p2, 0x4

    aput p1, v0, p2

    const/4 p2, 0x5

    aput p1, v0, p2

    int-to-float p1, p4

    const/4 p2, 0x6

    aput p1, v0, p2

    const/4 p2, 0x7

    aput p1, v0, p2

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->roundButtonDrawable:Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setCornerRadii([F)V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->roundButtonDrawable:Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setCornerRadius(F)V

    return-void
.end method

.method public setStrokeColors(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->roundButtonDrawable:Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setStrokeColor(I)V

    return-void
.end method

.method public setStrokeData(II)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->roundButtonDrawable:Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/RoundButtonDrawable;->setStrokeData(II)V

    return-void
.end method

.method public updateButtonStyle(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;)V
    .locals 2

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->style:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;

    .line 93
    sget-object v0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton$1;->$SwitchMap$com$alibaba$ailabs$genie$widgetui$widget_enum$WidgetUIButtonStyle:[I

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_neutral_color_white1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setTextColor(I)V

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_button_normal_border_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setStrokeData(II)V

    .line 107
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_multicolour_red:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setBackgroundColor(I)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_neutral_color_white1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setTextColor(I)V

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_button_normal_border_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setStrokeData(II)V

    .line 102
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_multicolour_blue:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setBackgroundColor(I)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_neutral_color_gray2:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setTextColor(I)V

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_button_normal_border_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setStrokeData(II)V

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$color;->widget_ui_shadow_white:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUIButton;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
