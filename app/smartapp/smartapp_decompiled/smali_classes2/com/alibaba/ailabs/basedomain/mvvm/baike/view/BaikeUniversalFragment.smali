.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;
.super Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;
.source "BaikeUniversalFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaikeUniversalFragment"


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private mContext:Landroid/content/Context;

.field private mImageIV:Landroid/widget/ImageView;

.field private mImageViewLayout:Landroid/widget/RelativeLayout;

.field private mIndexTV:Landroid/widget/TextView;

.field private mJumpArrayIV:Landroid/widget/ImageView;

.field private mLinkItemView:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSubtitleTV:Landroid/widget/TextView;

.field private mTextTV:Landroid/widget/TextView;

.field private mTitleTV:Landroid/widget/TextView;

.field private mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mLinkItemView:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->isActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->jumpToCard()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mTextTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Landroid/widget/ScrollView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mParentLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mImageIV:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Landroid/view/GestureDetector;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->detector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private isActive()Z
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isHostResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private jumpToCard()V
    .locals 2

    .line 235
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->canJump()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->jumpNewPage(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleOnTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->stopAutoRoll()V

    const/4 p1, 0x0

    return p1
.end method

.method protected initOnTouch()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$8;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mOnTouchListener:Lcom/alibaba/ailabs/basedomain/ui/MainActivity$MyOnTouchListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mContext:Landroid/content/Context;

    .line 62
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getRenderViewModel()Landroid/arch/lifecycle/ViewModel;

    move-result-object p3

    .line 63
    instance-of v0, p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    const-string v1, "BaikeUniversalFragment"

    if-eqz v0, :cond_6

    .line 64
    check-cast p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mViewModel:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_baike_universal_layout:I

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->isLite()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "onCreateView inflate base_domain_baike_universal_lite_layout"

    .line 69
    invoke-static {v1, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_baike_universal_lite_layout:I

    :cond_0
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "render viewModel:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 75
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->jump_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mJumpArrayIV:Landroid/widget/ImageView;

    .line 76
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->canJump()Z

    move-result p2

    const/16 p3, 0x8

    if-eqz p2, :cond_1

    .line 77
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mJumpArrayIV:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mJumpArrayIV:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :goto_0
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mImageIV:Landroid/widget/ImageView;

    .line 82
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->index:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mIndexTV:Landroid/widget/TextView;

    .line 83
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 84
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->getImageCount()I

    move-result p2

    const/4 v1, 0x1

    if-lt p2, v1, :cond_2

    .line 86
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mIndexTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->getImageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 88
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mImageIV:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :goto_1
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mImageViewLayout:Landroid/widget/RelativeLayout;

    .line 91
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mTitleTV:Landroid/widget/TextView;

    .line 92
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 93
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mTitleTV:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 95
    :cond_3
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mTitleTV:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mTitleTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_2
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mSubtitleTV:Landroid/widget/TextView;

    .line 99
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->getSubtitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 100
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mSubtitleTV:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 102
    :cond_4
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mSubtitleTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_3
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->linkItem:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mLinkItemView:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 105
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mTextTV:Landroid/widget/TextView;

    .line 106
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mTextTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->hasLinks()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 108
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mLinkItemView:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 109
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->beginShowLinks()V

    .line 110
    new-instance p2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V

    .line 116
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->getLinkItemData()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    goto :goto_4

    .line 118
    :cond_5
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mLinkItemView:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setVisibility(I)V

    .line 121
    :goto_4
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    .line 124
    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$2;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$2;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mImageIV:Landroid/widget/ImageView;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$3;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$3;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mJumpArrayIV:Landroid/widget/ImageView;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$4;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$4;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mMainHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$5;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$5;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$6;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$6;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V

    invoke-direct {p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->detector:Landroid/view/GestureDetector;

    goto :goto_5

    :cond_6
    const-string p1, "start fragment with wrong view model, finish self"

    .line 226
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :cond_7
    const/4 p1, 0x0

    :goto_5
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mImageIV:Landroid/widget/ImageView;

    .line 288
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 289
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mLinkItemView:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    .line 290
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mIndexTV:Landroid/widget/TextView;

    .line 291
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    .line 292
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mSubtitleTV:Landroid/widget/TextView;

    .line 293
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mTitleTV:Landroid/widget/TextView;

    .line 294
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mImageViewLayout:Landroid/widget/RelativeLayout;

    .line 295
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mJumpArrayIV:Landroid/widget/ImageView;

    .line 296
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 297
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mTextTV:Landroid/widget/TextView;

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 242
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeBaseFragment;->onResume()V

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mViewModel:Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->getImage()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mImageViewLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mImageIV:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-void

    .line 253
    :cond_0
    new-instance v2, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->mImageViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
