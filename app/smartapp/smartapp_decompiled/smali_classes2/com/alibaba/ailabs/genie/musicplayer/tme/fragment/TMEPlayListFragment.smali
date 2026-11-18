.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.source "TMEPlayListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TME-PlayListFragment"


# instance fields
.field private errorLayout:Landroid/view/View;

.field private inputText:Ljava/lang/String;

.field private inputTitle:Landroid/widget/TextView;

.field private mGetSelfCreateCollects:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowFirst:Z

.field private mSource:Ljava/lang/String;

.field private noDataLayout:Landroid/view/View;

.field private playListAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;

.field private playlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private selfText:Ljava/lang/String;

.field private selfTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->playlists:Ljava/util/List;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mShowFirst:Z

    .line 49
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mGetSelfCreateCollects:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->playlists:Ljava/util/List;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mShowFirst:Z

    .line 49
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mGetSelfCreateCollects:Z

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mSource:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, -0x1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x95c

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x96c

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9b7

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa1c

    if-eq v2, v3, :cond_1

    const v3, 0x409104c

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "GENIE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "\u6211\u7684\u7f51\u6613\u4e91\u97f3\u4e50\u5bfc\u5165\u6b4c\u5355"

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->inputText:Ljava/lang/String;

    const-string p1, "\u6211\u7684\u7f51\u6613\u4e91\u97f3\u4e50\u81ea\u5efa\u6b4c\u5355"

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfText:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string p1, "\u6211\u7684\u9177\u6211\u97f3\u4e50\u5bfc\u5165\u6b4c\u5355"

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->inputText:Ljava/lang/String;

    const-string p1, "\u6211\u7684\u9177\u6211\u97f3\u4e50\u81ea\u5efa\u6b4c\u5355"

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfText:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string p1, "\u6211\u7684\u9177\u72d7\u97f3\u4e50\u5bfc\u5165\u6b4c\u5355"

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->inputText:Ljava/lang/String;

    const-string p1, "\u6211\u7684\u9177\u72d7\u97f3\u4e50\u81ea\u5efa\u6b4c\u5355"

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfText:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string p1, "\u6211\u7684QQ\u97f3\u4e50\u5bfc\u5165\u6b4c\u5355"

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->inputText:Ljava/lang/String;

    const-string p1, "\u6211\u7684QQ\u97f3\u4e50\u81ea\u5efa\u6b4c\u5355"

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfText:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string p1, "\u6211\u7684\u5929\u732b\u7cbe\u7075\u5bfc\u5165\u6b4c\u5355"

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->inputText:Ljava/lang/String;

    :cond_b
    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->inputTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->playlists:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->playListAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->noDataLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->errorLayout:Landroid/view/View;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->requestInputList()V

    return-void
.end method

.method private requestInputList()V
    .locals 3

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mGetSelfCreateCollects:Z

    .line 159
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteCollectsRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteCollectsRequest;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mSource:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/FavoriteCollectsRequest;->getFavoriteCollects(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method private requestSelfList()V
    .locals 3

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mGetSelfCreateCollects:Z

    .line 202
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/SelfCreateCollectsRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/SelfCreateCollectsRequest;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mSource:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/SelfCreateCollectsRequest;->getSelfCreateCollects(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 86
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_play_list_fragment:I

    return v0
.end method

.method public handError(Ljava/lang/Integer;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected initView()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->icon_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 92
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEPlayListFragment$dOq2fM8TkGSr1NTdSgzhsNVLxvQ;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEPlayListFragment$dOq2fM8TkGSr1NTdSgzhsNVLxvQ;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->play_list_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->inputTitle:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->inputTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->inputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->inputTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEPlayListFragment$S4hjoH4S75xxW2c7oYT8BLq_hRs;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEPlayListFragment$S4hjoH4S75xxW2c7oYT8BLq_hRs;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->play_list_self_create:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfTitle:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->selfTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEPlayListFragment$qR0mpqp6mLiygmXWdK9W4vOJzew;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEPlayListFragment$qR0mpqp6mLiygmXWdK9W4vOJzew;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->loading_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->error_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->errorLayout:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->no_data_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->noDataLayout:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->back_to_home:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEPlayListFragment$JZsBK-8bGU6uSZodLixXcY4rtkk;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEPlayListFragment$JZsBK-8bGU6uSZodLixXcY4rtkk;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->refresh_page:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEPlayListFragment$xQkwNHt1cLHVNUeqEbTpWMS1CLw;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEPlayListFragment$xQkwNHt1cLHVNUeqEbTpWMS1CLw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mView:Landroid/view/View;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->playListId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 144
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setOrientation(I)V

    .line 146
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 147
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->playlists:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mSource:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->playListAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->playListAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 149
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->initData()V

    return-void
.end method

.method public synthetic lambda$initView$136$TMEPlayListFragment(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mShowFirst:Z

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initView$137$TMEPlayListFragment(Landroid/view/View;)V
    .locals 1

    .line 102
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ClickUtils;->isFastClick()Z

    move-result p1

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->errorLayout:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->requestInputList()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$138$TMEPlayListFragment(Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ClickUtils;->isFastClick()Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->errorLayout:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->requestSelfList()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$139$TMEPlayListFragment(Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initView$140$TMEPlayListFragment(Landroid/view/View;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->errorLayout:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mGetSelfCreateCollects:Z

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->requestSelfList()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->initData()V

    :goto_0
    return-void
.end method

.method public setShowFirst(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEPlayListFragment;->mShowFirst:Z

    return-void
.end method
