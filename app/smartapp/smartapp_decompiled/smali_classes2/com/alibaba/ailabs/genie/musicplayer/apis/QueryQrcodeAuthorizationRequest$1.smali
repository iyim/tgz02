.class Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$1;
.super Ljava/lang/Object;
.source "QueryQrcodeAuthorizationRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;->queryQrcodeAuth(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError ====  errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QueryQrcodeAuth"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryQrcodeAuth"

    .line 58
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setCurrentTraceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.queryQrcodeAuthorization,onSuccess, traceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryQrcodeAuth"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgCode====="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->getMsgCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgInfo====="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->getMsgInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->getMsgCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5060002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;->invalid()V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->getMsgCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;->success(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->getMsgCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5060003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;->next()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$1;->val$callback:Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
