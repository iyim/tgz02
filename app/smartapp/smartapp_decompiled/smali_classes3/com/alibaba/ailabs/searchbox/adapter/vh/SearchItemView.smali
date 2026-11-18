.class public Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;
.super Ljava/lang/Object;
.source "SearchItemView.java"


# instance fields
.field private bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

.field private currentPos:I

.field mDesc:Landroid/widget/TextView;

.field mIconView:Landroid/widget/ImageView;

.field mIconViewCloudTag:Landroid/view/View;

.field mOpenSoon:Landroid/view/View;

.field mShowOpenSoonTask:Ljava/lang/Runnable;

.field mTiTle:Landroid/widget/TextView;

.field mTvSort:Landroid/widget/TextView;

.field mTvSortContainer:Landroid/widget/RelativeLayout;

.field rootView:Landroid/view/View;

.field private shouldStopAutoOpen:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->shouldStopAutoOpen:Z

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->rootView:Landroid/view/View;

    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->initView(Landroid/view/View;)V

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->shouldStopAutoOpen:Z

    return p0
.end method

.method private getShowOpenSoonTask()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mShowOpenSoonTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$2;-><init>(Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mShowOpenSoonTask:Ljava/lang/Runnable;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mShowOpenSoonTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 58
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_search_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mIconView:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_search_cloud_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mIconViewCloudTag:Landroid/view/View;

    .line 60
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_sort_in_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mTvSort:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_sort:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mTvSortContainer:Landroid/widget/RelativeLayout;

    .line 62
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_search_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mTiTle:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_search_item_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mDesc:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_open_soon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mOpenSoon:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;I)V
    .locals 4

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    .line 69
    iput p2, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->currentPos:I

    .line 70
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mIconView:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/base/util/AppTypeUtil;->isCloudAppUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mIconViewCloudTag:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mIconViewCloudTag:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mTiTle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mDesc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x6

    const/4 v2, 0x4

    if-ge p2, v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mTvSort:Landroid/widget/TextView;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mTvSortContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mTvSortContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mTvSortContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mTvSortContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 92
    iget-object p2, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mOpenSoon:Landroid/view/View;

    invoke-direct {p0}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->getShowOpenSoonTask()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1b58

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->startOpenTask(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V

    goto :goto_2

    .line 96
    :cond_3
    iget-object p2, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mOpenSoon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v2, :cond_4

    .line 97
    iget-object p2, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mOpenSoon:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->rootView:Landroid/view/View;

    new-instance v0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView$1;-><init>(Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onReceiveMsg(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        priority = 0x3
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 141
    :try_start_0
    iget v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->currentPos:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "@"

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoOpenMgr"

    const/4 v1, 0x0

    .line 145
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 146
    aget-object p1, p1, v0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x64031aef

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "stopOpenTask"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    .line 148
    :cond_3
    iput-boolean v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->shouldStopAutoOpen:Z

    .line 149
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mOpenSoon:Landroid/view/View;

    invoke-direct {p0}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->getShowOpenSoonTask()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 150
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mOpenSoon:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    .line 151
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;->mOpenSoon:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method
