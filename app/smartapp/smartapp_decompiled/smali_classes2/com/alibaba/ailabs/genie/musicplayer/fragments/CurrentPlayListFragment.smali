.class public Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.source "CurrentPlayListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment<",
        "Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CurrentPlayListFragment"


# instance fields
.field private collectLabel:Landroid/widget/TextView;

.field private collectTxt:Landroid/widget/TextView;

.field private gridView:Landroid/widget/GridView;

.field private gridViewAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

.field private loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

.field private mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

.field private mIsReverse:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:I

.field private reverseIcon:Landroid/widget/ImageView;

.field private reverseLayout:Landroid/widget/LinearLayout;

.field private reverseTv:Landroid/widget/TextView;

.field private selectLayout:Landroid/widget/LinearLayout;

.field private sortIcon:Landroid/widget/ImageView;

.field private testdatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$TestModel;",
            ">;"
        }
    .end annotation
.end field

.field private toCollect:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->testdatas:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mIsReverse:Z

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->testdatas:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mList:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mIsReverse:Z

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    .line 80
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mItemType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridViewAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->findCurrentIndex(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mTotal:I

    return p0
.end method

.method static synthetic access$1102(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mTotal:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/GridView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->sortIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->refreshData(Ljava/util/List;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mIsReverse:Z

    return p0
.end method

.method static synthetic access$702(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mIsReverse:Z

    return p1
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private findCurrentIndex(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->setCurrentData(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridViewAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setPosition(I)V

    :cond_1
    const/4 v0, 0x0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getItem(I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v1

    .line 122
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

    const-string v3, "CurrentPlayListFragment"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setSelection(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
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

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mListType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->setData(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;)V

    :cond_0
    return-void
.end method

.method private refreshLike(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->collectLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->collectTxt:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const-string v0, "\u5df2\u6536\u85cf"

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->collectLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->collectTxt:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const-string v0, "\u6536\u85cf\u4e13\u8f91"

    .line 105
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 439
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->clearData()V

    .line 440
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->clearData()V

    :cond_0
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .line 71
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->fragment_currentplaylist:I

    return v0
.end method

.method public handError(Ljava/lang/Integer;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 240
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onLoadComplete()V

    .line 241
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->onRefreshComplete(Z)V

    .line 242
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 244
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->round_rectangle_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->showLoading(Z)V

    return-void
.end method

.method public initObserver()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->getCurrentMutableLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 297
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->getTotalCount()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$5;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method protected initView()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->select_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->sortIcon:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->current_collect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->toCollect:Landroid/widget/LinearLayout;

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->addLabel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->collectLabel:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->addText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->collectTxt:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->current_reverse:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseLayout:Landroid/widget/LinearLayout;

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->listViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->select:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->selectLayout:Landroid/widget/LinearLayout;

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->reverseIconId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseIcon:Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->reverseTvId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseTv:Landroid/widget/TextView;

    .line 144
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->song_item_layout:I

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    .line 145
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->isReverse()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mIsReverse:Z

    .line 146
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mIsReverse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_reverse:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseTv:Landroid/widget/TextView;

    const-string v1, "\u5012\u5e8f\u64ad\u653e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_not_reverse:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseTv:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5e8f\u64ad\u653e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setPullEnable(Z)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setDividerHeight(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setChoiceMode(I)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mItemType:Ljava/lang/String;

    const-string v2, "story"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->collectLabel:Landroid/widget/TextView;

    const-string v2, "#6A95EB"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->collectTxt:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->toCollect:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_redcircle_story:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->collectLabel:Landroid/widget/TextView;

    const-string v2, "#FE2161"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->collectTxt:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->toCollect:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->bg_redcircle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->showLoading(Z)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setOnRefreshListener(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView$OnRefreshListener;)V

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->toCollect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->selectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->current_gridview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridView:Landroid/widget/GridView;

    .line 217
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->testdatas:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridViewAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridViewAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setItemType(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridViewAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridView:Landroid/widget/GridView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 309
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->current_collect:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 313
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 315
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mCurrentSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    if-nez p1, :cond_1

    const-string p1, "CurrentPlayListFragment"

    const-string v0, "onClick, mContentPlay is Null, return"

    .line 316
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    const-string v0, "likeAlbum"

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 321
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->current_reverse:I

    if-ne v0, v1, :cond_4

    .line 322
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_not_reverse:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseTv:Landroid/widget/TextView;

    const-string v0, "\u6b63\u5e8f\u64ad\u653e"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    if-eqz p1, :cond_3

    .line 326
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 327
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->clearData()V

    .line 330
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mItemType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;->reverse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->select:I

    if-ne p1, v0, :cond_7

    .line 332
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 333
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 334
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 337
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->round_rectangle_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->sortIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_select_ji_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_7

    .line 342
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 343
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->MetadataToSong(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object p1

    .line 344
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->updateCurrentMedia(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    goto :goto_0

    .line 347
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridViewAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mIsReverse:Z

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setReverse(Z)V

    .line 349
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_6

    .line 350
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 351
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->MetadataToSong(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result p1

    .line 353
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridViewAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setPosition(I)V

    .line 356
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->sortIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_select_ji_up:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 358
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->loadListView:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LoadListView;->setVisibility(I)V

    .line 360
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 361
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->reverseLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->click_false_fg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 421
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onResume()V

    .line 422
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    .line 425
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->MetadataToSong(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridViewAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setPosition(I)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    .line 431
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->MetadataToSong(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    move-result-object v0

    .line 432
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->updateCurrentMedia(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 1

    .line 413
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->setCurrentSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 414
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->setCurrentData(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    :cond_0
    return-void
.end method

.method public updateCurrentMedia(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 1

    .line 403
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->updateCurrentMedia(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 404
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->findCurrentIndex(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    .line 405
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->gridViewAdapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setPosition(I)V

    :cond_0
    return-void
.end method

.method public updateExtra(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->updateExtra(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "isFavorite"

    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 88
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->refreshLike(Z)V

    :cond_0
    return-void
.end method
