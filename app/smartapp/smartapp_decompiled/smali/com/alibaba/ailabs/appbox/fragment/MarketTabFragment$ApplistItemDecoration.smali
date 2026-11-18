.class public Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MarketTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplistItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .line 493
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    .line 496
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)I

    move-result p3

    const/high16 p4, 0x42200000    # 40.0f

    if-ge p2, p3, :cond_0

    .line 497
    invoke-static {p4}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/high16 p3, 0x41a00000    # 20.0f

    .line 499
    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 502
    :goto_0
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$1100(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p3

    .line 503
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)I

    move-result v0

    div-int v0, p3, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 504
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)I

    move-result v1

    div-int v1, p2, v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 505
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)I

    move-result v2

    rem-int/2addr p3, v2

    if-nez p3, :cond_1

    .line 506
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)I

    move-result p3

    div-int/2addr p2, p3

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    .line 507
    invoke-static {p4}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    if-ne v1, v0, :cond_2

    .line 510
    invoke-static {p4}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    :goto_1
    return-void
.end method
