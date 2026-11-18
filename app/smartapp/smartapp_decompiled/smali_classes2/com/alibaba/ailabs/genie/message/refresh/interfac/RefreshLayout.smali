.class public interface abstract Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.super Ljava/lang/Object;
.source "RefreshLayout.java"


# virtual methods
.method public abstract autoLoadMore()Z
.end method

.method public abstract autoLoadMore(IIFZ)Z
.end method

.method public abstract autoLoadMoreAnimationOnly()Z
.end method

.method public abstract autoRefresh()Z
.end method

.method public abstract autoRefresh(I)Z
.end method

.method public abstract autoRefresh(IIFZ)Z
.end method

.method public abstract autoRefreshAnimationOnly()Z
.end method

.method public abstract closeHeaderOrFooter()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract finishLoadMore()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract finishLoadMore(I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract finishLoadMore(IZZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract finishLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract finishLoadMoreWithNoMoreData()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract finishRefresh()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract finishRefresh(I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract finishRefresh(IZLjava/lang/Boolean;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract finishRefresh(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract finishRefreshWithNoMoreData()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract getLayout()Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRefreshFooter()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getRefreshHeader()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getState()Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract resetNoMoreData()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setDisableContentWhenLoading(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setDisableContentWhenRefresh(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableAutoLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableClipFooterWhenFixedBehind(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableClipHeaderWhenFixedBehind(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableFooterFollowWhenLoadFinished(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setEnableFooterFollowWhenNoMoreData(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableFooterTranslationContent(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableHeaderTranslationContent(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableLoadMore(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableLoadMoreWhenContentNotFull(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableNestedScroll(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableOverScrollBounce(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableOverScrollDrag(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnablePureScrollMode(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableRefresh(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableScrollContentWhenLoaded(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setEnableScrollContentWhenRefreshed(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setNoMoreData(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setOnLoadMoreListener(Lcom/alibaba/ailabs/genie/message/refresh/listener/OnLoadMoreListener;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setOnRefreshListener(Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshListener;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setOnRefreshLoadMoreListener(Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshLoadMoreListener;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public varargs abstract setPrimaryColors([I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public varargs abstract setPrimaryColorsId([I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
.end method

.method public abstract setReboundDuration(I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method

.method public abstract setRefreshFooter(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setRefreshFooter(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;II)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setRefreshHeader(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setRefreshHeader(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;II)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshHeader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setScrollBoundaryDecider(Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end method
