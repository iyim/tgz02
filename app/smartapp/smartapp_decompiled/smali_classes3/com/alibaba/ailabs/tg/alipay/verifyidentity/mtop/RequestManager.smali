.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAlipayVerifyId(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 36
    new-instance v1, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/AlipayVerifyidRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/AlipayVerifyidRequest;-><init>()V

    .line 37
    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/AlipayVerifyidRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/response/AlipayVerifyidResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method
