.class Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine$1;
.super Ljava/lang/Object;
.source "AliXSkuPresenterEngine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;-><init>(Landroid/content/Context;Lcom/taobao/android/sku/AliXSkuCore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;


# direct methods
.method constructor <init>(Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine$1;->this$0:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 22
    iget-object p1, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine$1;->this$0:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    invoke-static {p1}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->access$000(Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;)Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->getDataEngine()Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getItemId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine$1;->this$0:Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    invoke-static {v0}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->access$000(Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;)Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/sku/AliXSkuCore;->getDataEngine()Lcom/taobao/android/sku/data/AliXSkuDataEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/sku/data/AliXSkuDataEngine;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/android/sku/utils/SkuLogUtils;->recordCloseNewSKU(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
