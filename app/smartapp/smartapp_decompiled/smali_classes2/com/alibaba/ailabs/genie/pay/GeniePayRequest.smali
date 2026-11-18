.class public Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;
.super Ljava/lang/Object;
.source "GeniePayRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;
    }
.end annotation


# instance fields
.field private mAmount:Ljava/lang/String;

.field private mAuthInfoStr:Ljava/lang/String;

.field private mExtend:Ljava/lang/String;

.field private mItemId:Ljava/lang/String;

.field private mListener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

.field private mOrderId:Ljava/lang/String;

.field private mParamModel:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

.field private mPayPrice:Ljava/lang/String;

.field private mTbUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->access$000(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mAuthInfoStr:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->access$100(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mPayPrice:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->access$200(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mItemId:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->access$300(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mAmount:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->access$400(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mListener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    .line 35
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->access$500(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mParamModel:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    .line 36
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->access$600(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mExtend:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfoStr()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mAuthInfoStr:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mExtend:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/alibaba/ailabs/genie/pay/GeniePayListener;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mListener:Lcom/alibaba/ailabs/genie/pay/GeniePayListener;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mParamModel:Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    return-object v0
.end method

.method public getPayPrice()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mPayPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getTbUserId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mTbUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setExtend(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mExtend:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mOrderId:Ljava/lang/String;

    return-void
.end method

.method public setTbUserId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->mTbUserId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mItemId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extend:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getExtend()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "auth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
