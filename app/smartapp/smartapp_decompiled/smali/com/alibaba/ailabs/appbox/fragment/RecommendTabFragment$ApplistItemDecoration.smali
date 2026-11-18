.class public Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$ApplistItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "RecommendTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplistItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$ApplistItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 517
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    .line 518
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$ApplistItemDecoration;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_0

    const/high16 p2, 0x43380000    # 184.0f

    .line 521
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
