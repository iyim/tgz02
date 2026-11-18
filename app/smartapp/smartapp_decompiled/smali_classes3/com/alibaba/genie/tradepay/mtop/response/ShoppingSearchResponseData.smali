.class public Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "ShoppingSearchResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchItemList;


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
.method public getModel()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchItemList;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponseData;->model:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchItemList;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchItemList;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponseData;->model:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchItemList;

    return-void
.end method
