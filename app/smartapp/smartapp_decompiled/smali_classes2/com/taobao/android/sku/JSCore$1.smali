.class Lcom/taobao/android/sku/JSCore$1;
.super Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;
.source "JSCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/JSCore;->showSku(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/sku/JSCore;

.field final synthetic val$listener:Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;


# direct methods
.method constructor <init>(Lcom/taobao/android/sku/JSCore;Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/taobao/android/sku/JSCore$1;->this$0:Lcom/taobao/android/sku/JSCore;

    iput-object p2, p0, Lcom/taobao/android/sku/JSCore$1;->val$listener:Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;

    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/taobao/android/sku/JSCore$1;->val$listener:Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;->onUpdated()V

    :cond_0
    return-void
.end method
