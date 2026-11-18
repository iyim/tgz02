.class public Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;
.super Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;
.source "SkillTabPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewItemViewHolder;,
        Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;
    }
.end annotation


# static fields
.field private static final PRE_LOAD_INDEX:I = 0xf

.field private static final PRE_LOAD_PAGESIZE:I = 0x1e


# instance fields
.field private cardId:I

.field private cateId:I

.field private cateName:Ljava/lang/String;

.field lastloadIndex:I

.field private pageIndex:I

.field private rv_skill_tab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

.field private skillTabRecycleViewAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

.field skills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;",
            ">;"
        }
    .end annotation
.end field

.field spaceItemDecoration:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SpaceItemDecoration;

.field private themeId:I

.field private vertical_scroll_bar_skill_tab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->pageIndex:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->skills:Ljava/util/List;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->lastloadIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->pageIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->pageIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->skillTabRecycleViewAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;)Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->skillTabRecycleViewAdapter:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->rv_skill_tab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->loadData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->cateName:Ljava/lang/String;

    return-object p0
.end method

.method private loadData()V
    .locals 8

    .line 65
    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->lastloadIndex:I

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->pageIndex:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    .line 68
    iget v3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->themeId:I

    const/16 v4, 0x1e

    iget-object v6, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->cateName:Ljava/lang/String;

    new-instance v7, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;

    invoke-direct {v7, p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)V

    const-string/jumbo v5, "theme_skill_list"

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getMoreSkills(IIIILjava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method


# virtual methods
.method public doOlnyOnceAtAfterStart()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->loadData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getLayoutId()I
    .locals 1

    .line 109
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->fragment_skill_more_tab:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "cateName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->cateName:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "cardId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->cardId:I

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "cateId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->cateId:I

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "themeId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->themeId:I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    sget p2, Lcom/alibaba/ailabs/appbox/R$id;->rv_skill_tab:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->rv_skill_tab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    .line 121
    sget p2, Lcom/alibaba/ailabs/appbox/R$id;->vertical_scroll_bar_skill_tab:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->vertical_scroll_bar_skill_tab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->rv_skill_tab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->vertical_scroll_bar_skill_tab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setScrollBarListener(Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;)V

    .line 123
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->rv_skill_tab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$2;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->setUserVisibleHint(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
