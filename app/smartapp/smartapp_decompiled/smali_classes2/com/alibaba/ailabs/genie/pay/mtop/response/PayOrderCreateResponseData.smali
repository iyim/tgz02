.class public Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;
.super Ljava/lang/Object;
.source "PayOrderCreateResponseData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAppId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "appId"
    .end annotation
.end field

.field private mOutOrderId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "outOrderId"
    .end annotation
.end field

.field private mPayUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "payUrl"
    .end annotation
.end field

.field private mTbNickName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tbNickName"
    .end annotation
.end field

.field private mTbUserId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tbUserId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getOutOrderId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;->mOutOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;->mPayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTbNickName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;->mTbNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getTbUserId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;->mTbUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setOutOrderId(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;->mOutOrderId:Ljava/lang/String;

    return-void
.end method

.method public setPayUrl(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;->mPayUrl:Ljava/lang/String;

    return-void
.end method

.method public setTbNickName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;->mTbNickName:Ljava/lang/String;

    return-void
.end method

.method public setTbUserId(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/PayOrderCreateResponseData;->mTbUserId:Ljava/lang/String;

    return-void
.end method
