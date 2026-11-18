.class public Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;
.super Landroid/widget/LinearLayout;
.source "DXNativePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;
    }
.end annotation


# instance fields
.field private final IMAGE_VIEW_TYPE:I

.field private currentIndex:I

.field private itemMargin:I

.field private itemRoundDiameter:I

.field final recycledPool:Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;

.field private selectedDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private unselectedDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->currentIndex:I

    .line 31
    new-instance p1, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->recycledPool:Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->IMAGE_VIEW_TYPE:I

    .line 37
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->currentIndex:I

    .line 31
    new-instance p1, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->recycledPool:Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->IMAGE_VIEW_TYPE:I

    .line 42
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->currentIndex:I

    .line 31
    new-instance p1, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->recycledPool:Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->IMAGE_VIEW_TYPE:I

    .line 47
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->setOrientation(I)V

    const/16 v0, 0x11

    .line 52
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->setGravity(I)V

    return-void
.end method

.method private recycleView(I)V
    .locals 2

    .line 179
    invoke-super {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 184
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 186
    iget-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->recycledPool:Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->putRecycledView(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addChildViews(II)V
    .locals 6

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, p1, :cond_1

    .line 111
    invoke-direct {p0, v1}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->recycleView(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_7

    const/4 v3, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 119
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    :cond_2
    if-nez v3, :cond_4

    .line 123
    iget-object v3, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->recycledPool:Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;

    invoke-virtual {v3, v2}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-nez v3, :cond_3

    .line 125
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 128
    :cond_3
    invoke-virtual {p0, v3}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->addView(Landroid/view/View;)V

    :cond_4
    if-ne v1, p2, :cond_5

    .line 132
    iget-object v4, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->selectedDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iput p2, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->currentIndex:I

    goto :goto_2

    .line 135
    :cond_5
    iget-object v4, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->unselectedDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :goto_2
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->itemRoundDiameter:I

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    add-int/lit8 v5, p1, -0x1

    if-eq v1, v5, :cond_6

    .line 141
    iget v5, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->itemMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 143
    :cond_6
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 146
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->currentIndex:I

    return v0
.end method

.method public getItemMargin()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->itemMargin:I

    return v0
.end method

.method public getItemRoundDiameter()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->itemRoundDiameter:I

    return v0
.end method

.method public getSelectedDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->selectedDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getUnselectedDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->unselectedDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public setItemMargin(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->itemMargin:I

    return-void
.end method

.method public setItemRoundDiameter(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->itemRoundDiameter:I

    return-void
.end method

.method public setSelectedDrawable(I)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->selectedDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 60
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 61
    iget p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->itemRoundDiameter:I

    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 62
    iget p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->itemRoundDiameter:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 63
    iput-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->selectedDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setSelectedView(I)V
    .locals 2

    .line 85
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->currentIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-void

    .line 93
    :cond_1
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 94
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 95
    iget-object v1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->unselectedDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_2
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    iget-object v1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->selectedDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->currentIndex:I

    return-void
.end method

.method public setUnselectedDrawable(I)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->unselectedDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 75
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76
    iget p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->itemRoundDiameter:I

    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 77
    iget p1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->itemRoundDiameter:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 78
    iput-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->unselectedDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    return-void
.end method
