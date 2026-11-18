.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaikeCardFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaikeCardFragment"


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field mAutoChangePageRunnable:Ljava/lang/Runnable;

.field private mBigCardView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mExitView:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

.field private mJumpIV:Landroid/widget/ImageView;

.field private mLinkContainer:Landroid/view/View;

.field private mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

.field private mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

.field private mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

.field private mMainHandler:Landroid/os/Handler;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mRootView:Landroid/view/View;

.field private mSmallCardlView:Landroid/widget/LinearLayout;

.field private mSmallCenterView:Landroid/widget/ImageView;

.field private mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mMainHandler:Landroid/os/Handler;

    .line 323
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$8;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mAutoChangePageRunnable:Ljava/lang/Runnable;

    .line 337
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$9;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$9;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 348
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$10;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$10;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->changeToShowSmallCard()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->changeToShowBigCard()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/view/GestureDetector;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->detector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->changeToScaleImagePage()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mRoot:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCenterView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->setBgImage(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mJumpIV:Landroid/widget/ImageView;

    return-object p0
.end method

.method private changeToScaleImagePage()V
    .locals 4

    .line 311
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;-><init>()V

    .line 312
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 313
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "image_list"

    .line 314
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 315
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->setArguments(Landroid/os/Bundle;)V

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity replaceFragment fragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaikeCardFragment"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 319
    sget v2, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 320
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private changeToShowBigCard()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mBigCardView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCenterView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private changeToShowSmallCard()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mBigCardView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCenterView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setBgImage(I)V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mRoot:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mContext:Landroid/content/Context;

    .line 66
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_baike_card_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getRenderViewModel()Landroid/arch/lifecycle/ViewModel;

    move-result-object p2

    .line 68
    instance-of p3, p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    const-string v1, "BaikeCardFragment"

    if-eqz p3, :cond_3

    .line 69
    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "render viewModel:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mRoot:Landroid/widget/RelativeLayout;

    .line 72
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->jump_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mJumpIV:Landroid/widget/ImageView;

    .line 73
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->big_card:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mBigCardView:Landroid/widget/LinearLayout;

    .line 75
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->small_card:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    .line 76
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->small_card_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 77
    sget p3, Lcom/alibaba/ailabs/basedomain/R$id;->small_card_subtitle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 78
    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->small_card_center_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCenterView:Landroid/widget/ImageView;

    .line 80
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mBigCardView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getSubtitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->link_container_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkContainer:Landroid/view/View;

    .line 89
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->linkItem1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 90
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 91
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkContainer:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 93
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    .line 94
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 97
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkContainer:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_0
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->linkItem2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 101
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    .line 102
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 103
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    .line 104
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 106
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 109
    :goto_1
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->linkItem3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 110
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x2

    if-le p2, p3, :cond_2

    .line 111
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 112
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    .line 113
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 117
    :goto_2
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 118
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getContent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mBigCardView:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$2;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mExitView:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    .line 133
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mExitView:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$3;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mRoot:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$4;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$4;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mJumpIV:Landroid/widget/ImageView;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$5;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$5;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    const-string p2, "start fragment with wrong view model, finish self"

    .line 157
    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :cond_4
    :goto_3
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 292
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 293
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mRoot:Landroid/widget/RelativeLayout;

    .line 171
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mExitView:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    .line 172
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    .line 173
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 174
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 175
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 176
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mJumpIV:Landroid/widget/ImageView;

    .line 177
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mBigCardView:Landroid/widget/LinearLayout;

    .line 178
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mSmallCenterView:Landroid/widget/ImageView;

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 209
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->setBgImage(I)V

    .line 211
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->isForceCardPage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mJumpIV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mAutoChangePageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mAutoChangePageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mJumpIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->registerMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    .line 219
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$7;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->detector:Landroid/view/GestureDetector;

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 281
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStop()V
    .locals 2

    .line 286
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 287
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->unregisterMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    return-void
.end method
