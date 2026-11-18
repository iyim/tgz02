.class Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$1;
.super Ljava/lang/Object;
.source "RightReceiveCCRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;->receiveCCRight(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;

.field final synthetic val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$1;->val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiName:mtop.alibaba.ai.RightReceiveService.receiveCC,onError, errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-RightReceiverRequest"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$1;->val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TME-RightReceiverRequest"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "traceId is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$1;->val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;->onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;)V

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response.getData() getModel().isReceiveSuccess() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->isReceiveSuccess()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
