.class final Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$2;
.super Ljava/lang/Object;
.source "RegisterReqeust.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->updateRTCDeviceInfo(Z)V
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

.field final synthetic val$killSelf:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;Z)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$2;->val$authInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$2;->val$killSelf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 125
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDeviceInfo.onErr:%s, msg: %s = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 115
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDeviceInfo.onSucess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/rtc/repository/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/rtc/repository/net/rsp/StringResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$2;->val$authInfo:Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->setAuthInfoUpdated(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)V

    .line 117
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust$2;->val$killSelf:Z

    if-eqz p1, :cond_0

    .line 118
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KillSelf onSuccess smartapp"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method
