.class public Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponseData;
.super Lcom/alibaba/ailabs/genie/pay/model/BaseDataBean;
.source "ShoppingPaymentStatusShowResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/model/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatus;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponseData;->model:Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatus;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatus;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponseData;->model:Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatus;

    return-void
.end method
