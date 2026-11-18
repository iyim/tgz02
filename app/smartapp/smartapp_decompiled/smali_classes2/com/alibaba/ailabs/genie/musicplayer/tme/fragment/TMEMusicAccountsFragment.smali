.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.source "TMEMusicAccountsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$AccountBindInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TME-MusicAccountsFragment"

.field public static final VIP_FROM_SUPER_VIP:I = 0x1

.field public static final VIP_NORMAL:I


# instance fields
.field private btnBack:Landroid/widget/ImageView;

.field private btnKeep:Landroid/widget/TextView;

.field private btnSetting:Landroid/widget/TextView;

.field private mAccountBindInterface:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$AccountBindInterface;

.field private mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;

.field private mIconAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;

.field private mItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;

.field private mOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private mReOderApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAccountBenefitsDialog:Z

.field private mShowFirst:Z

.field private musicSourceIcons:Landroid/support/v7/widget/RecyclerView;

.field private musicSourceList:Landroid/support/v7/widget/RecyclerView;

.field private statusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;",
            ">;"
        }
    .end annotation
.end field

.field private userIcon:Landroid/widget/ImageView;

.field private userName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mShowFirst:Z

    .line 58
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mShowAccountBenefitsDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->unBindClickStaticsHit(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->unbindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->setSettingBtnVisible()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1600(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mIconAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$AccountBindInterface;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mAccountBindInterface:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$AccountBindInterface;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->bindClickStaticsHit(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->showUnbindDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$602(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mReOderApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->statusList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->statusList:Ljava/util/List;

    return-object p1
.end method

.method private bindClickStaticsHit(Ljava/lang/String;)V
    .locals 5

    .line 205
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mContext:Landroid/content/Context;

    const-string v4, "music_account_login_click"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 209
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withBrandName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method

.method private initClick()V
    .locals 2

    .line 213
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEMusicAccountsFragment$_U4CZegeUQQtLuR2rU3ABZlCO90;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEMusicAccountsFragment$_U4CZegeUQQtLuR2rU3ABZlCO90;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnSetting:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEMusicAccountsFragment$bdIxIYU0TNGvzbrm2Sobw1EEiU0;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEMusicAccountsFragment$bdIxIYU0TNGvzbrm2Sobw1EEiU0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnKeep:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEMusicAccountsFragment$LIj8AROwx-P7MXlghGxn-Jvtqdo;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEMusicAccountsFragment$LIj8AROwx-P7MXlghGxn-Jvtqdo;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initRequestOption()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_portrait:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_portrait:I

    .line 138
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideCircleTransform;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideCircleTransform;-><init>()V

    .line 139
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 140
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    :cond_0
    return-void
.end method

.method private initSourceList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->setSettingBtnVisible()V

    .line 149
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 153
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->musicSourceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 155
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->musicSourceList:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 166
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 170
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->musicSourceIcons:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 172
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isCM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;-><init>()V

    const-string v2, ""

    .line 175
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->setIconUrl(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 176
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->setIsAuthorized(Z)V

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mIconAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mIconAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;

    .line 183
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->musicSourceIcons:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mIconAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initUserInfo()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getTBUserData(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->avatar:Ljava/lang/String;

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getTBUserData(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 130
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->userName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getTBUserData(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->tbNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private pageStaticsHit()V
    .locals 5

    .line 108
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mContext:Landroid/content/Context;

    const-string v4, "music_account_page_exposure"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 113
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mShowFirst:Z

    if-eqz v1, :cond_0

    const-string v1, "desktop"

    goto :goto_0

    .line 116
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_app:Ljava/lang/String;

    .line 118
    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withFrom(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->pageAppear(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method

.method private querySuperAccountStatus()V
    .locals 2

    .line 288
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;-><init>()V

    .line 289
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;->QueryRightRecord(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$RequestCallback;)V

    return-void
.end method

.method private reOrderClickStaticsHit()V
    .locals 5

    .line 308
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mContext:Landroid/content/Context;

    const-string v4, "music_account_setup_click"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 313
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method

.method private setSettingBtnVisible()V
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modelBeanList item:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TME-MusicAccountsFragment"

    invoke-static {v5, v4}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsAuthorized()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v0, 0x1

    if-le v2, v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnSetting:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnSetting:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private showUnbindDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x95c

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x96c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9b7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa1c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "QM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "NE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "KW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "KG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    const-string v0, ""

    goto :goto_2

    :cond_5
    const-string v0, "\u7f51\u6613\u4e91 \u97f3\u4e50"

    goto :goto_2

    :cond_6
    const-string v0, "\u9177\u6211 \u97f3\u4e50"

    goto :goto_2

    :cond_7
    const-string v0, "\u9177\u72d7 \u97f3\u4e50"

    goto :goto_2

    :cond_8
    const-string v0, "QQ \u97f3\u4e50"

    .line 335
    :goto_2
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->setMusicSource(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;

    .line 338
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;

    invoke-direct {v2, p0, p1, p3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->setClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$ClickListener;)V

    .line 366
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->statusList:Ljava/util/List;

    const-string p3, "TME-unbind"

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    const/4 p1, 0x0

    .line 368
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->statusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 369
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->statusList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 370
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->statusList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QueryRightRecordBean$ModelBean;->getIsBinding()Z

    move-result p1

    goto :goto_4

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    .line 374
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5927\u4f1a\u5458\u6743\u76ca\u662f\u5426\u7ed1\u5b9a\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    .line 376
    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->create(I)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;->show()V

    goto :goto_5

    .line 378
    :cond_b
    invoke-virtual {v1, v5}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->create(I)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;->show()V

    goto :goto_5

    :cond_c
    const-string p1, "normal unbind"

    .line 381
    invoke-static {p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1, v5}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->create(I)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;->show()V

    :goto_5
    return-void
.end method

.method private unBindClickStaticsHit(Ljava/lang/String;)V
    .locals 5

    .line 440
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_account:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_music_account:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mContext:Landroid/content/Context;

    const-string v4, "music_account_logout_click"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 444
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withBrandName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    return-void
.end method

.method private unbindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 387
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest;-><init>()V

    .line 388
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$5;

    invoke-direct {v1, p0, p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$5;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest;->unbind(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/TMEUnbindRequest$RequestCallback;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 65
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_music_accounts_fragment:I

    return v0
.end method

.method public handError(Ljava/lang/Integer;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected initView()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->btn_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnBack:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->user_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->userIcon:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->btn_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnSetting:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->btn_keep:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnKeep:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->user_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->userName:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->music_source_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->musicSourceList:Landroid/support/v7/widget/RecyclerView;

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->music_source_icon_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->musicSourceIcons:Landroid/support/v7/widget/RecyclerView;

    .line 77
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->initRequestOption()V

    .line 78
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->initClick()V

    .line 79
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->initUserInfo()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->statusList:Ljava/util/List;

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->querySuperAccountStatus()V

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    const-string v1, "TME-MusicAccountsFragment"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " modelBeanList is"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->initSourceList(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    const-string v0, "list  get"

    .line 86
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->isShowAccountBenefitsDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    const-string v1, "member_pop"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getListAppsData(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getListAppsData()V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEMusicAccountsFragment$App0wvhOq0Iif7rGUzApUSxFaCk;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEMusicAccountsFragment$App0wvhOq0Iif7rGUzApUSxFaCk;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    :goto_1
    return-void
.end method

.method public isShowAccountBenefitsDialog()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mShowAccountBenefitsDialog:Z

    return v0
.end method

.method public synthetic lambda$initClick$97$TMEMusicAccountsFragment(Landroid/view/View;)V
    .locals 0

    .line 242
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mShowFirst:Z

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initClick$98$TMEMusicAccountsFragment(Landroid/view/View;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->setSetting(Z)V

    .line 253
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnSetting:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnKeep:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initClick$99$TMEMusicAccountsFragment(Landroid/view/View;)V
    .locals 2

    .line 260
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mReOderApps:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->setSetting(Z)V

    .line 262
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnKeep:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->btnSetting:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->reOrderClickStaticsHit()V

    .line 265
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest;-><init>()V

    .line 266
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mReOderApps:Ljava/util/List;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest;->reOrderApps(Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mReOderApps:Ljava/util/List;

    if-nez p1, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8bf7\u5148\u70b9\u51fb\u4e0b\u65b9\u4f18\u5148\u64ad\u653e\u8fdb\u884c\u4f18\u5148\u7ea7\u8c03\u6574\u518d\u4fdd\u5b58"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$initView$96$TMEMusicAccountsFragment(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modelBeanList is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TME-MusicAccountsFragment"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/viewmodel/TMEMusicModel;->getMutableLiveAppList()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->initSourceList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->musicSourceList:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 476
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->musicSourceList:Landroid/support/v7/widget/RecyclerView;

    .line 477
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->musicSourceIcons:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 481
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->musicSourceIcons:Landroid/support/v7/widget/RecyclerView;

    .line 482
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mIconAdapter:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;

    .line 484
    :cond_1
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onStop()V

    .line 104
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->pageStaticsHit()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setAccountBindInterface(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$AccountBindInterface;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mAccountBindInterface:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment$AccountBindInterface;

    return-void
.end method

.method public setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;

    return-void
.end method

.method public setShowAccountBenefitsDialog(Z)V
    .locals 0

    .line 469
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mShowAccountBenefitsDialog:Z

    return-void
.end method

.method public setShowFirst(Z)V
    .locals 0

    .line 452
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEMusicAccountsFragment;->mShowFirst:Z

    return-void
.end method
