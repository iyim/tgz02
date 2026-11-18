.class public Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;
.super Ljava/lang/Object;
.source "PayOrderQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private outOrderId:Ljava/lang/String;

.field private tbNickName:Ljava/lang/String;

.field private tbUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getOutOrderId()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->outOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getTbNickName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->tbNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getTbUserId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->tbUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setOutOrderId(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->outOrderId:Ljava/lang/String;

    return-void
.end method

.method public setTbNickName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->tbNickName:Ljava/lang/String;

    return-void
.end method

.method public setTbUserId(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderQueryRequest$Data;->tbUserId:Ljava/lang/String;

    return-void
.end method
