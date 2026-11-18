.class Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SkillTabPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 126
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 134
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    if-nez p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, -0xf

    if-lt v0, p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
