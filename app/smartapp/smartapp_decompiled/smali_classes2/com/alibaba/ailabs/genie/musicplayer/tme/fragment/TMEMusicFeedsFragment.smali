.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.source "TMEMusicFeedsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TME-ChannelFragment"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

.field private mSource:Ljava/lang/String;

.field private mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x95c

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x96c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9b7

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa1c

    if-eq v1, v2, :cond_2

    const v2, 0x409104c

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "GENIE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "QM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "NE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v1, "KW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const-string v1, "KG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x2

    :cond_6
    :goto_0
    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    .line 71
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->GENIE_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    goto :goto_1

    .line 68
    :cond_7
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->NETEASE_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    goto :goto_1

    .line 65
    :cond_8
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->KUWO_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    goto :goto_1

    .line 62
    :cond_9
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->KUGOU_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    goto :goto_1

    .line 59
    :cond_a
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->QQ_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    goto :goto_1

    .line 56
    :cond_b
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->GENIE_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    .line 74
    :goto_1
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mSource:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mAppId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    return-object p0
.end method

.method private initData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;-><init>()V

    .line 96
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private pageStaticsHit()V
    .locals 5

    .line 85
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_app:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_app:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mContext:Landroid/content/Context;

    const-string v4, "music_app_homepage_exposure"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "touch_screen"

    .line 90
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withFrom(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTableName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTabID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->pageAppear(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 106
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_music_feeds_fragment:I

    return v0
.end method

.method public handError(Ljava/lang/Integer;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected initView()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->channelRcyId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 112
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 113
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->initData()Ljava/util/List;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    .line 116
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->setActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 117
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->setType(Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;)V

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->setSource(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->setAppId(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEMusicFeedsFragment$qAwlWQ8_HruZPx-2Kk29i7_lSpE;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEMusicFeedsFragment$qAwlWQ8_HruZPx-2Kk29i7_lSpE;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->setOnItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 137
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 138
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 140
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mSource:Ljava/lang/String;

    const-string v1, "GENIE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mAppId:Ljava/lang/String;

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mSource:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mAppId:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)V

    const-string v4, "audio"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;->queryUserInfoRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    .line 175
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;-><init>()V

    .line 176
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;->getSuperVipGray(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$GrayCallback;)V

    return-void
.end method

.method public synthetic lambda$initView$135$TMEMusicFeedsFragment(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    const/4 p2, 0x0

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mSource:Ljava/lang/String;

    invoke-virtual {p1, p3, v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->showPlayListFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mSource:Ljava/lang/String;

    invoke-virtual {p1, p3, v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->showFavoritesListFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->channelRcyId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->setOnItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;)V

    .line 201
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mChannelAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    .line 203
    :cond_0
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->mView:Landroid/view/View;

    .line 205
    :cond_1
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 80
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onStop()V

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicFeedsFragment;->pageStaticsHit()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
