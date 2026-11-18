.class public Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;
.super Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;
.source "ChildAppListFragment.java"


# static fields
.field private static final PAGE_SIZE:I = 0x1e

.field private static final PRE_LOAD_INDEX:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "ChildAppListFragment"

.field public static final UI_TYPE_2:I = 0x2

.field public static final UI_TYPE_3:I = 0x3

.field public static final UI_TYPE_4:I = 0x4


# instance fields
.field private adapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private baseActivity:Lcom/alibaba/ailabs/appbox/activity/BaseActivity;

.field private cateMenu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

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

.field isInited:Z

.field private isShouldRefresh:Z

.field lastloadIndex:I

.field loaddingIndex:I

.field private mAppListView:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

.field private mPageType:I

.field private mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

.field private pageIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isInited:Z

    const/4 v1, -0x1

    .line 67
    iput v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->mPageType:I

    .line 68
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 152
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isShouldRefresh:Z

    const/4 v0, 0x1

    .line 166
    iput v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->pageIndex:I

    .line 167
    iput v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->lastloadIndex:I

    .line 168
    iput v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loaddingIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->onDataLoaded(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->mPageType:I

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->mAppListView:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dismissLoading()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loadData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->decoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object p0
.end method

.method static synthetic access$802(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;Landroid/support/v7/widget/RecyclerView$ItemDecoration;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->decoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object p1
.end method

.method private dismissLoading()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->baseActivity:Lcom/alibaba/ailabs/appbox/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->finishLoadingView()V

    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isInited:Z

    .line 100
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rv_market_tab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->mAppListView:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    .line 101
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->vertical_scroll_bar_tab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    .line 102
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->mAppListView:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setScrollBarListener(Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;)V

    return-void
.end method

.method private loadData()V
    .locals 4

    const-string v0, "ChildAppListFragment"

    const-string v1, "loadData() called"

    .line 171
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->lastloadIndex:I

    iget v2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->pageIndex:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loaddingIndex:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iput v2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loaddingIndex:I

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData: pageIndex = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->pageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], loaddingIndex = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loaddingIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadData: cateMenu = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->cateMenu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->cateMenu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageId()I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->pageIndex:I

    const/16 v2, 0x1e

    new-instance v3, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$1;-><init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getChildMarketData(IIILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v1, "loadData will return  ==  "

    .line 175
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onDataLoaded(Ljava/lang/String;)V
    .locals 8

    .line 208
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isDetached()Z

    move-result v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataLoaded() called with: isFragmentDetached = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChildAppListFragment"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 215
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->pageIndex:I

    iput v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->lastloadIndex:I

    .line 217
    const-class v1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;

    .line 218
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 219
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 220
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->getMenuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 221
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 222
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 223
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 224
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 225
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->getDataList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 226
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 230
    :cond_1
    new-instance v1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$2;-><init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;)V

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 244
    iget v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->pageIndex:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->pageIndex:I

    .line 246
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->getModuleList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->getDataList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item count before skip is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 251
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 253
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "apk"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, " -> "

    const-string v6, "item skip "

    if-eqz v3, :cond_4

    .line 254
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->isApkShouldSkip(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/base/util/AppTypeUtil;->isCloudAppUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.alibaba.genie.cloudapp"

    .line 260
    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 273
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data loaded visible ? "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isFragmentVisibleToUser:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MarketReport-"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->lastloadIndex:I

    if-ne p1, v4, :cond_6

    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isFragmentVisibleToUser:Z

    if-eqz p1, :cond_6

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->cateMenu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v3, "pageShow"

    invoke-static {v3, p1, v1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportFragmentTabEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 278
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item count after skip is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataLoaded: dataList = ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 281
    iput p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->mPageType:I

    .line 283
    new-instance p1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;-><init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public doOlnyOnceAtAfterStart()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loadData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getLayoutId()I
    .locals 1

    .line 82
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->fragment_child_app_list:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate() called with: savedInstanceState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChildAppListFragment"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onDestroy()V

    const-string v0, "ChildAppListFragment"

    const-string v1, "onDestroy() called"

    .line 122
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onPageSelect()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onPageSelect()V

    const-string v0, "ChildAppListFragment"

    const-string v1, "onPageSelect() called"

    .line 130
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->cateMenu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v2, "pageShow"

    invoke-static {v2, v0, v1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportFragmentTabEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loadData()V

    .line 147
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "turandot.child.page.card.show."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->cateMenu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->reportEventToMtop(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelect -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->cateMenu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketReport-"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveMsg(Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        priority = 0x3
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg() called with: message = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChildAppListFragment"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isShouldRefresh:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isShouldRefresh:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->cateMenu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildAppListFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isShouldRefresh:Z

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->dataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->loadData()V

    :cond_2
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

    .line 87
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewCreated() called with: view = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], savedInstanceState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ChildAppListFragment"

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public setActivity(Lcom/alibaba/ailabs/appbox/activity/BaseActivity;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->baseActivity:Lcom/alibaba/ailabs/appbox/activity/BaseActivity;

    return-void
.end method

.method public setTitleItemBean(Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->cateMenu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;

    return-void
.end method
