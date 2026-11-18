.class public Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignListResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "ShoppingCampaignListResponseData.java"


# instance fields
.field private model:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignList;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignListResponseData;->model:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignList;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignList;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignListResponseData;->model:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignList;

    return-void
.end method
