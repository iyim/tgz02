.class public Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;
.super Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;
.source "MarketTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketHandler;,
        Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;,
        Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;,
        Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;
    }
.end annotation


# static fields
.field public static final ARGUMENT_PAGE_ID:Ljava/lang/String; = "page_id"

.field public static final ARGUMENT_PAGE_NAME:Ljava/lang/String; = "page_name"

.field public static final ARGUMENT_SCENE:Ljava/lang/String; = "scene"

.field private static final MSG_DELAY_LOAD:I = 0x1

.field private static final PAGE_SIZE:I = 0x20

.field private static final PRE_LOAD_INDEX:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "MarketTabFragment"

.field public static final UI_TYPE_3:I = 0x3

.field public static final UI_TYPE_4:I = 0x4


# instance fields
.field private adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private dataList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;"
        }
    .end annotation
.end field

.field private decoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field isDataFirstFreshFinished:Z

.field isInited:Z

.field private isNeedDelay:Z

.field private isShouldRefresh:Z

.field lastloadIndex:I

.field loaddingIndex:I

.field private loading:Landroid/widget/ProgressBar;

.field private mHandler:Landroid/os/Handler;

.field private mPageType:I

.field private mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

.field mtopCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;"
        }
    .end annotation
.end field

.field private pageId:I

.field private pageIndex:I

.field private pageName:Ljava/lang/String;

.field private recyclerScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private rvTab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

.field private scene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mPageType:I

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isInited:Z

    .line 107
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isDataFirstFreshFinished:Z

    .line 231
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isShouldRefresh:Z

    const/4 v1, 0x1

    .line 250
    iput v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageIndex:I

    .line 251
    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->lastloadIndex:I

    .line 252
    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loaddingIndex:I

    .line 301
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->decoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Landroid/support/v7/widget/RecyclerView$ItemDecoration;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->decoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->onBindType3(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->onDataLoaded(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mPageType:I

    return p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->rvTab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->finishLoadding()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->recyclerScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$802(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Landroid/support/v7/widget/RecyclerView$OnScrollListener;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->recyclerScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object p1
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loadData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private finishLoadding()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 469
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;
    .locals 3

    .line 117
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;-><init>()V

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "page_name"

    .line 119
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "page_id"

    .line 120
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "scene"

    .line 121
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getMtopCallback()Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 283
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isInited:Z

    .line 165
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rv_market_tab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->rvTab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    .line 166
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->vertical_scroll_bar_tab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    .line 167
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loading:Landroid/widget/ProgressBar;

    .line 168
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->rvTab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setScrollBarListener(Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;)V

    return-void
.end method

.method private loadData()V
    .locals 5

    .line 256
    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->lastloadIndex:I

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageIndex:I

    const-string v2, "MarketTabFragment"

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loaddingIndex:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iput v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loaddingIndex:I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData pageIndex ==  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " last loaded is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->lastloadIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mtopCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-nez v0, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->getMtopCallback()Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mtopCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMarketByCate"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageId:I

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageIndex:I

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->scene:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mtopCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getMarketByCate(IIILjava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "loadData will return  ==  "

    .line 257
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onBindType3(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 552
    check-cast p1, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;

    .line 555
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    const-string v1, "market_store_item_show"

    .line 557
    invoke-direct {p0, v0, p2, v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->reportToUt(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;ILjava/lang/String;)V

    .line 559
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$Market3Item;->bindData(Ljava/lang/Object;)V

    return-void
.end method

.method private onDataLoaded(Ljava/lang/String;)V
    .locals 6

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,ondata loaded -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTabFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 309
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageIndex:I

    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->lastloadIndex:I

    .line 311
    const-class v0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    .line 312
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 313
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 314
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 316
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 317
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 319
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 320
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 338
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageIndex:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageIndex:I

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->getDataList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "item count before skip is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 345
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 347
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "apk"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, " -> "

    if-eqz v2, :cond_4

    .line 349
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->isApkShouldSkip(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apk item skip "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 354
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/base/util/AppTypeUtil;->isCloudAppUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.alibaba.genie.cloudapp"

    .line 355
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applet actionError item skip "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 368
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data loaded visible ? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isFragmentVisibleToUser:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketReport-"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->lastloadIndex:I

    if-ne p1, v3, :cond_6

    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isFragmentVisibleToUser:Z

    if-eqz p1, :cond_6

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "page_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "pageShow"

    invoke-static {v1, p1, v0}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportFragmentTabEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_6
    const/4 p1, 0x4

    .line 380
    iput p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mPageType:I

    .line 382
    new-instance p1, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private reportToUt(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;ILjava/lang/String;)V
    .locals 1

    .line 564
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$4;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private showLoadding()V
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showLoadding loading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTabFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 483
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
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

    .line 241
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->fragment_market_tab:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MarketTabFragment"

    const-string v1, "getContext onCreate"

    .line 128
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "page_name"

    .line 131
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageName:Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "page_id"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageId:I

    const-string/jumbo v0, "scene"

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->scene:Ljava/lang/String;

    .line 135
    new-instance p1, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 148
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContext onDestroy this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTabFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onDestroy()V

    .line 225
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->rvTab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->recyclerScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onPageSelect()V
    .locals 3

    const-string v0, "MarketTabFragment"

    const-string v1, "onPageSelect"

    .line 200
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onPageSelect()V

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelect -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MarketReport-"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v2, "pageShow"

    invoke-static {v2, v0, v1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportFragmentTabEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    goto :goto_1

    .line 204
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_3

    const/4 v1, -0x1

    .line 209
    iput v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->lastloadIndex:I

    .line 210
    iput v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageIndex:I

    .line 212
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showLoadding"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->showLoadding()V

    .line 214
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loadData()V

    .line 218
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "turandot.page.card.show.page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->reportEventToMtop(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveMsg(Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        priority = 0x3
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketTabFragment"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 236
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isShouldRefresh:Z

    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "MarketTabFragment"

    const-string v1, "getContext onResu"

    .line 174
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onResume()V

    .line 177
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isShouldRefresh:Z

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iput-boolean v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isShouldRefresh:Z

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 186
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isNeedDelay:Z

    if-eqz v0, :cond_3

    .line 187
    iput-boolean v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isNeedDelay:Z

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 189
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketHandler;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$1;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mHandler:Landroid/os/Handler;

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 193
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loadData()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MarketTabFragment"

    const-string v1, "onViewCreated"

    .line 153
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->initView(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->onPageSelect()V

    return-void
.end method
