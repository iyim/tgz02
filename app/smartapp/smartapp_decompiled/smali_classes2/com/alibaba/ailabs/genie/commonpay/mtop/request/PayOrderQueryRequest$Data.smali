.class public Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;
.super Ljava/lang/Object;
.source "PayOrderQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private authInfo:Ljava/lang/String;

.field private biz:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private sellerId:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


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

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBiz()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->biz:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getSellerId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->sellerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setBiz(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->biz:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->content:Ljava/lang/String;

    return-void
.end method

.method public setSellerId(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->sellerId:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->sign:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderQueryRequest$Data;->uuid:Ljava/lang/String;

    return-void
.end method
