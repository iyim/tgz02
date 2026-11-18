.class public Lcom/alibaba/genie/alarm/picker/ScrollPickerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "ScrollPickerView.java"


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;

.field private mFirstAmend:Z

.field private mFirstLineY:I

.field private mInitialY:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mSecondLineY:I

.field private mSmoothScrollTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->initTask()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getScrollYDistance()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mInitialY:I

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mInitialY:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)Ljava/lang/Runnable;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mSmoothScrollTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemHeight:I

    return p0
.end method

.method private freshItemView()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 190
    invoke-virtual {p0, v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 191
    invoke-virtual {p0, v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mFirstLineY:I

    int-to-float v4, v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_0

    iget v4, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mSecondLineY:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->updateView(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getItemSelectedOffset()I
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;->getSelectedItemOffset()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getLineColor()I
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;->getLineColor()I

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-interface {v0}, Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;->getLineColor()I

    move-result v0

    return v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/basedomain/R$color;->colorPrimary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getScrollYDistance()I
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 82
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 86
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int v2, v2, v1

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method private getVisibleItemNumber()I
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;->getVisibleItemNumber()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method private initPaint()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mBgPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mBgPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mBgPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method private initTask()V
    .locals 1

    .line 134
    new-instance v0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;-><init>(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)V

    iput-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mSmoothScrollTask:Ljava/lang/Runnable;

    return-void
.end method

.method private measureSize()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 114
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemHeight:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0, v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemHeight:I

    .line 117
    :cond_0
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemWidth:I

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0, v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemWidth:I

    .line 121
    :cond_1
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mFirstLineY:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mSecondLineY:I

    if-nez v0, :cond_3

    .line 122
    :cond_2
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemHeight:I

    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getItemSelectedOffset()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mFirstLineY:I

    .line 123
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemHeight:I

    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getItemSelectedOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    iput v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mSecondLineY:I

    :cond_3
    return-void
.end method

.method private processItemOffset()V
    .locals 3

    .line 129
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getScrollYDistance()I

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mInitialY:I

    .line 130
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mSmoothScrollTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateView(Landroid/view/View;Z)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/alarm/picker/IPickerViewOperation;->updateView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 41
    iget v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemHeight:I

    if-lez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getWidth()I

    move-result v0

    .line 43
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->dpToPx(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 44
    iget v2, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemWidth:I

    add-int/2addr v2, v0

    invoke-static {v1}, Lcom/alibaba/genie/alarm/picker/ScreenUtil;->dpToPx(I)I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v0, v0

    .line 46
    iget v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mFirstLineY:I

    int-to-float v5, v1

    int-to-float v2, v2

    int-to-float v7, v1

    iget-object v8, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mBgPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v0

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 47
    iget v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mSecondLineY:I

    int-to-float v5, v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 197
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 198
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->initPaint()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->doDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-boolean p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mFirstAmend:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mFirstAmend:Z

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getItemSelectedOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 p1, 0x0

    .line 102
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const p2, 0x1fffffff

    const/high16 v0, -0x80000000

    .line 103
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 105
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 107
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->measureSize()V

    .line 109
    iget p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemWidth:I

    iget p2, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->mItemHeight:I

    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->getVisibleItemNumber()I

    move-result v0

    mul-int p2, p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 64
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->freshItemView()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->processItemOffset()V

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
