.class public Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;
.super Ljava/lang/Object;
.source "MtopBaseItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field private buyAmount:I

.field private extendInfo:Ljava/lang/String;

.field private itemId:J

.field private name:Ljava/lang/String;

.field private originalPrice:Ljava/lang/Object;

.field private price:Ljava/lang/String;

.field private skuId:I

.field private virtual:Z


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
.method public getBuyAmount()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->buyAmount:I

    return v0
.end method

.method public getExtendInfo()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->extendInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->itemId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->originalPrice:Ljava/lang/Object;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getSkuId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->skuId:I

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->virtual:Z

    return v0
.end method

.method public setBuyAmount(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->buyAmount:I

    return-void
.end method

.method public setExtendInfo(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->extendInfo:Ljava/lang/String;

    return-void
.end method

.method public setItemId(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->itemId:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOriginalPrice(Ljava/lang/Object;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->originalPrice:Ljava/lang/Object;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->price:Ljava/lang/String;

    return-void
.end method

.method public setSkuId(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->skuId:I

    return-void
.end method

.method public setVirtual(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->virtual:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->itemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " skuId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->skuId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " price:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->price:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extendInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;->extendInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
