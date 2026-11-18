.class public Lcom/alibaba/ailabs/genie/commonpay/PayEvent;
.super Ljava/lang/Object;
.source "PayEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PayEvent"


# instance fields
.field private isSuccess:Z

.field private payType:I

.field private retCode:I

.field private retMsg:Ljava/lang/String;

.field retdata:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPayType()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->payType:I

    return v0
.end method

.method public getRetCode()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->retCode:I

    return v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRetdata()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->retdata:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->isSuccess:Z

    return v0
.end method

.method public setPayType(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->payType:I

    return-void
.end method

.method public setRetCode(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->retCode:I

    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->retMsg:Ljava/lang/String;

    return-void
.end method

.method public setRetdata(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->retdata:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/commonpay/PayEvent;->isSuccess:Z

    return-void
.end method
