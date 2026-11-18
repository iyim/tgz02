.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.source "TMESongListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x1e

.field private static final PAGE_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TME-SongListFragment"


# instance fields
.field private backToHomeTextView:Landroid/widget/TextView;

.field private collectSongsAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

.field private currentPage:I

.field private errorLayout:Landroid/view/View;

.field private hasNextPage:Z

.field private hasPageData:Z

.field private isLoading:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowFirst:Z

.field private mSource:Ljava/lang/String;

.field private noDataLayout:Landroid/view/View;

.field private refreshPageTextView:Landroid/widget/TextView;

.field private songList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->songList:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mShowFirst:Z

    const/4 v1, 0x1

    .line 45
    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->currentPage:I

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->hasPageData:Z

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->hasNextPage:Z

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->isLoading:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->songList:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mShowFirst:Z

    const/4 v1, 0x1

    .line 45
    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->currentPage:I

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->hasPageData:Z

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->hasNextPage:Z

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->isLoading:Z

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mSource:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, -0x1

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x95c

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v3, v4, :cond_4

    const/16 v4, 0x96c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9b7

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa1c

    if-eq v3, v4, :cond_1

    const v4, 0x409104c

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "GENIE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_1
    const-string v0, "QM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "NE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const-string v0, "KW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const-string v0, "KG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "\u7f51\u6613\u4e91\u97f3\u4e50\u6536\u85cf"

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->titleText:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string p1, "\u9177\u6211\u97f3\u4e50\u6536\u85cf"

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->titleText:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string p1, "\u9177\u72d7\u97f3\u4e50\u6536\u85cf"

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->titleText:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string p1, "QQ\u97f3\u4e50\u6536\u85cf"

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->titleText:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string p1, "\u5929\u732b\u7cbe\u7075\u6536\u85cf"

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->titleText:Ljava/lang/String;

    :cond_b
    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->hasPageData:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->hasPageData:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->collectSongsAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->isLoading:Z

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->hasNextPage:Z

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->hasNextPage:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->loadNextPageData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->songList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->currentPage:I

    return p0
.end method

.method static synthetic access$602(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->currentPage:I

    return p1
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->noDataLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->errorLayout:Landroid/view/View;

    return-object p0
.end method

.method private loadFirstDataPage()V
    .locals 5

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->hasNextPage:Z

    .line 162
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest;-><init>()V

    const/4 v1, 0x1

    .line 164
    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->currentPage:I

    .line 165
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mSource:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->currentPage:I

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)V

    const/16 v4, 0x1e

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest;->getFavoriteSongs(Ljava/lang/String;IILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method private loadNextPageData()V
    .locals 5

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->isLoading:Z

    .line 208
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mSource:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->currentPage:I

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)V

    const/16 v4, 0x1e

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteSongsRequest;->getFavoriteSongs(Ljava/lang/String;IILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 85
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_collect_songs_fragment:I

    return v0
.end method

.method public handError(Ljava/lang/Integer;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected initView()V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->icon_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMESongListFragment$FCAX9x30J3T-wocute--EaUEHVw;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMESongListFragment$FCAX9x30J3T-wocute--EaUEHVw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->playListTitleId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->loading_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->error_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->errorLayout:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->no_data_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->noDataLayout:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->back_to_home:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->backToHomeTextView:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->backToHomeTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMESongListFragment$icFF5z8roYJ3gEAY3lThgGNgrz8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMESongListFragment$icFF5z8roYJ3gEAY3lThgGNgrz8;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->refresh_page:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->refreshPageTextView:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->refreshPageTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMESongListFragment$hMQZdZ0AAeNFg0R2z7WnX7Hywfw;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMESongListFragment$hMQZdZ0AAeNFg0R2z7WnX7Hywfw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->songListId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 120
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setOrientation(I)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 123
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->songList:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mSource:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->collectSongsAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    .line 124
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->collectSongsAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 126
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 148
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->loadFirstDataPage()V

    return-void
.end method

.method public synthetic lambda$initView$142$TMESongListFragment(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mShowFirst:Z

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initView$143$TMESongListFragment(Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initView$144$TMESongListFragment(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->errorLayout:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->loadFirstDataPage()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->songListId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 245
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 246
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->collectSongsAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;

    .line 248
    :cond_0
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->errorLayout:Landroid/view/View;

    .line 249
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->noDataLayout:Landroid/view/View;

    .line 250
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->backToHomeTextView:Landroid/widget/TextView;

    .line 251
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->refreshPageTextView:Landroid/widget/TextView;

    .line 252
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public setShowFirst(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMESongListFragment;->mShowFirst:Z

    return-void
.end method
