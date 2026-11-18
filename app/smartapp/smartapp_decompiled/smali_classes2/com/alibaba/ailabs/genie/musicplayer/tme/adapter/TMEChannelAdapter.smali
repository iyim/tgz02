.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TMEChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;,
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;,
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;,
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHANNEL_TYPE_ENTRANCE:I = 0x1

.field public static final CHANNEL_TYPE_FOOTER:I = 0x3

.field public static final CHANNEL_TYPE_RANK:I = 0x2

.field public static final ITEM_TYPE_FAVORITE:I = 0x1

.field public static final ITEM_TYPE_FOOTER:I = 0x0

.field public static final ITEM_TYPE_SONG_LIST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TME-ChannelAdapter"

.field private static final THREE:I = 0x3

.field private static final TWO:I = 0x2


# instance fields
.field private grayStatus:Z

.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFooterViewHolder:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;

.field private mOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private mSource:Ljava/lang/String;

.field private mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

.field private mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

.field private mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

.field private mTmeChannelRankListBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;

.field private mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

.field private mViewHolderChannelEntrance:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

.field private mViewHolderRank:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mList:Ljava/util/List;

    .line 94
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->GENIE_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    .line 103
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 105
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 106
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    .line 108
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mList:Ljava/util/List;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    const/4 v0, 0x3

    const-string v1, "foot"

    invoke-direct {p2, v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_portrait:I

    .line 113
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_portrait:I

    .line 114
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideCircleTransform;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideCircleTransform;-><init>()V

    .line 115
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 116
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->rankExposedStaticsHit(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->rankClickStaticsHit(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    return-object p0
.end method

.method private collectionClickStaticsHit()V
    .locals 5

    .line 678
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_app:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_app:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    const-string v4, "music_app_mycollection_click"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 683
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTableName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTabID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method

.method private dailyThirtyClickStaticsHit()V
    .locals 5

    .line 641
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_app:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_app:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    const-string v4, "music_app_dailyrecommend_click"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 646
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTableName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTabID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method

.method private initTmeFavoritesListClickListener(Landroid/view/View;)V
    .locals 1

    .line 669
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$rfzrfLt3MYY4CCztkGogu1VKfxY;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$rfzrfLt3MYY4CCztkGogu1VKfxY;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTmeSongListClickListener(Landroid/view/View;)V
    .locals 1

    .line 650
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$3vKyCH3L6EAfClmk2j7z_zRvRDs;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$3vKyCH3L6EAfClmk2j7z_zRvRDs;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private openAccountWebApp()V
    .locals 3

    .line 592
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/ClickUtils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    .line 596
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->vipOpenClickStaticsHit()V

    .line 597
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;-><init>()V

    .line 598
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setSource(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->setAppId(Ljava/lang/String;)V

    .line 600
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->grayStatus:Z

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebapp(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V

    goto :goto_0

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWebapp(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private rankClickStaticsHit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 454
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_app:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_app:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    const-string v4, "music_app_rank_click"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 459
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withContentName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withContentID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    .line 460
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTableName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTabID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    .line 459
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method

.method private rankExposedStaticsHit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 444
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_app:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_app:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    const-string v4, "music_app_rank_click"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 449
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withContentName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withContentID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    .line 450
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTableName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTabID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    .line 449
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportExposeEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method

.method private refreshEntranceView(Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;)V
    .locals 6

    .line 480
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$1;->$SwitchMap$com$alibaba$ailabs$genie$musicplayer$fragments$BaseFragment$ChannelType:[I

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto/16 :goto_0

    .line 518
    :cond_0
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->channelBrandIvId:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_channel_brand_qq:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 520
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->loginStatusTvId:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    const-string v2, "#31C27C"

    .line 521
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 523
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->dailyThirtyViewId:Landroid/support/constraint/ConstraintLayout;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_daily_thirty_qq_bg:I

    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 525
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->songListViewId:Landroid/support/constraint/ConstraintLayout;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_song_list_bg_qq:I

    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 526
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->songListTopTitleTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->my_channel_music:I

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "QQ"

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->songListSubTitleTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->song_list_sub_title:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->favoritesViewId:Landroid/support/constraint/ConstraintLayout;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_favorites_bg_qq:I

    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 530
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->favoritesTitleTopTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->my_channel_music:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->favoritesSubTitleTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->favorites_sub_title:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->brandLogoIvId:Landroid/widget/ImageView;

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_brand_qq:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 500
    :cond_1
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->channelBrandIvId:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_channel_brand_kuwo:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->loginStatusTvId:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    const-string v2, "#FF7200"

    .line 503
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 505
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->dailyThirtyViewId:Landroid/support/constraint/ConstraintLayout;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_daily_thirty_kuwo_bg:I

    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 507
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->songListViewId:Landroid/support/constraint/ConstraintLayout;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_song_list_bg_kuwo:I

    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 508
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->songListTopTitleTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->my_channel_music:I

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "\u9177\u6211"

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->songListSubTitleTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->song_list_sub_title:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->favoritesViewId:Landroid/support/constraint/ConstraintLayout;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_favorites_bg_kuwo:I

    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 512
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->favoritesTitleTopTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->my_channel_music:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->favoritesSubTitleTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->favorites_sub_title:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->brandLogoIvId:Landroid/widget/ImageView;

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_brand_kuwo:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 482
    :cond_2
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->channelBrandIvId:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_channel_brand_kugou:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->loginStatusTvId:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    const-string v2, "#1E84E4"

    .line 485
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 487
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->dailyThirtyViewId:Landroid/support/constraint/ConstraintLayout;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_daily_thirty_kugou_bg:I

    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 489
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->songListViewId:Landroid/support/constraint/ConstraintLayout;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_song_list_bg_kugou:I

    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 490
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->songListTopTitleTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->my_channel_music:I

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "\u9177\u72d7"

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->songListSubTitleTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->song_list_sub_title:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->favoritesViewId:Landroid/support/constraint/ConstraintLayout;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_favorites_bg_kugou:I

    invoke-virtual {p2, v2}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 494
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->favoritesTitleTopTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->my_channel_music:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->favoritesSubTitleTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->favorites_sub_title:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->brandLogoIvId:Landroid/widget/ImageView;

    sget p2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_brand_kugou:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private refreshEntranceView(Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;)V
    .locals 7

    .line 540
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->channelBrandIvId:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_channel_brand_ne:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->loginStatusTvId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const-string v1, "#FF5A5A"

    .line 543
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 545
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->dailyThirtyViewId:Landroid/support/constraint/ConstraintLayout;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_daily_thirty_ne_bg:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 547
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->songListViewId:Landroid/support/constraint/ConstraintLayout;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_song_list_bg_ne:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 548
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->songListTopTitleTvId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->my_channel_music:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "\u7f51\u6613\u4e91"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->songListSubTitleTvId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->song_list_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->favoritesViewId:Landroid/support/constraint/ConstraintLayout;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->img_favorites_bg_ne:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setBackgroundResource(I)V

    .line 552
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->favoritesTitleTopTvId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->my_channel_music:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->favoritesSubTitleTvId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->favorites_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->brandLogoIvId:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_brand_ne:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private songListClickStaticsHit()V
    .locals 5

    .line 659
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_app:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_app:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    const-string v4, "music_app_mysonglist_click"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 664
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTableName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTabID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method

.method private vipOpenClickStaticsHit()V
    .locals 5

    .line 623
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_app:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_app:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    const-string v4, "music_app_membershipopen_click"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 627
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTableName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withTabID(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 694
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getDataType()I

    move-result p1

    return p1
.end method

.method public synthetic lambda$initTmeFavoritesListClickListener$134$TMEChannelAdapter(Landroid/view/View;)V
    .locals 2

    .line 670
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->collectionClickStaticsHit()V

    .line 672
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;->onItemClick(II)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initTmeSongListClickListener$133$TMEChannelAdapter(Landroid/view/View;)V
    .locals 2

    .line 651
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->songListClickStaticsHit()V

    .line 653
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;->onItemClick(II)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setTmeDailyThirtyClickListener$132$TMEChannelAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 633
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->dailyThirtyClickStaticsHit()V

    .line 634
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    .line 635
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    const-string v1, "daily_song"

    invoke-virtual {p2, v0, p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->playDailySong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " createListRequest  source = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",    mSource="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TME-ChannelAdapter"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$updateTmeAccountInfo$131$TMEChannelAdapter(Landroid/view/View;)V
    .locals 0

    .line 587
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->openAccountWebApp()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public loadNextPageRankData(I)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderRank:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    if-eqz v0, :cond_0

    .line 465
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$1200(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    .line 222
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getDataType()I

    move-result p2

    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    .line 224
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->GENIE_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 225
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getTBUserData(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;

    move-result-object p1

    .line 226
    iget-object p2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->avatar:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->tbNickName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->updateGenieAccountInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_0
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->NETEASE_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 228
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->updateNetEaseAccountInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->updateTmeAccountInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v0, p2, :cond_3

    .line 233
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderRank:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 143
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->GENIE_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_channel_entrance_genie:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    .line 146
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderChannelEntrance:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->dailyThirtyViewId:Landroid/support/constraint/ConstraintLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->setTmeDailyThirtyClickListener(Landroid/view/View;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->songListViewId:Landroid/support/constraint/ConstraintLayout;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->initTmeSongListClickListener(Landroid/view/View;)V

    .line 150
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->favoritesViewId:Landroid/support/constraint/ConstraintLayout;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->initTmeFavoritesListClickListener(Landroid/view/View;)V

    .line 151
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderChannelEntrance:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

    return-object p1

    .line 152
    :cond_0
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->NETEASE_TYPE:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_channel_entrance_netease:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    .line 155
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderChannelEntrance:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

    .line 156
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->refreshEntranceView(Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;)V

    .line 158
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->dailyThirtyViewId:Landroid/support/constraint/ConstraintLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->setTmeDailyThirtyClickListener(Landroid/view/View;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->songListViewId:Landroid/support/constraint/ConstraintLayout;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->initTmeSongListClickListener(Landroid/view/View;)V

    .line 160
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->favoritesViewId:Landroid/support/constraint/ConstraintLayout;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->initTmeFavoritesListClickListener(Landroid/view/View;)V

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderChannelEntrance:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

    return-object p1

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_channel_entrance:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    .line 165
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderChannelEntrance:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

    .line 166
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    if-eqz p1, :cond_2

    .line 167
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->refreshEntranceView(Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;)V

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->dailyThirtyViewId:Landroid/support/constraint/ConstraintLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->setTmeDailyThirtyClickListener(Landroid/view/View;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->songListViewId:Landroid/support/constraint/ConstraintLayout;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->initTmeSongListClickListener(Landroid/view/View;)V

    .line 172
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->favoritesViewId:Landroid/support/constraint/ConstraintLayout;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->initTmeFavoritesListClickListener(Landroid/view/View;)V

    .line 173
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderChannelEntrance:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

    return-object p1

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 176
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_channel_rank_list:I

    invoke-static {p2, v1, p1, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelRankListBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;

    .line 178
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelRankListBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderRank:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    .line 179
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderRank:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    return-object p1

    :cond_4
    const/4 v1, 0x3

    if-ne p2, v1, :cond_5

    .line 181
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_channel_footer:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 182
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Landroid/view/View;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mFooterViewHolder:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;

    .line 183
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mFooterViewHolder:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 711
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 712
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 713
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    .line 714
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->unbind()V

    .line 716
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->unbind()V

    .line 721
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    if-eqz v0, :cond_2

    .line 725
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->unbind()V

    .line 726
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelRankListBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;

    if-eqz v0, :cond_3

    .line 730
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;->unbind()V

    .line 731
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelRankListBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;

    .line 734
    :cond_3
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderChannelEntrance:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderChannelEntrance;

    .line 736
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 737
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 738
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mList:Ljava/util/List;

    .line 741
    :cond_4
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mViewHolderRank:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    .line 742
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mFooterViewHolder:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;

    .line 743
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;

    return-void
.end method

.method public setActivity(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setGrayStatus(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->grayStatus:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOnItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mSource:Ljava/lang/String;

    return-void
.end method

.method public setTmeDailyThirtyClickListener(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 631
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$aP_erMGLjvrqWlmcddR0Rtqf6H8;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$aP_erMGLjvrqWlmcddR0Rtqf6H8;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setType(Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mType:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment$ChannelType;

    return-void
.end method

.method public updateGenieAccountInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 473
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->channelPortraitIvId:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->accountNameTvId:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceGenieBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;->dailyThirtyTitleTvId:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->daily_thirty_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateNetEaseAccountInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;)V
    .locals 5

    .line 609
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getPicUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 610
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->channelPortraitIvId:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 611
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->accountNameTvId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->dailyThirtyTitleTvId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->private__title:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 614
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getNickName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->loginStatusTvId:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->loginStatusVipTvId:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceNetEaseBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;->loginStatusTvId:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->logined:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public updateTmeAccountInfo(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;)V
    .locals 7

    .line 559
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getPicUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 560
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->channelPortraitIvId:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 561
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->accountNameTvId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->dailyThirtyTitleTvId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->daily_thirty_title:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getNickName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->isIsVip()Z

    move-result v0

    const/4 v3, 0x4

    if-nez v0, :cond_1

    .line 567
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->openAccountTvId:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->open_vip:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 568
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->loginStatusTvId:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->loginStatusVipTvId:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->loginStatusTvId:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->logined:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 572
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->loginStatusTvId:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->openAccountHintTvId:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->open_vip_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->loginStatusTvId:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->loginStatusVipTvId:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemData.getStrVipExpire() is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getStrVipExpire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TME-ChannelAdapter"

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getStrVipExpire()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->openAccountHintTvId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->vip_expire_date:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 581
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse$ModelBean;->getStrVipExpire()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 580
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->openAccountTvId:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->buy_immediate:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 586
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->mTmeChannelEntranceBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;->openAccountViewId:Landroid/support/constraint/ConstraintLayout;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$o_Fzl3iE-oVLGebtz_wYfaIOPG8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$o_Fzl3iE-oVLGebtz_wYfaIOPG8;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)V

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
