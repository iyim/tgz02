.class public Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;
.super Ljava/lang/Object;
.source "ScrollBoundaryDeciderAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;


# instance fields
.field public boundary:Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;

.field public mActionEvent:Landroid/graphics/PointF;

.field public mEnableLoadMoreWhenContentNotFull:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->mEnableLoadMoreWhenContentNotFull:Z

    return-void
.end method


# virtual methods
.method public canLoadMore(Landroid/view/View;)Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->boundary:Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;->canLoadMore(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->mActionEvent:Landroid/graphics/PointF;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->canLoadMore(Landroid/view/View;Landroid/graphics/PointF;Z)Z

    move-result p1

    return p1
.end method

.method public canRefresh(Landroid/view/View;)Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->boundary:Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/ScrollBoundaryDecider;->canRefresh(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/impl/ScrollBoundaryDeciderAdapter;->mActionEvent:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->canRefresh(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method
