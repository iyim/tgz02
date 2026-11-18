.class public Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;
.super Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$MzTransformer;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$WelcomePageTransfomer;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;
    }
.end annotation


# static fields
.field private static final MARGIN_HEADER_VP:I = 0x78

.field private static final TAG:Ljava/lang/String; = "SkillMainPagerFragment"


# instance fields
.field data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

.field likes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;",
            ">;"
        }
    .end annotation
.end field

.field pageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field rvSkillMain:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

.field skillMainAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

.field spaceItemDecoration:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;

.field private transformRound10:Lcom/bumptech/glide/request/RequestOptions;

.field private transformRound25:Lcom/bumptech/glide/request/RequestOptions;

.field vtSkillMain:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->transformRound25:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->transformRound25:Lcom/bumptech/glide/request/RequestOptions;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->transformRound10:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->transformRound10:Lcom/bumptech/glide/request/RequestOptions;

    return-object p1
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

    .line 96
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->fragment_skill_main:I

    return v0
.end method

.method public getPageTransformer()Landroid/support/v4/view/ViewPager$PageTransformer;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->pageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$MzTransformer;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$MzTransformer;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->pageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->pageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 108
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    sget p2, Lcom/alibaba/ailabs/appbox/R$id;->rv_skill_main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->rvSkillMain:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    .line 110
    sget p2, Lcom/alibaba/ailabs/appbox/R$id;->vertical_scroll_bar_skill_main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->vtSkillMain:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    .line 111
    new-instance p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->skillMainAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    .line 112
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 113
    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 129
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->spaceItemDecoration:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;

    if-nez p2, :cond_0

    .line 130
    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v0

    invoke-direct {p2, p0, v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;I)V

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->spaceItemDecoration:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;

    .line 131
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->rvSkillMain:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->spaceItemDecoration:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SpaceItemDecoration;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 133
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->rvSkillMain:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 134
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->rvSkillMain:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->skillMainAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 135
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->rvSkillMain:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->vtSkillMain:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setScrollBarListener(Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;)V

    .line 138
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->rvSkillMain:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$2;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setData(Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;)V
    .locals 2

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 68
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLikes(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->likes:Ljava/util/List;

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->skillMainAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "setLikes1"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->skillMainAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    if-eqz p1, :cond_3

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->skillMainAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "setLikes2"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->skillMainAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
