.class public Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;
.super Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;
.source "RecommendYouLike.java"


# instance fields
.field private itemRoot:Landroid/view/View;

.field itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_root_1_6:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->itemRoot:Landroid/view/View;

    .line 29
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->itemRoot:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->itemViews:Ljava/util/ArrayList;

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->itemViews:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/Object;)V
    .locals 2

    .line 34
    instance-of v0, p1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V

    :goto_0
    return-void
.end method

.method public bindData(Ljava/lang/Object;I)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->itemViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V

    .line 44
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->itemRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 45
    rem-int/lit8 p2, p2, 0x6

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x418a6666    # 17.3f

    .line 62
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_1
    const/high16 p2, 0x41600000    # 14.0f

    .line 59
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    const/high16 p2, 0x41280000    # 10.5f

    .line 56
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_3
    const/high16 p2, 0x40e00000    # 7.0f

    .line 53
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_4
    const/high16 p2, 0x40600000    # 3.5f

    .line 50
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 47
    :cond_5
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 67
    :goto_0
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->itemRoot:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
