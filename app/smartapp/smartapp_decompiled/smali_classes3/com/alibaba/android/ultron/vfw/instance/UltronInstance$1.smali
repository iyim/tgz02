.class Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;
.super Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;
.source "UltronInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderRequestData(Lcom/taobao/android/ultron/datamodel/IDMRequester;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IRequestCallback;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

.field final synthetic val$callback:Lcom/taobao/android/ultron/datamodel/IRequestCallback;

.field final synthetic val$dataProcessor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;Lcom/taobao/android/ultron/datamodel/IRequestCallback;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;->val$callback:Lcom/taobao/android/ultron/datamodel/IRequestCallback;

    iput-object p3, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;->val$dataProcessor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;

    invoke-direct {p0}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;ZLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;->val$callback:Lcom/taobao/android/ultron/datamodel/IRequestCallback;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 343
    invoke-interface/range {v0 .. v5}, Lcom/taobao/android/ultron/datamodel/IRequestCallback;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;ZLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IDMContext;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Object;",
            "Lcom/taobao/android/ultron/datamodel/IDMContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->access$000(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseResponse(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 351
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;->val$dataProcessor:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->processDataSource(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$IProcessor;)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;->this$0:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->rebuild(I)V

    .line 353
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$1;->val$callback:Lcom/taobao/android/ultron/datamodel/IRequestCallback;

    if-eqz v2, :cond_0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 354
    invoke-interface/range {v2 .. v7}, Lcom/taobao/android/ultron/datamodel/IRequestCallback;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IDMContext;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
