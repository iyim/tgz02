.class public interface abstract Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
.super Ljava/lang/Object;
.source "RefreshKernel.java"


# virtual methods
.method public abstract animSpinner(I)Landroid/animation/ValueAnimator;
.end method

.method public abstract finishTwoLevel()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
.end method

.method public abstract getRefreshContent()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRefreshLayout()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
.end method

.method public abstract requestDefaultTranslationContentFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestDrawBackgroundFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestFloorDuration(I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
.end method

.method public abstract requestNeedTouchEventFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestRemeasureHeightFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startTwoLevel(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
.end method
