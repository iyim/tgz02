.class Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$1;
.super Ljava/lang/Object;
.source "AuthDetailRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest;->authDetail(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest;

.field final synthetic val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$1;->val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$1;->val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.authDetail,onError, errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AuthDetailRequest"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authDetail onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthDetailRequest"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$1;->val$result:Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;->onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;)V

    return-void
.end method
