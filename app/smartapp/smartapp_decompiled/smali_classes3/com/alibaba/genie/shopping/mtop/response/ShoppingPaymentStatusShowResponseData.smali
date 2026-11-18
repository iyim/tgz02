.class public Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "ShoppingPaymentStatusShowResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;


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
.method public getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;->model:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;->model:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    return-void
.end method
