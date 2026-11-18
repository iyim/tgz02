.class public Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "ShoppingOrderConfirmResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResponseData;->model:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResponseData;->model:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoppingOrderConfirmResponseData{model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResponseData;->model:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
