.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaikeImportancePersonFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaikeImportancePersonFragment"


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field mAutoChangePageRunnable:Ljava/lang/Runnable;

.field private mBigCardView:Landroid/widget/LinearLayout;

.field private mContentTV:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mExitView:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

.field private mJumpIV:Landroid/widget/ImageView;

.field private mLinkContainer:Landroid/view/View;

.field private mLinkItemSmallView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

.field private mLinkItemSmallView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

.field private mLinkItemSmallView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

.field private mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

.field private mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

.field private mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

.field private mMainHandler:Landroid/os/Handler;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mRootView:Landroid/view/View;

.field private mSmallCardSubtitle:Landroid/widget/TextView;

.field private mSmallCardTitle:Landroid/widget/TextView;

.field private mSmallCardlView:Landroid/widget/LinearLayout;

.field private mSmallCenterView:Landroid/widget/ImageView;

.field private mSubtitleTV:Landroid/widget/TextView;

.field private mTitleTV:Landroid/widget/TextView;

.field private mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mMainHandler:Landroid/os/Handler;

    .line 325
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$8;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mAutoChangePageRunnable:Ljava/lang/Runnable;

    .line 337
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$9;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$9;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 347
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$10;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$10;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->changeToShowSmallCard()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->changeToShowBigCard()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Landroid/view/GestureDetector;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->detector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->changeToScaleImagePage()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mRoot:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCenterView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->setBgImage(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mJumpIV:Landroid/widget/ImageView;

    return-object p0
.end method

.method private changeToScaleImagePage()V
    .locals 4

    .line 313
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;-><init>()V

    .line 314
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 315
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "image_list"

    .line 316
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 317
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->setArguments(Landroid/os/Bundle;)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity replaceFragment fragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaikeImportancePersonFragment"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 321
    sget v2, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 322
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private changeToShowBigCard()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mBigCardView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCenterView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private changeToShowSmallCard()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mBigCardView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCenterView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setBgImage(I)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mRoot:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mContext:Landroid/content/Context;

    .line 71
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_baike_importance_person_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getRenderViewModel()Landroid/arch/lifecycle/ViewModel;

    move-result-object p2

    const-string p3, "BaikeImportancePersonFragment"

    if-eqz p2, :cond_3

    .line 73
    instance-of v1, p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    if-eqz v1, :cond_3

    .line 74
    nop

    nop

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "render viewModel:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mRoot:Landroid/widget/RelativeLayout;

    .line 77
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->jump_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mJumpIV:Landroid/widget/ImageView;

    .line 78
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->big_card:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mBigCardView:Landroid/widget/LinearLayout;

    .line 80
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->small_card:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    .line 81
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->small_card_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCardTitle:Landroid/widget/TextView;

    .line 82
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->small_card_subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCardSubtitle:Landroid/widget/TextView;

    .line 83
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->small_card_center_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCenterView:Landroid/widget/ImageView;

    .line 85
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mBigCardView:Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mTitleTV:Landroid/widget/TextView;

    .line 88
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mTitleTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCardTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSubtitleTV:Landroid/widget/TextView;

    .line 91
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSubtitleTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCardSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->link_container_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkContainer:Landroid/view/View;

    .line 94
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->linkItem1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 95
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->linkItem1_small:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 96
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkContainer:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 99
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    .line 100
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 102
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    .line 103
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView1:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 106
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkContainer:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :goto_0
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->linkItem2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 110
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->linkItem2_small:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 111
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 112
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 113
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    .line 114
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 117
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    .line 118
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 120
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView2:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 123
    :goto_1
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->linkItem3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 124
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->linkItem3_small:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 125
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x2

    if-le p2, v1, :cond_2

    .line 126
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 127
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    .line 128
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 131
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getLinkItemDatas()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    .line 132
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 134
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mLinkItemSmallView3:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 136
    :goto_2
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mContentTV:Landroid/widget/TextView;

    .line 137
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mContentTV:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getContent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mBigCardView:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mSmallCardlView:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$2;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mExitView:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    .line 154
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mExitView:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$3;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mRoot:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$4;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$4;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mJumpIV:Landroid/widget/ImageView;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$5;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$5;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    const-string p2, "start fragment with wrong view model, finish self"

    .line 179
    invoke-static {p3, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 183
    :goto_3
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->setBgImage(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 294
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 295
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 213
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->isForceCardPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mJumpIV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mAutoChangePageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mAutoChangePageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mJumpIV:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->registerMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    .line 222
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$7;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->detector:Landroid/view/GestureDetector;

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 283
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStop()V
    .locals 2

    .line 288
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 289
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->unregisterMyOnTouchListener(Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;)V

    return-void
.end method
