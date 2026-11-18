.class public Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;
.super Ljava/lang/Object;
.source "AliXSkuPopupPresenter.java"

# interfaces
.implements Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->initContext()V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->initBody()V

    return-void
.end method

.method private changeFontSize(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 132
    nop

    nop

    const/4 v0, 0x0

    .line 133
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->changeFontSize(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 137
    nop

    nop

    .line 138
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    return-void
.end method

.method private getEightyPercentScreenHeight()I
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private initBody()V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->getBodyView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private initContext()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->genie_xsku_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    return-void
.end method

.method private viewParentSafeCheck()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 101
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 102
    nop

    nop

    iget-object v1, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeDefaultAnimator(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 63
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 64
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 65
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 66
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

    .line 114
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/android/sku/widget/ExtraDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    invoke-virtual {v0}, Lcom/taobao/android/sku/widget/ExtraDialog;->dismiss()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    :cond_0
    return-void
.end method

.method public getBodyView()Landroid/support/v7/widget/RecyclerView;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$id;->body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 55
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->closeDefaultAnimator(Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method

.method public getFooterView()Landroid/widget/LinearLayout;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$id;->footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getHeaderView()Landroid/widget/LinearLayout;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$id;->header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public present()V
    .locals 11

    .line 74
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 78
    nop

    nop

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 82
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/taobao/android/sku/widget/ExtraDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->viewParentSafeCheck()V

    .line 93
    new-instance v0, Lcom/taobao/android/sku/widget/ExtraDialog;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$style;->Alix_Sku_PopupDialog:I

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/sku/widget/ExtraDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    .line 95
    iget-object v3, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mDialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    iget-object v4, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    const/4 v5, -0x1

    invoke-direct {p0}, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->getEightyPercentScreenHeight()I

    move-result v6

    const/16 v7, 0x50

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/alibaba/ailabs/genie/shopping/R$style;->Alix_Sku_PopupDialog_Animation:I

    invoke-virtual/range {v3 .. v10}, Lcom/taobao/android/sku/widget/ExtraDialog;->showDialog(Landroid/view/View;IIIIII)V

    return-void
.end method

.method public setFontSize()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0, v0}, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;->changeFontSize(Landroid/view/View;)V

    :cond_0
    return-void
.end method
