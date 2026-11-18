.class public Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;
.super Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.source "ChildAppMarketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$ChildAppMarketOnTabSelector;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ChildAppMarketActivity"


# instance fields
.field private mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->onDataLoaded(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->mFragmentList:Ljava/util/List;

    return-object p0
.end method

.method private getChildAppMarketData()V
    .locals 3

    const-string v0, "ChildAppMarketActivity"

    const-string v1, "getChildAppMarketData() called"

    .line 101
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->showLoadingView()V

    .line 108
    new-instance v0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$1;-><init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v1, v0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getChildMarketData(IIILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method private init()V
    .locals 2

    const-string v0, "ChildAppMarketActivity"

    const-string v1, "init() called"

    .line 87
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->vp_market_main_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 94
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tl_market_main_vp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 95
    new-instance v1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$ChildAppMarketOnTabSelector;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$ChildAppMarketOnTabSelector;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    return-void
.end method

.method private onDataLoaded(Ljava/lang/String;)V
    .locals 6

    const-string v0, "ChildAppMarketActivity"

    .line 134
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataLoaded: totalBean = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 144
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 148
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->mFragmentList:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    .line 150
    new-instance v3, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-direct {v3}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;-><init>()V

    .line 151
    invoke-virtual {v3, p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->setActivity(Lcom/alibaba/ailabs/appbox/activity/BaseActivity;)V

    .line 152
    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->setTitleItemBean(Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;)V

    .line 154
    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageId()I

    move-result v4

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getPageId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->mFragmentList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketPageAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->mFragmentList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    .line 161
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->mFragmentList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->onPageSelect()V

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity$2;-><init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p1

    const-string v1, "onDataLoaded: parse MarketCateTotalBean exception"

    .line 136
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick() called with: v = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildAppMarketActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 81
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market_back:I

    if-ne p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate() called with: savedInstanceState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildAppMarketActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/common/ProfilerTool;->startMethodTracingSampling(Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->activity_child_app_market:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->init()V

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppMarketActivity;->getChildAppMarketData()V

    const-string p1, "0"

    const-string/jumbo v0, "turandot.child.page.card.click.childmarket"

    .line 51
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->reportEventToMtop(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onDestroy()V

    const-string v0, "ChildAppMarketActivity"

    const-string v1, "onDestroy() called"

    .line 73
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onPause()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onPause()V

    const-string v0, "ChildAppMarketActivity"

    const-string v1, "onPause() called"

    .line 66
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onResume()V

    const-string v0, "ChildAppMarketActivity"

    const-string v1, "onResume() called"

    .line 57
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/appbox/childmodel/ChildModeUTReporter;->appListPage()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
