.class public Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignList;
.super Ljava/lang/Object;
.source "ShoppingCampaignList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public campaignTabDTOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignTabItem;",
            ">;"
        }
    .end annotation
.end field

.field public intentNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public skillId:I

.field public templateId:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
