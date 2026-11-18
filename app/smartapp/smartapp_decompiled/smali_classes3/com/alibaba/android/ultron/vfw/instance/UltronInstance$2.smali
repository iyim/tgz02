.class Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;
.super Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;
.source "UltronInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderWithContext(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

.field final synthetic val$listener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;->val$listener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoadFailed(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;->val$listener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;->onDataLoadFailed(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getBizName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorEngine(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    return-void
.end method

.method public onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;->val$listener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;->onDataLoadFinishBefore(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-static {v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->access$100(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->getTempRenderInfo()Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->renderResult:Lcom/alibaba/fastjson/JSONObject;

    .line 509
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->getLoaderContext()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->getRootKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->getLoaderContext()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->getProcessor()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;

    move-result-object v3

    .line 508
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderData(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    .line 511
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getRenderListener()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->getLoaderContext()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;->onRenderFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;)V

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;->val$listener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;->onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V

    :cond_2
    return-void
.end method

.method public onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$2;->val$listener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;->onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;

    move-result-object p1

    return-object p1

    .line 534
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;->onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;

    move-result-object p1

    return-object p1
.end method
