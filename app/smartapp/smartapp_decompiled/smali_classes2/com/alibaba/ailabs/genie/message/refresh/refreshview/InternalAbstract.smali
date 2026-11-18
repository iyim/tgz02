.class public abstract Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;
.super Landroid/widget/RelativeLayout;
.source "InternalAbstract.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;


# instance fields
.field protected mSpinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

.field protected mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

.field protected mWrappedView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    instance-of v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;-><init>(Landroid/view/View;Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/view/View;Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedView:Landroid/view/View;

    .line 45
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    .line 46
    instance-of p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshFooterWrapper;

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    instance-of v1, p1, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object p1

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->MATCH_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne p1, v1, :cond_0

    .line 47
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 48
    :cond_0
    instance-of p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshHeaderWrapper;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    instance-of v1, p1, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object p1

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->MATCH_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne p1, v1, :cond_1

    .line 49
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 59
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 60
    instance-of v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {p0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    check-cast p1, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mSpinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-eqz v0, :cond_0

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 97
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 102
    move-object v1, v0

    nop

    nop

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;->spinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mSpinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    .line 103
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mSpinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_5

    .line 108
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v1, :cond_3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 109
    :cond_3
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 110
    iget-boolean v4, v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    if-eqz v4, :cond_4

    .line 111
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mSpinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_5
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mSpinnerStyle:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedView:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public isSupportHorizontalDrag()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFinish(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Z)I
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 78
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onFinish(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onHorizontalDrag(FII)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 140
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onHorizontalDrag(FII)V

    :cond_0
    return-void
.end method

.method public onInitialized(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;II)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 123
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onInitialized(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;II)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 126
    instance-of p3, p2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;

    if-eqz p3, :cond_1

    .line 127
    nop

    nop

    iget p2, p2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$LayoutParams;->backgroundColor:I

    invoke-interface {p1, p0, p2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->requestDrawBackgroundFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    :cond_1
    :goto_0
    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 147
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onMoving(ZFIII)V

    :cond_0
    return-void
.end method

.method public onReleased(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 154
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onReleased(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V

    :cond_0
    return-void
.end method

.method public onStartAnimator(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 161
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onStartAnimator(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_4

    .line 168
    instance-of v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshFooterWrapper;

    if-eqz v1, :cond_1

    instance-of v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;

    if-eqz v0, :cond_1

    .line 169
    iget-boolean v0, p2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFooter:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->toHeader()Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    move-result-object p2

    .line 172
    :cond_0
    iget-boolean v0, p3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFooter:Z

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->toHeader()Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    move-result-object p3

    goto :goto_0

    .line 175
    :cond_1
    instance-of v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/RefreshHeaderWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    instance-of v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    if-eqz v0, :cond_3

    .line 176
    iget-boolean v0, p2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->toFooter()Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    move-result-object p2

    .line 179
    :cond_2
    iget-boolean v0, p3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    if-eqz v0, :cond_3

    .line 180
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->toFooter()Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    move-result-object p3

    .line 183
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_4

    .line 185
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/message/refresh/listener/OnStateChangedListener;->onStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    :cond_4
    return-void
.end method

.method public setNoMoreData(Z)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    instance-of v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;->setNoMoreData(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs setPrimaryColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/refreshview/InternalAbstract;->mWrappedInternal:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 86
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
