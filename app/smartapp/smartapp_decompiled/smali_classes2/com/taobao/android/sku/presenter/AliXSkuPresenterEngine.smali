.class public Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;
.super Ljava/lang/Object;
.source "AliXSkuPresenterEngine.java"


# instance fields
.field private mPresenter:Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;

.field private mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/android/sku/AliXSkuCore;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    .line 17
    new-instance p2, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;

    invoke-direct {p2, p1}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine$1;

    invoke-direct {p1, p0}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine$1;-><init>(Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;)V

    invoke-virtual {p2, p1}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;

    .line 25
    invoke-virtual {p0, p2}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->registerSkuPresenter(Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;)Lcom/taobao/android/sku/AliXSkuCore;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->mSkuCore:Lcom/taobao/android/sku/AliXSkuCore;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->mPresenter:Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissLoading()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->mPresenter:Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;

    instance-of v1, v0, Lcom/taobao/android/sku/presenter/AbsLoadingAliXSkuPresenter;

    if-eqz v1, :cond_0

    .line 56
    nop

    nop

    invoke-virtual {v0}, Lcom/taobao/android/sku/presenter/AbsLoadingAliXSkuPresenter;->dismissLoading()V

    :cond_0
    return-void
.end method

.method public getSkuPresenter()Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->mPresenter:Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;

    return-object v0
.end method

.method public present()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->mPresenter:Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;->present()V

    :cond_0
    return-void
.end method

.method public presentLoading()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->mPresenter:Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;

    instance-of v1, v0, Lcom/taobao/android/sku/presenter/AbsLoadingAliXSkuPresenter;

    if-eqz v1, :cond_0

    .line 50
    nop

    nop

    invoke-virtual {v0}, Lcom/taobao/android/sku/presenter/AbsLoadingAliXSkuPresenter;->presentLoading()V

    :cond_0
    return-void
.end method

.method public registerSkuPresenter(Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->mPresenter:Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;

    return-void
.end method
