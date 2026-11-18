.class final Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$1;
.super Ljava/lang/Object;
.source "RegisterReqeust.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->agreeRTCProtocol()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/rtc/repository/net/rsp/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$authInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$1;->val$authInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agreeRTCProtocol.onError: errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",meg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/rtc/repository/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agreeRTCProtocol.onSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/rtc/repository/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/rtc/repository/net/rsp/StringResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$1;->val$authInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->setProtocolAgreed(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)V

    return-void
.end method
