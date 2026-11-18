.class public Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;
.super Ljava/lang/Object;
.source "PayOrderCreateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private amount:Ljava/lang/Long;

.field private appId:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private outItemName:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Long;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->amount:Ljava/lang/Long;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getOutItemName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->outItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutOrderId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->outOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getTbNickName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->tbNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getTbUserId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->tbUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Long;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->amount:Ljava/lang/Long;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setOutItemName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->outItemName:Ljava/lang/String;

    return-void
.end method

.method public setOutOrderId(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->outOrderId:Ljava/lang/String;

    return-void
.end method

.method public setTbNickName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->tbNickName:Ljava/lang/String;

    return-void
.end method

.method public setTbUserId(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/request/PayOrderCreateRequest$Data;->tbUserId:Ljava/lang/String;

    return-void
.end method
