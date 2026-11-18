.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/GetalipayverifyresultResp;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "GetalipayverifyresultResp.java"


# instance fields
.field private data:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/GetalipayverifyresultRespData;


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
.method public getData()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/GetalipayverifyresultRespData;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/GetalipayverifyresultResp;->data:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/GetalipayverifyresultRespData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/GetalipayverifyresultResp;->getData()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/GetalipayverifyresultRespData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/GetalipayverifyresultRespData;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/GetalipayverifyresultResp;->data:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/GetalipayverifyresultRespData;

    return-void
.end method
