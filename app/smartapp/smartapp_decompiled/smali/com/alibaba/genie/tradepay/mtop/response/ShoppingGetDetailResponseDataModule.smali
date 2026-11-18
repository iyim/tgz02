.class public Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;
.super Ljava/lang/Object;
.source "ShoppingGetDetailResponseDataModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule$ConsumerProtectionInfo;,
        Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule$VideoInfo;,
        Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule$DeliveryInfo;,
        Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;
    }
.end annotation


# instance fields
.field public consumerProtectionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule$ConsumerProtectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public curPrice:Ljava/lang/String;

.field public deliveryInfo:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule$DeliveryInfo;

.field public hasSku:Z

.field public monthSale:J

.field public origPrice:Ljava/lang/String;

.field public platformType:Ljava/lang/String;

.field public showInfo:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

.field public videoInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule$VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public voiceText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoppingGetDetailResponseDataModule{monthSale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;->monthSale:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", origPrice=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;->origPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", curPrice=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;->curPrice:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", platformType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;->platformType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hasSku="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;->hasSku:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", voiceText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;->voiceText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", showInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;->deliveryInfo:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule$DeliveryInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;->videoInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consumerProtectionInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;->consumerProtectionInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
