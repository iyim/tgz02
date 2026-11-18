.class public Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ShoppingCampaignShowResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponse;->data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponse;->data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;

    return-void
.end method
