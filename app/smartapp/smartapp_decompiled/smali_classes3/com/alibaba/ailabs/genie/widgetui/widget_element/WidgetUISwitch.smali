.class public Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUISwitch;
.super Landroid/widget/Switch;
.source "WidgetUISwitch.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 17
    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUISwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUISwitch;->initUI()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initUI()V
    .locals 1

    .line 26
    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$drawable;->widget_ui_switch_custom_thumb_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUISwitch;->setThumbResource(I)V

    .line 27
    sget v0, Lcom/alibaba/ailabs/genie/widgetui/R$drawable;->widget_ui_switch_custom_track_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUISwitch;->setTrackResource(I)V

    const-string v0, ""

    .line 28
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUISwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUISwitch;->setTextOff(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUISwitch;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/Switch;->onMeasure(II)V

    .line 37
    :try_start_0
    const-class p1, Landroid/widget/Switch;

    const-string p2, "mSwitchWidth"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/widget_element/WidgetUISwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/widgetui/R$dimen;->widget_ui_element_switch_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-le p2, v0, :cond_0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
