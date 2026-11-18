.class public abstract Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
.super Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;
.source "InternalClassics.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;",
        ">",
        "Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;",
        "Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;"
    }
.end annotation


# static fields
.field public static final ID_IMAGE_ARROW:I

.field public static final ID_IMAGE_PROGRESS:I

.field public static final ID_TEXT_TITLE:I


# instance fields
.field protected mArrowDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

.field protected mArrowView:Landroid/widget/ImageView;

.field protected mBackgroundColor:I

.field protected mFinishDuration:I

.field protected mMinHeightOfContent:I

.field protected mPaddingBottom:I

.field protected mPaddingTop:I

.field protected mProgressDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

.field protected mProgressView:Landroid/widget/ImageView;

.field protected mRefreshKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

.field protected mSetAccentColor:Z

.field protected mSetPrimaryColor:Z

.field protected mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->srl_classics_title:I

    sput v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->ID_TEXT_TITLE:I

    .line 37
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->srl_classics_arrow:I

    sput v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->ID_IMAGE_ARROW:I

    .line 38
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->srl_classics_progress:I

    sput v0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->ID_IMAGE_PROGRESS:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1f4

    .line 51
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mFinishDuration:I

    const/16 p1, 0x14

    .line 52
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingTop:I

    .line 53
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingBottom:I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mMinHeightOfContent:I

    .line 59
    sget-object p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mSpinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->onDetachedFromWindow()V

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    .line 106
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    .line 112
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_1
    return-void
.end method

.method public onFinish(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Z)I
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 152
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 153
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 154
    instance-of v0, p2, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 155
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    const/16 p2, 0x8

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mFinishDuration:I

    return p1
.end method

.method public onInitialized(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;II)V
    .locals 0
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mRefreshKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 128
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mRefreshKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    iget p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mBackgroundColor:I

    invoke-interface {p1, p0, p2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->requestDrawBackgroundFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 65
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mMinHeightOfContent:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingTop:I

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingBottom:I

    .line 68
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingTop:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingBottom:I

    if-nez v0, :cond_3

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 71
    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingTop:I

    const/high16 v4, 0x41a00000    # 20.0f

    if-nez v3, :cond_1

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result v3

    :cond_1
    iput v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingTop:I

    .line 72
    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingBottom:I

    if-nez v3, :cond_2

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result v3

    :cond_2
    iput v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingBottom:I

    .line 73
    iget v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingTop:I

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingBottom:I

    invoke-virtual {p0, v0, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 76
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 78
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_6

    .line 79
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 80
    iget v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mMinHeightOfContent:I

    if-ge v0, v2, :cond_5

    sub-int/2addr v0, v2

    .line 81
    div-int/lit8 v0, v0, 0x2

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 87
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mPaddingBottom:I

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->onMeasure(II)V

    .line 90
    iget p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mMinHeightOfContent:I

    if-nez p1, :cond_8

    .line 92
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_8

    .line 93
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 94
    iget p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mMinHeightOfContent:I

    if-ge p2, p1, :cond_7

    .line 95
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mMinHeightOfContent:I

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public onReleased(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V
    .locals 0
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->onStartAnimator(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V

    return-void
.end method

.method public onStartAnimator(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V
    .locals 0
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 137
    instance-of p3, p2, Landroid/graphics/drawable/Animatable;

    if-eqz p3, :cond_0

    .line 138
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x470ca000    # 36000.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/32 p2, 0x186a0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method protected self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public setAccentColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mSetAccentColor:Z

    .line 225
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;->setColor(I)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;->setColor(I)V

    .line 232
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setAccentColorId(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->setAccentColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setArrowDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setArrowResource(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableArrowSize(F)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 290
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableMarginRight(F)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    .line 264
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 265
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 266
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 267
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 268
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableProgressSize(F)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 298
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setDrawableSize(F)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    .line 276
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 278
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 279
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 280
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 281
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setFinishDuration(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 250
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mFinishDuration:I

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mSetPrimaryColor:Z

    .line 216
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mBackgroundColor:I

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mRefreshKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->requestDrawBackgroundFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryColorId(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->setPrimaryColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    .line 240
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 167
    array-length v0, p1

    if-lez v0, :cond_3

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mSetPrimaryColor:Z

    if-nez v0, :cond_0

    .line 170
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->setPrimaryColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    .line 171
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mSetPrimaryColor:Z

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mSetAccentColor:Z

    if-nez v0, :cond_3

    .line 174
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 175
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->setAccentColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    goto :goto_0

    .line 177
    :cond_1
    aget p1, p1, v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const v0, -0x99999a

    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->setAccentColor(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    .line 179
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mSetAccentColor:Z

    :cond_3
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setProgressResource(I)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressDrawable:Lcom/alibaba/ailabs/genie/message/refresh/refreshview/PaintDrawable;

    .line 193
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setSpinnerStyle(Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;",
            ")TT;"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mSpinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method

.method public setTextSizeTitle(F)Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 256
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->mRefreshKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    if-eqz p1, :cond_0

    .line 257
    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->requestRemeasureHeightFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;->self()Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalClassics;

    move-result-object p1

    return-object p1
.end method
