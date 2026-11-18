.class Lcom/taobao/android/sku/AliXSkuCore$1;
.super Ljava/lang/Object;
.source "AliXSkuCore.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/AliXSkuCore;->initRenderListener()V
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

    .line 100
    iput-object p1, p0, Lcom/taobao/android/sku/AliXSkuCore$1;->this$0:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderFailed(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "unknown UltronError is null"

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore$1;->this$0:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/sku/AliXSkuCore;->access$000(Lcom/taobao/android/sku/AliXSkuCore;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UME_SKU_001"

    invoke-static {v0, v1, p1}, Lcom/taobao/android/sku/utils/SkuLogUtils;->alarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore$1;->this$0:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/sku/AliXSkuCore;->access$100(Lcom/taobao/android/sku/AliXSkuCore;)Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/taobao/android/sku/AliXSkuCore$1;->this$0:Lcom/taobao/android/sku/AliXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/sku/AliXSkuCore;->access$100(Lcom/taobao/android/sku/AliXSkuCore;)Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;->onError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onRenderFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
