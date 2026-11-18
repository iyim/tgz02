.class public Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "ShoppingGetVoicePrintPayCodeResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;


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
.method public getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;->model:Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;->model:Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;

    return-void
.end method
