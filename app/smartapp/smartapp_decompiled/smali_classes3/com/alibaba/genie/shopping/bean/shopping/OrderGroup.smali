.class public Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;
.super Ljava/lang/Object;
.source "OrderGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2e7d1d1fdc4e68eL


# instance fields
.field public deliveryInfo:Lcom/alibaba/genie/shopping/bean/shopping/DeliveryInfo;

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/shopping/OrderLine;",
            ">;"
        }
    .end annotation
.end field

.field public payInfo:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;

.field public shopInfo:Lcom/alibaba/genie/shopping/bean/shopping/ShopInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->lines:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->lines:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/bean/shopping/OrderLine;

    if-nez v0, :cond_1

    return-object v1

    .line 49
    :cond_1
    iget-object v0, v0, Lcom/alibaba/genie/shopping/bean/shopping/OrderLine;->item:Lcom/alibaba/genie/shopping/bean/GoodInfo;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrderGroup{shopInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->shopInfo:Lcom/alibaba/genie/shopping/bean/shopping/ShopInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->lines:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->deliveryInfo:Lcom/alibaba/genie/shopping/bean/shopping/DeliveryInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->payInfo:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
