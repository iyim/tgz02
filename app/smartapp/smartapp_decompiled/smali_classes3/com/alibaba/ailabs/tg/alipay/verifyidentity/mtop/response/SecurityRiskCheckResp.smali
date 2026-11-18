.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/SecurityRiskCheckResp;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "SecurityRiskCheckResp.java"


# instance fields
.field private data:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskCheckRespData;


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
.method public getData()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskCheckRespData;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/SecurityRiskCheckResp;->data:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskCheckRespData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/SecurityRiskCheckResp;->getData()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskCheckRespData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskCheckRespData;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/SecurityRiskCheckResp;->data:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskCheckRespData;

    return-void
.end method
