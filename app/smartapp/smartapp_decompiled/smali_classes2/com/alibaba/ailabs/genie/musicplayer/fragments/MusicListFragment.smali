.class public Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.source "MusicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment<",
        "Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicListFragment"


# instance fields
.field private mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

.field private mClearHistory:Landroid/widget/RelativeLayout;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mList:Ljava/util/List;

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    .line 69
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mItemType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mClearHistory:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->refreshData(Ljava/util/List;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->findCurrentIndex(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private findCurrentIndex(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->setCurrentData(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getItem(I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicListFragment"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, v0, 0x3

    const/4 v1, 0x5

    if-le p1, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->smoothScrollToPosition(I)V

    goto :goto_1

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->smoothScrollToPosition(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private refreshData(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->setData(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->clearData()V

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->clearData()V

    :cond_0
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .line 56
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->list_fragment:I

    return v0
.end method

.method public handError(Ljava/lang/Integer;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onLoadComplete()V

    .line 201
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onRefreshComplete(Z)V

    .line 202
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->showLoading(Z)V

    return-void
.end method

.method public initObserver()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_HISTORY:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onLoadComplete()V

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onRefreshComplete(Z)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->getHistoryMutableLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$5;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_CURRENT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne v0, v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onLoadComplete()V

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onRefreshComplete(Z)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->getCurrentMutableLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$6;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_COLLECT:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne v0, v1, :cond_2

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->getCollectMutableLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$7;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected initView()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->clearHistory:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mClearHistory:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->listViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mClearHistory:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;->LIST_TYPE_HISTORY:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    if-ne v0, v2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 93
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mContext:Landroid/content/Context;

    const/high16 v3, -0x3ef00000    # -9.0f

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mClearHistory:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mClearHistory:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mClearHistory:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 108
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mContext:Landroid/content/Context;

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->listViewId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    .line 111
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->song_item_layout:I

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mList:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter$OnItemClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setPullEnable(Z)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setDividerHeight(I)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setChoiceMode(I)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setOnRefreshListener(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mLoadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 293
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onResume()V

    .line 294
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->MetadataToSong(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v0

    .line 297
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->updateCurrentMedia(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    :cond_0
    return-void
.end method

.method public setCurrentSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->setCurrentSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->setCurrentData(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    :cond_0
    return-void
.end method

.method public updateCurrentMedia(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->updateCurrentMedia(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment;->findCurrentIndex(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
