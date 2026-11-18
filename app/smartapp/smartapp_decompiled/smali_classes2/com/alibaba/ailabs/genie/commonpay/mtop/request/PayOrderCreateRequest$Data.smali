.class public Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;
.super Ljava/lang/Object;
.source "PayOrderCreateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private authInfo:Ljava/lang/String;

.field private biz:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private sellerId:Ljava/lang/Long;

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

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBiz()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->biz:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getSellerId()Ljava/lang/Long;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->sellerId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setBiz(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->biz:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->content:Ljava/lang/String;

    return-void
.end method

.method public setSellerId(Ljava/lang/Long;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->sellerId:Ljava/lang/Long;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->sign:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/request/PayOrderCreateRequest$Data;->uuid:Ljava/lang/String;

    return-void
.end method
