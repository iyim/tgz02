.class public Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ShoppingGetVoicePrintPayCodeResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;

    return-void
.end method
