.class public Lcom/alibaba/android/ultron/vfw/web/WebMaskView;
.super Landroid/widget/RelativeLayout;
.source "WebMaskView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WebMaskView"


# instance fields
.field private mRlErrView:Landroid/widget/RelativeLayout;

.field private mRlLoading:Landroid/widget/RelativeLayout;

.field private mTextViewRefresh:Landroid/widget/TextView;

.field private mVesselView:Lcom/taobao/vessel/VesselView;

.field private mWebUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/vessel/VesselView;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Lcom/taobao/vessel/VesselView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->init()V

    .line 32
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mWebUrl:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mVesselView:Lcom/taobao/vessel/VesselView;

    .line 34
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "WebMaskView"

    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->setTag(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mVesselView:Lcom/taobao/vessel/VesselView;

    invoke-virtual {p1, p0}, Lcom/taobao/vessel/VesselView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/web/WebMaskView;)Lcom/taobao/vessel/VesselView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mVesselView:Lcom/taobao/vessel/VesselView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/vfw/web/WebMaskView;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mWebUrl:Ljava/lang/String;

    return-object p0
.end method

.method private init()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->loadView()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private loadView()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alibaba/android/ultron/vfw/R$layout;->ultron_mask_view_state:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    sget v1, Lcom/alibaba/android/ultron/vfw/R$id;->rl_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mRlLoading:Landroid/widget/RelativeLayout;

    .line 44
    sget v1, Lcom/alibaba/android/ultron/vfw/R$id;->rl_err:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mRlErrView:Landroid/widget/RelativeLayout;

    .line 45
    sget v1, Lcom/alibaba/android/ultron/vfw/R$id;->mask_view_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mTextViewRefresh:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mTextViewRefresh:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/web/WebMaskView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView$1;-><init>(Lcom/alibaba/android/ultron/vfw/web/WebMaskView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->setProgressBarVisible(Z)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->setErrorTextVisible(Z)V

    const/16 v0, 0x8

    .line 75
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->setVisibility(I)V

    return-void
.end method

.method public getVesselView()Lcom/taobao/vessel/VesselView;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mVesselView:Lcom/taobao/vessel/VesselView;

    return-object v0
.end method

.method public isRetry()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mRlErrView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setErrorTextVisible(Z)V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0, v2}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0, v2}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->setProgressBarVisible(Z)V

    .line 92
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mRlErrView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mRlErrView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setProgressBarVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mRlLoading:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mRlLoading:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public startLoading()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->setVisibility(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->mRlLoading:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 69
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/android/ultron/vfw/web/WebMaskView;->setErrorTextVisible(Z)V

    return-void
.end method
