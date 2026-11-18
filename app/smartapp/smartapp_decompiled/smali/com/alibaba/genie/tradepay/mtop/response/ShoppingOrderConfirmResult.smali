.class public Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;
.super Ljava/lang/Object;
.source "ShoppingOrderConfirmResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public message:Ljava/lang/String;

.field public openVoiceBuy:Z

.field public orderCode:Ljava/lang/String;

.field public payOrderCode:Ljava/lang/String;

.field public payType:I

.field public qrPayCode:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public tbNickname:Ljava/lang/String;

.field public voiceText:Ljava/lang/String;

.field public vpPayCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPayOrderCode()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->payOrderCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->payType:I

    return v0
.end method

.method public getQrPayCode()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->qrPayCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTbNickname()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceText()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    return-object v0
.end method

.method public getVpPayCode()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->vpPayCode:Ljava/lang/String;

    return-object v0
.end method

.method public isOpenVoiceBuy()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->openVoiceBuy:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->message:Ljava/lang/String;

    return-void
.end method

.method public setOpenVoiceBuy(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->openVoiceBuy:Z

    return-void
.end method

.method public setOrderCode(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    return-void
.end method

.method public setPayOrderCode(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->payOrderCode:Ljava/lang/String;

    return-void
.end method

.method public setPayType(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->payType:I

    return-void
.end method

.method public setQrPayCode(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->qrPayCode:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->status:Ljava/lang/String;

    return-void
.end method

.method public setTbNickname(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    return-void
.end method

.method public setVoiceText(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    return-void
.end method

.method public setVpPayCode(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->vpPayCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoppingOrderConfirmResult{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", orderCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", payOrderCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->payOrderCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", payType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->payType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vpPayCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->vpPayCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", qrPayCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->qrPayCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", openVoiceBuy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->openVoiceBuy:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", voiceText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tbNickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
