.class public Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;
.super Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;
.source "DSwitchConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamic/constructor/DSwitchConstructor$OnChangeListener;,
        Lcom/taobao/android/dinamic/constructor/DSwitchConstructor$DSwitchEventHandlerWorker;
    }
.end annotation


# static fields
.field private static final CHECKED_COLOR:I = -0xb000

.field private static final D_HEIGHT:Ljava/lang/String; = "dHeight"

.field private static final D_OFF_COLOR:Ljava/lang/String; = "dOffColor"

.field private static final D_ON_COLOR:Ljava/lang/String; = "dOnColor"

.field private static final D_SWITCH_ON:Ljava/lang/String; = "dSwitchOn"

.field private static final D_WIDTH:Ljava/lang/String; = "dWidth"

.field private static final STRING_CHECKED_COLOR:Ljava/lang/String; = "#ffff5000"

.field private static final STRING_UNCHECKED_COLOR:Ljava/lang/String; = "#ffe5e5e5"

.field private static final UNCHECKED_COLOR:I = -0x1a1a1b

.field private static final VIEW_EVENT_ON_CHANGE:Ljava/lang/String; = "onChange"

.field public static final VIEW_TAG:Ljava/lang/String; = "DSwitch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .line 166
    sget-object v0, Lcom/taobao/android/dinamic/constructor/DrawableTools;->STATE_CHECKED:[I

    invoke-static {p1, p2, v0}, Lcom/taobao/android/dinamic/constructor/DrawableTools;->getSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    return-object p1
.end method

.method private getThumbDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    .locals 6

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int v0, p1

    div-int/lit8 v2, p2, 0x2

    const v1, 0xffffff

    const/4 v3, -0x1

    move v4, p2

    move v5, p2

    .line 155
    invoke-static/range {v0 .. v5}, Lcom/taobao/android/dinamic/constructor/DrawableTools;->getShape(IIIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    return-object p1
.end method

.method private getTrackDrawable(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/GradientDrawable;
    .locals 6

    .line 143
    invoke-static {p2, p3}, Lcom/taobao/android/dinamic/constructor/ColorTools;->parseColor(Ljava/lang/String;I)I

    move-result v3

    .line 144
    div-int/lit8 v2, p4, 0x2

    const/4 v0, 0x0

    const v1, 0xffffff

    move v4, p4

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/android/dinamic/constructor/DrawableTools;->getShape(IIIIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    return-object p1
.end method

.method private setEnable(Landroid/view/View;Z)V
    .locals 0

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private updateInternalStatus(Landroid/support/v7/widget/SwitchCompat;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 188
    invoke-direct {p0, p2, p3}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;->getSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-virtual {p1, p4}, Landroid/support/v7/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initializeView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 175
    new-instance p1, Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p1, p2, p3}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 176
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setClickable(Z)V

    const-string p2, ""

    .line 177
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 179
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setShowText(Z)V

    .line 180
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setThumbTextPadding(I)V

    .line 181
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setSplitTrack(Z)V

    return-object p1
.end method

.method public setAttributes(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/android/dinamic/model/DinamicParams;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->setAttributes(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 55
    instance-of p4, p1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz p4, :cond_0

    .line 56
    move-object p4, p1

    nop

    nop

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const-string v0, "dHeight"

    .line 59
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "dOffColor"

    const-string v3, "dOnColor"

    const/4 v4, -0x1

    if-nez v1, :cond_1

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 70
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 73
    nop

    nop

    goto :goto_1

    :cond_2
    const-string v3, "#ffff5000"

    .line 76
    :goto_1
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 77
    nop

    nop

    goto :goto_2

    :cond_3
    const-string v2, "#ffe5e5e5"

    .line 80
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v4}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;->getThumbDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, -0xb000

    invoke-direct {p0, v6, v3, v7, v1}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;->getTrackDrawable(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, -0x1a1a1b

    invoke-direct {p0, v6, v2, v7, v1}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;->getTrackDrawable(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 87
    invoke-direct {p0, p4, v3, v1, v5}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;->updateInternalStatus(Landroid/support/v7/widget/SwitchCompat;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const-string v1, "dWidth"

    .line 91
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v4}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v0

    if-eq v1, v4, :cond_5

    if-eq v0, v4, :cond_5

    mul-int/lit8 v0, v0, 0x2

    if-lt v1, v0, :cond_5

    .line 97
    invoke-virtual {p0, p4, v1}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;->setSwitchMinWidth(Landroid/support/v7/widget/SwitchCompat;I)V

    :cond_5
    const-string v0, "dSwitchOn"

    .line 101
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/android/dinamic/expressionv2/NumberUtil;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 104
    invoke-virtual {p0, p4, v0}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;->setChecked(Landroid/support/v7/widget/SwitchCompat;Z)V

    :cond_6
    const-string p4, "dEnabled"

    .line 107
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 108
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 109
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 110
    invoke-static {p2}, Lcom/taobao/android/dinamic/expressionv2/NumberUtil;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;->setEnable(Landroid/view/View;Z)V

    goto :goto_3

    :cond_7
    const/4 p2, 0x1

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor;->setEnable(Landroid/view/View;Z)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setChecked(Landroid/support/v7/widget/SwitchCompat;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 130
    sget v0, Lcom/taobao/android/dinamic/R$id;->change_with_attribute:I

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setTag(ILjava/lang/Object;)V

    .line 131
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 132
    sget p2, Lcom/taobao/android/dinamic/R$id;->change_with_attribute:I

    const-string v0, "false"

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/SwitchCompat;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setEvents(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 2

    .line 125
    new-instance v0, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor$DSwitchEventHandlerWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor$DSwitchEventHandlerWorker;-><init>(Lcom/taobao/android/dinamic/constructor/DSwitchConstructor$1;)V

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamic/constructor/DSwitchConstructor$DSwitchEventHandlerWorker;->bindEventHandler(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    return-void
.end method

.method public setSwitchMinWidth(Landroid/support/v7/widget/SwitchCompat;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setSwitchMinWidth(I)V

    :cond_0
    return-void
.end method
