.class public Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;
.super Lcom/taobao/android/sku/presenter/AbsLoadingAliXSkuPresenter;
.source "AliXSkuPopupPresenter.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

.field protected mListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected mLoading:Landroid/view/View;

.field protected mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/taobao/android/sku/presenter/AbsLoadingAliXSkuPresenter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->initContext()V

    .line 31
    invoke-direct {p0}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->initLoading()V

    .line 32
    invoke-direct {p0}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->initBody()V

    return-void
.end method

.method private getNinetyPercentScreenHeight()I
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private initBody()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->getBodyView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private initContext()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/taobao/android/sku/lib/R$layout;->xsku_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    return-void
.end method

.method private initLoading()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    sget v1, Lcom/taobao/android/sku/lib/R$id;->alix_loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mLoading:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mLoading:Landroid/view/View;

    new-instance v1, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter$1;

    invoke-direct {v1, p0}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter$1;-><init>(Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mLoading:Landroid/view/View;

    new-instance v1, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter$2;

    invoke-direct {v1, p0}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter$2;-><init>(Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private viewParentSafeCheck()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 135
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 136
    nop

    nop

    iget-object v1, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeDefaultAnimator(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 89
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 90
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 91
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 92
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/android/sku/widget/ExtraDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    invoke-virtual {v0}, Lcom/taobao/android/sku/widget/ExtraDialog;->dismiss()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    :cond_0
    return-void
.end method

.method public dismissLoading()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mLoading:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getBodyView()Landroid/support/v7/widget/RecyclerView;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    sget v1, Lcom/taobao/android/sku/lib/R$id;->body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 79
    invoke-virtual {p0, v0}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->closeDefaultAnimator(Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method

.method public getFooterView()Landroid/widget/LinearLayout;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    sget v1, Lcom/taobao/android/sku/lib/R$id;->footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getHeaderView()Landroid/widget/LinearLayout;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    sget v1, Lcom/taobao/android/sku/lib/R$id;->header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public present()V
    .locals 11

    .line 100
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 104
    nop

    nop

    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 108
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 109
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/taobao/android/sku/widget/ExtraDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 118
    :cond_3
    invoke-direct {p0}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->viewParentSafeCheck()V

    .line 119
    new-instance v0, Lcom/taobao/android/sku/widget/ExtraDialog;

    iget-object v1, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/taobao/android/sku/lib/R$style;->Alix_Sku_PopupDialog:I

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/sku/widget/ExtraDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    .line 120
    iget-object v3, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    iget-object v4, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    const/4 v5, -0x1

    invoke-direct {p0}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->getNinetyPercentScreenHeight()I

    move-result v6

    const/16 v7, 0x50

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/taobao/android/sku/lib/R$style;->Alix_Sku_PopupDialog_Animation:I

    invoke-virtual/range {v3 .. v10}, Lcom/taobao/android/sku/widget/ExtraDialog;->showDialog(Landroid/view/View;IIIIII)V

    .line 122
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    new-instance v1, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter$3;

    invoke-direct {v1, p0}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter$3;-><init>(Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;)V

    invoke-virtual {v0, v1}, Lcom/taobao/android/sku/widget/ExtraDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public presentLoading()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mLoading:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method
