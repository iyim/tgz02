.class public Lcom/taobao/uikit/extend/component/TBCircularProgress;
.super Landroid/widget/LinearLayout;
.source "TBCircularProgress.java"


# instance fields
.field private mAlpha:F

.field private mProgressBackground:Landroid/graphics/drawable/Drawable;

.field private mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

.field private mProgressText:Ljava/lang/String;

.field private mProgressView:Landroid/widget/ImageView;

.field private mRingColor:I

.field private mRingSize:I

.field private mRingWidth:I

.field private mTextColor:I

.field private mTextSize:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iput v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mAlpha:F

    .line 71
    new-instance v0, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    const/4 v1, -0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {v0, v1, v2}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;-><init>(IF)V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    .line 72
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    invoke-virtual {v0, p0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 73
    sget v0, Lcom/taobao/uikit/extend/R$layout;->uik_circular_progress:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_circularProgress:I

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressView:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_progressText:I

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->setOrientation(I)V

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->updateView()V

    return-void
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    sget-object v2, Lcom/taobao/uikit/extend/R$styleable;->TBCircularProgress:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 95
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBCircularProgress_uik_ringColor:I

    sget p3, Lcom/taobao/uikit/extend/R$color;->uik_ringColor:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingColor:I

    .line 96
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBCircularProgress_uik_ringWidth:I

    sget p3, Lcom/taobao/uikit/extend/R$dimen;->uik_ringWidth:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingWidth:I

    .line 97
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBCircularProgress_uik_ringSize:I

    sget p3, Lcom/taobao/uikit/extend/R$dimen;->uik_ringSize:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingSize:I

    .line 99
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBCircularProgress_uik_progressText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressText:Ljava/lang/String;

    .line 100
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBCircularProgress_uik_progressTextSize:I

    sget p3, Lcom/taobao/uikit/extend/R$dimen;->uik_progressTextSize:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextSize:I

    .line 101
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBCircularProgress_uik_progressTextColor:I

    sget p3, Lcom/taobao/uikit/extend/R$color;->uik_progressTextColor:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextColor:I

    .line 103
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBCircularProgress_uik_progressAlpha:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mAlpha:F

    .line 104
    sget p2, Lcom/taobao/uikit/extend/R$styleable;->TBCircularProgress_uik_progressBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressBackground:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object p2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 107
    sget p2, Lcom/taobao/uikit/extend/R$drawable;->uik_shape_waitview:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressBackground:Landroid/graphics/drawable/Drawable;

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$color;->uik_ringColor:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingColor:I

    .line 113
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_ringWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingWidth:I

    .line 114
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_ringSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingSize:I

    .line 116
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$dimen;->uik_progressTextSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextSize:I

    .line 117
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$color;->uik_progressTextColor:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextColor:I

    .line 119
    iput v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mAlpha:F

    .line 120
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/taobao/uikit/extend/R$drawable;->uik_shape_waitview:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressBackground:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    iget v1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingColor:I

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->setRingColor(I)V

    .line 128
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    iget v1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->setRingWidth(F)V

    .line 130
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mAlpha:F

    invoke-virtual {p0, v0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 156
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->start()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 163
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 164
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 150
    iget-object p3, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->setBounds(IIII)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 171
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 172
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->start()V

    goto :goto_1

    .line 174
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->stop()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressText:Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->updateView()V

    return-void
.end method

.method public setRingColor(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingColor:I

    .line 191
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->updateView()V

    return-void
.end method

.method public setRingSize(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingSize:I

    .line 207
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->updateView()V

    return-void
.end method

.method public setRingWidth(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mRingWidth:I

    .line 199
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->updateView()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextColor:I

    .line 231
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->updateView()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mTextSize:I

    .line 223
    invoke-direct {p0}, Lcom/taobao/uikit/extend/component/TBCircularProgress;->updateView()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBCircularProgress;->mProgressDrawable:Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
