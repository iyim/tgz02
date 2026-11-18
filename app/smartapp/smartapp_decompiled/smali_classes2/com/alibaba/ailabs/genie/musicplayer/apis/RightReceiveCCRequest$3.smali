.class Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$3;
.super Ljava/lang/Object;
.source "RightReceiveCCRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;->canReceiveRightById(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;

.field final synthetic val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$3;->val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiName:mtop.alibaba.ai.UserInfoClientService.canReceiveRightById,onError, errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TME-RightReceiverRequest"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$3;->val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TME-RightReceiverRequest"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "traceId is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$3;->val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;->onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response.getData() getResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
