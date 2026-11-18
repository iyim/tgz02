.class public Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TRecyclerView.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/view/TRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewAdapter"
.end annotation


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private final mRecyclerView:Lcom/taobao/uikit/feature/view/TRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v7/widget/RecyclerView$Adapter;Lcom/taobao/uikit/feature/view/TRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            "Lcom/taobao/uikit/feature/view/TRecyclerView;",
            ")V"
        }
    .end annotation

    .line 525
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 526
    iput-object p3, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 527
    iput-object p4, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mRecyclerView:Lcom/taobao/uikit/feature/view/TRecyclerView;

    .line 528
    instance-of p3, p3, Landroid/widget/Filterable;

    iput-boolean p3, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mIsFilterable:Z

    if-nez p1, :cond_0

    .line 532
    sget-object p1, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    goto :goto_0

    .line 536
    :cond_0
    iput-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    :goto_0
    if-nez p2, :cond_1

    .line 541
    sget-object p1, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    goto :goto_1

    .line 545
    :cond_1
    iput-object p2, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    .line 548
    :goto_1
    iget-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_2

    .line 550
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFootersCount()I
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getHeadersCount()I

    move-result v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5

    .line 603
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getHeadersCount()I

    move-result v0

    .line 604
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getFootersCount()I

    move-result v1

    if-ge p1, v0, :cond_0

    const-wide/high16 v0, 0x1000000000000000L

    int-to-long v2, p1

    add-long/2addr v2, v0

    return-wide v2

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt p1, v2, :cond_2

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 613
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    .line 615
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    :cond_1
    const-wide/high16 v1, 0x2000000000000000L

    int-to-long v3, p1

    add-long/2addr v3, v1

    int-to-long v0, v0

    sub-long/2addr v3, v0

    return-wide v3

    .line 620
    :cond_2
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_3

    if-lt p1, v0, :cond_3

    sub-int/2addr p1, v0

    .line 623
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 626
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_3
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 725
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getHeadersCount()I

    move-result v0

    .line 726
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 729
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttachedHeaderOrFooter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 665
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getHeadersCount()I

    move-result v0

    .line 666
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getFootersCount()I

    move-result v1

    if-lt p2, v0, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt p2, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v0

    .line 715
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_a

    .line 717
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_3

    .line 669
    :cond_1
    :goto_0
    check-cast p1, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewHolder;

    .line 670
    iget-object v1, p1, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-ge p2, v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 674
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 678
    :cond_2
    iget-object v0, p1, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    sub-int/2addr p2, v0

    const/4 v0, 0x0

    .line 684
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_4

    .line 686
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 688
    :cond_4
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 689
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 691
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 693
    :cond_5
    iget-object v0, p1, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 696
    :goto_1
    iget-object p2, p1, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_6

    .line 698
    iget-object p2, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mRecyclerView:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {p2}, Lcom/taobao/uikit/feature/view/TRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p2

    .line 699
    iget-object p1, p1, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    :cond_6
    instance-of p1, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 703
    check-cast p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    goto :goto_3

    .line 705
    :cond_7
    instance-of p1, p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz p1, :cond_a

    .line 707
    iget-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mRecyclerView:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->getOrientation()I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-ne v0, p1, :cond_8

    const/4 v3, -0x1

    goto :goto_2

    :cond_8
    const/4 v3, -0x2

    .line 708
    :goto_2
    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, p1, :cond_9

    const/4 v1, -0x2

    .line 709
    :cond_9
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_a
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 657
    :cond_1
    new-instance p1, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewHolder;

    new-instance p2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mRecyclerView:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/view/TRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onDetachedHeaderOrFooter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onFailedHeaderOrFooter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 789
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 790
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->onFailedHeaderOrFooter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    .line 795
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onRecycledHeaderOrFooter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 806
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 807
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->onAttachedHeaderOrFooter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 822
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 823
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->onDetachedHeaderOrFooter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 773
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 774
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->onRecycledHeaderOrFooter(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 746
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 4

    .line 587
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 590
    iget-object v3, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 593
    iget-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 574
    iget-object v3, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 577
    iget-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$HeaderViewAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 756
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
