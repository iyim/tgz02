.class public Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;
.super Ljava/lang/Object;
.source "PayOrderQueryResponseData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAppId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "appId"
    .end annotation
.end field

.field private mFailMsg:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "failMsg"
    .end annotation
.end field

.field private mOrderId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "orderId"
    .end annotation
.end field

.field private mOrderStatus:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "orderStatus"
    .end annotation
.end field

.field private mOutItemId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "outItemId"
    .end annotation
.end field

.field private mOutItemName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "outItemName"
    .end annotation
.end field

.field private mOutOrderId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "outOrderId"
    .end annotation
.end field

.field private mSellerId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sellerId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getFailMsg()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mFailMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderStatus()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mOrderStatus:I

    return v0
.end method

.method public getOutItemId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mOutItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getOutItemName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mOutItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutOrderId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mOutOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSellerId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mSellerId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setFailMsg(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mFailMsg:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mOrderId:Ljava/lang/String;

    return-void
.end method

.method public setOrderStatus(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mOrderStatus:I

    return-void
.end method

.method public setOutItemId(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mOutItemId:Ljava/lang/String;

    return-void
.end method

.method public setOutItemName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mOutItemName:Ljava/lang/String;

    return-void
.end method

.method public setOutOrderId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mOutOrderId:Ljava/lang/String;

    return-void
.end method

.method public setSellerId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/PayOrderQueryResponseData;->mSellerId:Ljava/lang/String;

    return-void
.end method
