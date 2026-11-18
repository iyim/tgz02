.class Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest$1;
.super Ljava/lang/Object;
.source "AutoSuggestRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest;->request(Landroid/content/Context;Ljava/util/function/Function;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest;

.field final synthetic val$callBack:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest;Ljava/util/function/Function;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest$1;->val$callBack:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiName:mtop.alibaba.ai.ScreenSearchService.autoSuggest, onError-msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Request-AutoSuggest"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest$1;->val$callBack:Ljava/util/function/Function;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;",
            ">;)V"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiName:mtop.alibaba.ai.ScreenSearchService.autoSuggest, onSuccess, traceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request-AutoSuggest"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest;->access$000(Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;->setKeyWord(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest$1;->val$callBack:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
