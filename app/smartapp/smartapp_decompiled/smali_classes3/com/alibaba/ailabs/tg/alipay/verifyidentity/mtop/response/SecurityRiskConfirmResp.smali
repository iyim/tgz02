.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/SecurityRiskConfirmResp;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "SecurityRiskConfirmResp.java"


# instance fields
.field private data:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskConfirmRespData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskConfirmRespData;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/SecurityRiskConfirmResp;->data:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskConfirmRespData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/SecurityRiskConfirmResp;->getData()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskConfirmRespData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskConfirmRespData;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/SecurityRiskConfirmResp;->data:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskConfirmRespData;

    return-void
.end method
