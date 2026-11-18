.class Lcom/taobao/android/sku/AliXSkuCore$4;
.super Ljava/lang/Object;
.source "AliXSkuCore.java"

# interfaces
.implements Lcom/taobao/android/sku/AliXSkuCore$IAliXSkuUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/AliXSkuCore;->showSku(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/sku/AliXSkuCore;


# direct methods
.method constructor <init>(Lcom/taobao/android/sku/AliXSkuCore;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore$4;->this$0:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdated()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore$4;->this$0:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/sku/AliXSkuCore;->access$200(Lcom/taobao/android/sku/AliXSkuCore;)Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->present()V

    .line 446
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore$4;->this$0:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/sku/AliXSkuCore;->access$300(Lcom/taobao/android/sku/AliXSkuCore;)V

    return-void
.end method
