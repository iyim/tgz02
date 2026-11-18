.class public Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;
.super Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.source "MarketMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MarketMainActivity"


# instance fields
.field private addList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastloadIndex:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field mPageAdapter:Landroid/support/v4/view/PagerAdapter;

.field mTab:Landroid/support/design/widget/TabLayout;

.field mViewPager:Landroid/support/v4/view/ViewPager;

.field private myAppParameter:Ljava/lang/String;

.field private myAppTv:Landroid/widget/TextView;

.field private pageIndex:I

.field private sceneParameter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->addList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 175
    iput v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->pageIndex:I

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->lastloadIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->onDataLoaded(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->sceneParameter:Ljava/lang/String;

    return-object p0
.end method

.method private getIntentData()V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntentData uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MarketMainActivity"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "scene"

    .line 111
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->sceneParameter:Ljava/lang/String;

    const-string v1, "myApp"

    .line 112
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->myAppParameter:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntentData sceneParameter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->sceneParameter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",myAppParameter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->myAppParameter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initViewAndData()V
    .locals 2

    .line 134
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_my_apps:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->myAppTv:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->myAppTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tl_market_main_vp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mTab:Landroid/support/design/widget/TabLayout;

    .line 139
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->vp_market_main_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mTab:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mTab:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mTab:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    return-void
.end method

.method private initViewByIntentData()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->myAppParameter:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->myAppTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->myAppTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private loadData()V
    .locals 5

    const-string v0, "MarketMainActivity"

    const-string v1, "loadData"

    .line 180
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData currentTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->lastloadIndex:I

    iget v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->pageIndex:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 192
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->sceneParameter:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$2;-><init>(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getMarketByCate(IIILjava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method private onDataLoaded(Ljava/lang/String;)V
    .locals 6

    const-string v0, "MarketMainActivity"

    const-string v1, "onDataLoaded "

    .line 212
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 217
    :cond_0
    const-class v1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    .line 218
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 219
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 220
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mPageAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v1, :cond_4

    .line 262
    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$MarketMainPageAdapter;-><init>(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mPageAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mPageAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const-string v1, "finishLoadingView"

    .line 266
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->finishLoadingView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataLoaded uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tabName"

    .line 274
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 277
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 278
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 285
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Tablist"

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tabName --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "select_tab_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "market_main"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    :goto_2
    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity$3;-><init>(Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 316
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 318
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_4
    :goto_3
    const-string p1, "MarketMainActivity.onCreate.onDataLoaded Done"

    .line 322
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public addAppletToAddList(Ljava/lang/String;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->addList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isAppletInAddList(Ljava/lang/String;)Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->addList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 362
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market_back:I

    if-ne p1, v0, :cond_0

    .line 363
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "back_click"

    const-string v1, "market_top"

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->finish()V

    goto :goto_0

    .line 365
    :cond_0
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_my_apps:I

    if-ne p1, v0, :cond_1

    .line 366
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openAppList()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "onCreate"

    const-string v1, "MarketMainActivity"

    .line 77
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/alibaba/ailabs/appbox/utils/GloabConstant;->lasttime:J

    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 84
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->activity_main_cate:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->getIntentData()V

    const-string/jumbo p1, "showLoadingView"

    .line 87
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->showLoadingView()V

    .line 90
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->initViewAndData()V

    .line 92
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->initViewByIntentData()V

    .line 94
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->loadData()V

    .line 96
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "init"

    const-string v1, "market_main"

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "MarketMainActivity.onCreate Done"

    .line 97
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MarketMainActivity"

    const-string v1, "onDestroy"

    .line 328
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onDestroy()V

    .line 330
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketMainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 452
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->setIntent(Landroid/content/Intent;)V

    .line 453
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->getIntentData()V

    .line 454
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->initViewByIntentData()V

    .line 455
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->loadData()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "MarketMainActivity"

    const-string v1, "onPause"

    .line 355
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onReceiveMsg(Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        priority = 0x3
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MarketMainActivity"

    const-string v1, "onRestoreInstanceState "

    .line 460
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "MarketMainActivity"

    const-string v1, "onResume"

    .line 347
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onResume()V

    .line 349
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v0, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MarketMainActivity"

    const-string v1, "onSaveInstanceState"

    .line 467
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "MarketMainActivity"

    const-string v1, "onStart"

    .line 341
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onStart()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeFromList(Ljava/lang/String;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/MarketMainActivity;->addList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
