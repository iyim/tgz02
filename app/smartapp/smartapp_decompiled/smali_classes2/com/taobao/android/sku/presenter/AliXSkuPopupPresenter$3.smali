.class Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter$3;
.super Ljava/lang/Object;
.source "AliXSkuPopupPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->present()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;


# direct methods
.method constructor <init>(Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter$3;->this$0:Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter$3;->this$0:Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;

    iget-object v0, v0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter$3;->this$0:Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;

    iget-object v0, v0, Lcom/taobao/android/sku/presenter/AliXSkuPopupPresenter;->mListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
