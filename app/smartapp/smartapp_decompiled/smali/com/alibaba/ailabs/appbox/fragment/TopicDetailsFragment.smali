.class public Lcom/alibaba/ailabs/appbox/fragment/TopicDetailsFragment;
.super Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;
.source "TopicDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mRvTopic:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public doOlnyOnceAtAfterStart()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getLayoutId()I
    .locals 1

    .line 27
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->fragment_topic_detail:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_back:I

    if-ne p1, v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/TopicDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    sget p2, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    sget p2, Lcom/alibaba/ailabs/appbox/R$id;->rv_topic:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/TopicDetailsFragment;->mRvTopic:Landroid/support/v7/widget/RecyclerView;

    .line 40
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/TopicDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 41
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/TopicDetailsFragment;->mRvTopic:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 42
    new-instance p1, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;

    invoke-direct {p1}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;-><init>()V

    .line 43
    new-instance p2, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicTitleAndDescAdapter;

    invoke-direct {p2}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicTitleAndDescAdapter;-><init>()V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->addDelegate(Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;)V

    .line 44
    new-instance p2, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter;

    invoke-direct {p2}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter;-><init>()V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->addDelegate(Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;)V

    .line 45
    new-instance p2, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter;

    invoke-direct {p2}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter;-><init>()V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->addDelegate(Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;)V

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/topic/TopicCardItemContains4;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/alibaba/ailabs/appbox/bean/topic/TopicCardItemContains4;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/topic/TopicCardItemContains4;

    invoke-direct {v0, v2}, Lcom/alibaba/ailabs/appbox/bean/topic/TopicCardItemContains4;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/TopicDetailsFragment;->mRvTopic:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 53
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->refreshDataItems(Ljava/util/List;)V

    return-void
.end method
