.class public Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DXNativeLinearLayout.java"


# instance fields
.field private cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    if-nez v0, :cond_0

    .line 73
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->isUseClipOutLine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->beforeDispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 83
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 84
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->afterDispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCLipRadiusHandler()Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 50
    invoke-virtual {p0, p2}, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 54
    sget p4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->TAG_WIDGET_NODE:I

    invoke-virtual {p3, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 55
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeft()I

    move-result p5

    .line 56
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTop()I

    move-result v0

    .line 57
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeft()I

    move-result v1

    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 58
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTop()I

    move-result v2

    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result p4

    add-int/2addr v2, p4

    .line 55
    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClipRadiusHandler(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    return-void
.end method
