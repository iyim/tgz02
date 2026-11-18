.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyid;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "AlipayVerifyid.java"


# instance fields
.field private model:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyid;->model:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyid;->model:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/AlipayVerifyidModel;

    return-void
.end method
