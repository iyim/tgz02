.class public Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;
.super Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;
.source "ViewPageFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment<",
        "Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewPageFragment"


# instance fields
.field private mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;

.field private mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

.field private mJokeBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

.field private mLastItemType:Ljava/lang/String;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

.field private mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

.field private mRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->processItemClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private createViewByType(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 382
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;->getDataType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "music"

    .line 383
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "extend"

    const-string v3, "TME-ViewPageFragment"

    const/4 v4, 0x0

    if-nez v1, :cond_6

    const-string v1, "children_song"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "program"

    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "story"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "radio"

    .line 393
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->fragment_radiostation:I

    invoke-static {v1, v5, p2, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    .line 395
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    invoke-direct {p2, v1, v4, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/RadioPlayerView;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioPlayerView:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    goto/16 :goto_2

    :cond_2
    const-string v1, "joke"

    .line 398
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 399
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->fragment_jokeplayer:I

    invoke-static {v1, v5, p2, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mJokeBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    .line 400
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mJokeBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    invoke-direct {p2, v1, v4, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/JokePlayerView;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    .line 401
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JokePlayerView:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mJokeBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    goto/16 :goto_2

    .line 403
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->music_extend_fragment:I

    invoke-static {v1, v3, p2, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    .line 405
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    .line 406
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-direct {p0, v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->initExtendView(Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 407
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->showAnim()V

    goto/16 :goto_2

    .line 409
    :cond_4
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->music_player_fragment:I

    invoke-static {v1, v5, p2, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    .line 410
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    .line 411
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    invoke-direct {v1, v4, v5, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataType unknow MusicPlayerView:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 389
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->ximalaya_player_fragment:I

    invoke-static {v1, v5, p2, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    .line 390
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    invoke-direct {p2, v1, v4, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/XimalayaPlayerView;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    .line 391
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XimalayaPlayerView:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    goto :goto_2

    .line 384
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->music_player_fragment:I

    invoke-static {v1, v5, p2, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    .line 385
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    .line 386
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    invoke-direct {v1, v4, v5, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicPlayerView:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 415
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz v0, :cond_7

    .line 416
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->setController(Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 417
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->setViewModel(Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;)V

    .line 418
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 419
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->processPayMsg(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    :cond_7
    return-object p2
.end method

.method private initExtendView(Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "ViewPageFragment"

    const-string p2, "MusicExtendFragmentBinding si null, return"

    .line 427
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 430
    :cond_0
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->extendRcyId:Landroid/support/v7/widget/RecyclerView;

    .line 431
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 432
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->checkData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Ljava/util/List;

    move-result-object v0

    .line 433
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    .line 434
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->setOnItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;)V

    .line 496
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private processItemClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;II)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, ""

    .line 504
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mItemType:Ljava/lang/String;

    const-string v1, "music"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mItemType:Ljava/lang/String;

    const-string v3, "children_song"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mItemType:Ljava/lang/String;

    const-string v3, "program"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mItemType:Ljava/lang/String;

    const-string v3, "story"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 572
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mItemType:Ljava/lang/String;

    const-string p3, "radio"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 573
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$RadioSimilarParam;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$RadioSimilarParam;-><init>()V

    .line 574
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$RadioSimilarParam;->itemId:Ljava/lang/String;

    .line 575
    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$RadioSimilarParam;->itemType:Ljava/lang/String;

    .line 576
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$RadioSimilarParam;->itemValue:Ljava/lang/String;

    .line 577
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getSource()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$RadioSimilarParam;->source:Ljava/lang/String;

    .line 578
    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$RadioSimilarParam;->type:Ljava/lang/String;

    .line 579
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 580
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->showLoading(Z)V

    .line 581
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    .line 582
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$5;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$5;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-virtual {p2, p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->createList(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    if-eq v2, p3, :cond_4

    if-ne v1, p3, :cond_5

    .line 552
    :cond_4
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;-><init>()V

    .line 553
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getSource()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->source:Ljava/lang/String;

    .line 554
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mItemType:Ljava/lang/String;

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->itemType:Ljava/lang/String;

    .line 555
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getPlayFrom()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->type:Ljava/lang/String;

    .line 556
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getItemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->itemId:Ljava/lang/String;

    .line 557
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 559
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->showLoading(Z)V

    .line 560
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    .line 561
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$4;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->createList(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    goto/16 :goto_3

    :cond_6
    :goto_1
    if-ne v2, p3, :cond_7

    .line 506
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;-><init>()V

    .line 507
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getSource()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->source:Ljava/lang/String;

    .line 508
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mItemType:Ljava/lang/String;

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->itemType:Ljava/lang/String;

    .line 509
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getPlayFrom()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->type:Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getItemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->itemId:Ljava/lang/String;

    .line 511
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    :cond_7
    if-ne v1, p3, :cond_8

    .line 513
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicMoreParam;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicMoreParam;-><init>()V

    .line 514
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getItemId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicMoreParam;->itemId:Ljava/lang/String;

    .line 515
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mItemType:Ljava/lang/String;

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicMoreParam;->itemType:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getTitle()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicMoreParam;->itemValue:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicMoreParam;->pos:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getSource()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicMoreParam;->source:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getPlayFrom()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicMoreParam;->type:Ljava/lang/String;

    .line 520
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    const/4 v0, 0x3

    if-ne v0, p3, :cond_9

    .line 522
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicAlbumParam;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicAlbumParam;-><init>()V

    .line 523
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getItemId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicAlbumParam;->itemId:Ljava/lang/String;

    .line 524
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mItemType:Ljava/lang/String;

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicAlbumParam;->itemType:Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicAlbumParam;->pos:Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getSource()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicAlbumParam;->source:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getPlayFrom()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicAlbumParam;->type:Ljava/lang/String;

    .line 528
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_9
    const/4 v0, 0x4

    if-ne v0, p3, :cond_a

    .line 530
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;-><init>()V

    .line 531
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getSource()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->source:Ljava/lang/String;

    .line 532
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mItemType:Ljava/lang/String;

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->itemType:Ljava/lang/String;

    .line 533
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getPlayFrom()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->type:Ljava/lang/String;

    .line 534
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getItemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest$MusicSimilarParam;->itemId:Ljava/lang/String;

    .line 535
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 537
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->showLoading(Z)V

    .line 538
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    .line 539
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$3;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->createList(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private processPayMsg(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "ViewPageFragment"

    const-string v0, "processPayMsg is null, return"

    .line 326
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz p1, :cond_1

    .line 330
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->showBuyBtns()V

    :cond_1
    return-void
.end method

.method private removeObservers()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getPlayState()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getLrcLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getProgress()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getDuration()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getSpeed()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getCommonLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    :cond_0
    return-void
.end method

.method private setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;Z)V
    .locals 2

    .line 249
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    if-nez p1, :cond_0

    const-string p1, "ViewPageFragment"

    const-string p2, "setContentPlay, contentPlay is null, return"

    .line 251
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setContentPlay"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mLastItemType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 259
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshPlayState(I)V

    .line 261
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->processPayMsg(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    .line 264
    :cond_2
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->checkData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 265
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c

    .line 266
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->initExtendView(Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V

    goto/16 :goto_0

    .line 270
    :cond_3
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 271
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->finish()V

    .line 272
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    .line 274
    :cond_4
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    if-eqz p2, :cond_5

    .line 275
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->unbind()V

    .line 276
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    .line 278
    :cond_5
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    if-eqz p2, :cond_6

    .line 279
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->unbind()V

    .line 280
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    .line 282
    :cond_6
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    if-eqz p2, :cond_7

    .line 283
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->unbind()V

    .line 284
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    .line 286
    :cond_7
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    if-eqz p2, :cond_8

    .line 287
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->unbind()V

    .line 288
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    .line 290
    :cond_8
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mJokeBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    if-eqz p2, :cond_9

    .line 291
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;->unbind()V

    .line 292
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mJokeBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    .line 294
    :cond_9
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 295
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mList:Ljava/util/List;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->checkData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extend list size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setContentPlay:"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz p2, :cond_b

    .line 300
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_b

    .line 301
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mList:Ljava/util/List;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;

    const-string v1, "extend"

    invoke-direct {v0, p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_b
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;

    if-eqz p2, :cond_c

    .line 304
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mList:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->setData(Ljava/util/List;)V

    .line 305
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->notifyDataSetChanged()V

    .line 308
    :cond_c
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mLastItemType:Ljava/lang/String;

    return-void
.end method

.method private showAnim()V
    .locals 5

    .line 335
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mContext:Landroid/content/Context;

    const-string v2, "spMusic"

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "haveShow"

    const-string v3, ""

    .line 337
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "ViewPageFragment"

    const-string v1, "have show, return"

    .line 339
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->findMore:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->findMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->findTvId:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->findTvId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    .line 348
    :cond_2
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    .line 349
    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->showFindMoreIcon(Z)V

    .line 351
    :cond_3
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$anim;->extend:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 352
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    if-eqz v4, :cond_4

    .line 353
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 354
    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 377
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 75
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->viewpager_fragment_layout:I

    return v0
.end method

.method public handError(Ljava/lang/Integer;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public initObserver()V
    .locals 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mViewModel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPageFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getPlayState()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$LNIStzsgweoRmtqW-7oqU5CLC54;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$LNIStzsgweoRmtqW-7oqU5CLC54;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getLrcLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$EWWLk5xcmYilPhXWxuE4T5PdhYo;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$EWWLk5xcmYilPhXWxuE4T5PdhYo;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getProgress()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$3P3Hgw0EHe0cCV_h2cU0x9pcATw;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$3P3Hgw0EHe0cCV_h2cU0x9pcATw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getDuration()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$-6ypyu_1Ehv-TPddi7CV-We4DhE;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$-6ypyu_1Ehv-TPddi7CV-We4DhE;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getSpeed()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$wO6udqHKc5xoYkShqCRXkMgwpN0;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$wO6udqHKc5xoYkShqCRXkMgwpN0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewModel:Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MainViewModel;->getCommonLiveData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$as4TAbQDHI4zikFdp_ilTshi6-s;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$as4TAbQDHI4zikFdp_ilTshi6-s;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method protected initView()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->baseViewPager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 174
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mList:Ljava/util/List;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$OzdS388zQUTEVtiOWkn9tQZZBFo;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$ViewPageFragment$OzdS388zQUTEVtiOWkn9tQZZBFo;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;-><init>(Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageCreator;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;

    .line 175
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public synthetic lambda$initObserver$43$ViewPageFragment(Ljava/lang/Integer;)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mPlayerView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPageFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->refreshPlayState(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initObserver$44$ViewPageFragment(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->loadLrcEntryList(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initObserver$45$ViewPageFragment(Ljava/lang/Integer;)V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->updateTime(JJ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initObserver$46$ViewPageFragment(Ljava/lang/Integer;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->updateDuration(J)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initObserver$47$ViewPageFragment(Ljava/lang/Float;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v1, "speed"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 212
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    const-string v1, "setSpeed"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initObserver$48$ViewPageFragment(Ljava/lang/Integer;)V
    .locals 2

    .line 216
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mContext:Landroid/content/Context;

    const-string v0, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_2

    .line 219
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "refresh"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$initView$42$ViewPageFragment(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->createViewByType(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 598
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onActionDown(Landroid/view/MotionEvent;)V

    .line 599
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->onActionDown(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onActionUp(Landroid/view/MotionEvent;)V
    .locals 1

    .line 606
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onActionUp(Landroid/view/MotionEvent;)V

    .line 607
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->onActionUp(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "ViewPageFragment"

    const-string v0, "getActivity is null, return"

    .line 82
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->finish()V

    .line 91
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->Clear()V

    .line 95
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 98
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->unbind()V

    .line 102
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->unbind()V

    .line 106
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->unbind()V

    .line 110
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    if-eqz v0, :cond_6

    .line 113
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->unbind()V

    .line 114
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mJokeBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    if-eqz v0, :cond_7

    .line 117
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;->unbind()V

    .line 118
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mJokeBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 122
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mList:Ljava/util/List;

    .line 125
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->removeObservers()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BaseFragment;->onDestroyView()V

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->finish()V

    .line 133
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->Clear()V

    .line 137
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mAdapter:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 141
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;->unbind()V

    .line 145
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mExtendBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;->unbind()V

    .line 149
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mMusicBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    if-eqz v0, :cond_5

    .line 152
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;->unbind()V

    .line 153
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mXimalayaBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    if-eqz v0, :cond_6

    .line 156
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;->unbind()V

    .line 157
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mRadioBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mJokeBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    if-eqz v0, :cond_7

    .line 160
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;->unbind()V

    .line 161
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mJokeBinding:Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 165
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mList:Ljava/util/List;

    .line 168
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->removeObservers()V

    return-void
.end method

.method public setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 1

    const/4 v0, 0x1

    .line 245
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateExtra(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "updateExtend"

    .line 313
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getContentPlay()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->setContentPlay(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;Z)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->mPlayerView:Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->updateExtra(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
