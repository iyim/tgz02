.class Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;
.super Ljava/lang/Object;
.source "LoginInfoForQrcodeRequest.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;->lambda$getLoginInfoForQrcode$159(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;

.field final synthetic val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.getLoginInfoForQrcode,onError, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLoginInfoForQrcode"

    .line 56
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setCurrentTraceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.getLoginInfoForQrcode,onSuccess, traceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LoginInfoForQrcode"

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo;

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRCodeAuthInfo$AuthInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;

    const-string v1, "model is null"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;->val$emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;

    const-string v1, "resp is null"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/LoginInfoForQrcodeRequest;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
