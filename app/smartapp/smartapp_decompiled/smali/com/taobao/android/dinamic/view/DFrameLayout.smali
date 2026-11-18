.class public Lcom/taobao/android/dinamic/view/DFrameLayout;
.super Landroid/widget/FrameLayout;
.source "DFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private calculateSize(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    return p3
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 131
    invoke-static {p0, p1}, Lcom/taobao/android/dinamic/DinamicViewUtils;->clipCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 132
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 125
    invoke-static {p0, p1}, Lcom/taobao/android/dinamic/DinamicViewUtils;->clipCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 126
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/view/DFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 11

    const-string v0, "DFrameLayout"

    .line 53
    invoke-static {v0}, Lcom/taobao/android/dinamic/Dinamic;->getViewConstructor(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->handleAttributeSet(Landroid/util/AttributeSet;)Lcom/taobao/android/dinamic/property/DinamicProperty;

    move-result-object p1

    .line 55
    iget-object p1, p1, Lcom/taobao/android/dinamic/property/DinamicProperty;->fixedProperty:Ljava/util/Map;

    .line 57
    invoke-static {p1}, Lcom/taobao/android/dinamic/property/DAttrUtils;->getLayoutGravity(Ljava/util/Map;)I

    move-result v0

    const-string v1, "dWidth"

    .line 58
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "dHeight"

    .line 59
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/taobao/android/dinamic/view/DFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/taobao/android/dinamic/property/DAttrUtils;->getViewSizeAndMargin(Landroid/content/Context;Ljava/util/Map;)[I

    move-result-object v3

    .line 62
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v7, 0x1

    aget v8, v3, v7

    invoke-direct {v4, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v6, 0x2

    .line 65
    aget v6, v3, v6

    const/4 v8, 0x3

    aget v8, v3, v8

    const/4 v9, 0x4

    aget v9, v3, v9

    const/4 v10, 0x5

    aget v10, v3, v10

    invoke-virtual {v4, v6, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    const/16 v0, 0x33

    :cond_0
    and-int/lit8 v6, v0, 0x3

    const-string v8, "np"

    if-eqz v6, :cond_1

    .line 72
    aget v6, v3, v5

    if-lez v6, :cond_1

    const-string v6, "dMarginLeft"

    .line 73
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 74
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 76
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 77
    aget v9, v3, v5

    invoke-direct {p0, v1, v6, v9}, Lcom/taobao/android/dinamic/view/DFrameLayout;->calculateSize(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_1
    and-int/lit8 v6, v0, 0x5

    if-eqz v6, :cond_2

    .line 80
    aget v6, v3, v5

    if-lez v6, :cond_2

    const-string v6, "dMarginRight"

    .line 81
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 82
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 84
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 85
    aget v5, v3, v5

    invoke-direct {p0, v1, v6, v5}, Lcom/taobao/android/dinamic/view/DFrameLayout;->calculateSize(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_2
    and-int/lit8 v1, v0, 0x30

    if-eqz v1, :cond_3

    .line 88
    aget v1, v3, v7

    if-lez v1, :cond_3

    const-string v1, "dMarginTop"

    .line 89
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 93
    aget v5, v3, v7

    invoke-direct {p0, v2, v1, v5}, Lcom/taobao/android/dinamic/view/DFrameLayout;->calculateSize(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_3
    and-int/lit8 v0, v0, 0x50

    if-eqz v0, :cond_4

    .line 96
    aget v0, v3, v7

    if-lez v0, :cond_4

    const-string v0, "dMarginBottom"

    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    aget v0, v3, v7

    invoke-direct {p0, v2, p1, v0}, Lcom/taobao/android/dinamic/view/DFrameLayout;->calculateSize(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_4
    return-object v4
.end method
