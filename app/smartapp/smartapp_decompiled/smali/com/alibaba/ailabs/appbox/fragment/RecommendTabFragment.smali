.class public Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;
.super Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;
.source "RecommendTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$MyRvViewHolder;,
        Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;,
        Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$ApplistItemDecoration;
    }
.end annotation


# static fields
.field public static final ARGUMENT_PAGE_ID:Ljava/lang/String; = "page_id"

.field public static final ARGUMENT_PAGE_NAME:Ljava/lang/String; = "page_name"

.field public static final ARGUMENT_SCENE:Ljava/lang/String; = "scene"

.field private static final PAGE_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "RecommendTabFragment"

.field public static final UI_TYPE_1_3_TEXT:I = 0x2b69

.field public static final UI_TYPE_1_3_VIDEO:I = 0x2b05

.field public static final UI_TYPE_1_6:I = 0x2b08

.field public static final UI_TYPE_1_9:I = 0x32d1

.field public static final UI_TYPE_2_3:I = 0x2ef7

.field public static final UI_TYPE_3_3:I = 0x32e9

.field public static final UI_TYPE_HEAD_1_4:I = 0x2eee

.field public static final UI_TYPE_SINFLE_TITLE:I = 0x2711


# instance fields
.field private adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private cachedStringFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private decoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field isDataFirstFreshFinished:Z

.field private isHasGuessLike:Z

.field isInited:Z

.field private isShouldRefresh:Z

.field private loading:Landroid/widget/ProgressBar;

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

.field private pageName:Ljava/lang/String;

.field private recommendData:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

.field private rvTab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

.field private scene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->mPageType:I

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isInited:Z

    .line 135
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isDataFirstFreshFinished:Z

    .line 260
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isShouldRefresh:Z

    const/4 v1, 0x0

    .line 344
    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->recommendData:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    .line 346
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isHasGuessLike:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->pageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->onDataLoaded(Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->rvTab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->decoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Landroid/support/v7/widget/RecyclerView$ItemDecoration;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->decoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->refreshUIIfNeed(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->finishLoadding()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->loadData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->recommendData:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isHasGuessLike:Z

    return p0
.end method

.method private finishLoadding()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->loading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 494
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;
    .locals 3

    .line 140
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;-><init>()V

    .line 141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "page_name"

    .line 142
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "page_id"

    .line 143
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "scene"

    .line 144
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->setArguments(Landroid/os/Bundle;)V

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

    .line 320
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$3;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isInited:Z

    .line 198
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rv_market_tab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->rvTab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    .line 199
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->vertical_scroll_bar_tab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    .line 200
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->loading:Landroid/widget/ProgressBar;

    .line 201
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->rvTab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setScrollBarListener(Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;)V

    return-void
.end method

.method private loadData()V
    .locals 5

    .line 302
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->mtopCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-nez v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->getMtopCallback()Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->mtopCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    .line 310
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->pageId:I

    const/4 v1, 0x1

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->scene:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->mtopCallback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getMarketByCate(IIILjava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    const-string v0, "RecommendTabFragment"

    const-string v1, "getMarketByCate"

    .line 311
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onDataLoaded(Ljava/lang/String;Z)V
    .locals 4

    .line 349
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    :try_start_0
    const-class v0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->recommendData:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    if-nez p2, :cond_1

    .line 358
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->updateCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->recommendData:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 370
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 371
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getPageType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "market_recommend"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 373
    iput-boolean v2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isHasGuessLike:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v1, p1, :cond_5

    .line 378
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isHasGuessLike:Z

    .line 382
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data loaded visible ? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isFragmentVisibleToUser:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketReport-"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isFragmentVisibleToUser:Z

    if-eqz p1, :cond_6

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "page_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->recommendData:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    const-string v1, "pageShow"

    invoke-static {v1, p1, v0}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportRecommendTabEvent(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;)V

    .line 388
    :cond_6
    new-instance p1, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Z)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception p1

    .line 361
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private refreshUIIfNeed(Z)V
    .locals 3

    .line 450
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isDataFirstFreshFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 454
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isDataFirstFreshFinished:Z

    .line 455
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$5;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Z)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private reportToUt(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ILjava/lang/String;)V
    .locals 1

    .line 729
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$7;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private showLoadding()V
    .locals 2

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showLoadding loading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecommendTabFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->loading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 504
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateCache(Ljava/lang/String;)V
    .locals 1

    .line 476
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$6;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

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

    .line 292
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->fragment_market_recommend_tab:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "onCreate"

    const-string v1, "RecommendTabFragment"

    .line 151
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "page_name"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->pageName:Ljava/lang/String;

    const-string v0, "page_id"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->pageId:I

    const-string/jumbo v0, "scene"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->scene:Ljava/lang/String;

    .line 158
    new-instance p1, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 171
    new-instance p1, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->cachedStringFuture:Ljava/util/concurrent/Future;

    .line 181
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "RecommendTabFragment"

    const-string v1, "onDestroy"

    .line 255
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onDestroy()V

    .line 257
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 761
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onDestroyView()V

    const-string v0, "RecommendTabFragment"

    const-string v1, "onDestroyView -- "

    .line 762
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageSelect()V
    .locals 7

    const-string v0, "RecommendTabFragment"

    const-string v1, "onPageSelect"

    .line 223
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onPageSelect()V

    .line 225
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->recommendData:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->recommendData:Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    const-string v2, "pageShow"

    invoke-static {v2, v0, v1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportRecommendTabEvent(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;)V

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 227
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->cachedStringFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_2

    const-wide/16 v3, 0x1f4

    .line 229
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "cachedStringFuture.get Done"

    .line 230
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :catch_1
    move-exception v2

    .line 233
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :cond_2
    :goto_2
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->showLoadding()V

    const-string/jumbo v1, "showLoadding"

    .line 240
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->loadData()V

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    .line 243
    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->onDataLoaded(Ljava/lang/String;Z)V

    .line 249
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "turandot.page.card.show.page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->reportEventToMtop(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelect -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->pageName:Ljava/lang/String;

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

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecommendTabFragment"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isShouldRefresh:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "RecommendTabFragment"

    const-string v1, "onResume"

    .line 207
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onResume()V

    .line 210
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isShouldRefresh:Z

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isShouldRefresh:Z

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->rvTab:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->mVsBarTab:Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setScrollBarListener(Lcom/alibaba/ailabs/appbox/view/OnRecycleViewScrollListener;)V

    :cond_1
    const-string v0, "RecommendTabFragment.onResume"

    .line 218
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

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

    .line 187
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->initView(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->onPageSelect()V

    return-void
.end method
