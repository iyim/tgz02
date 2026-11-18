.class public Lcom/taobao/android/tbsku/presenter/TBXSkuPopupPresenter;
.super Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;
.source "TBXSkuPopupPresenter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/presenter/TBXSkuPopupPresenter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/taobao/android/tbsku/TBXSkuActivity;

    .line 30
    invoke-virtual {v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public present()V
    .locals 2

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/presenter/TBXSkuPopupPresenter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/taobao/android/tbsku/TBXSkuActivity;

    .line 20
    iget-object v1, p0, Lcom/taobao/android/tbsku/presenter/TBXSkuPopupPresenter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/taobao/android/tbsku/TBXSkuActivity;->addSkuInRootContainer(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
