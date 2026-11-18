.class public Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "ShoppingItemDetailResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;


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
.method public getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;->model:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;->model:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;

    return-void
.end method
