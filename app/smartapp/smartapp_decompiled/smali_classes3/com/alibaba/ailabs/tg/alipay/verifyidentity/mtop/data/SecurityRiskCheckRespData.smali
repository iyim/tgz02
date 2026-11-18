.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskCheckRespData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "SecurityRiskCheckRespData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/model/SignCheck;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/model/SignCheck;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskCheckRespData;->model:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/model/SignCheck;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/model/SignCheck;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/SecurityRiskCheckRespData;->model:Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/model/SignCheck;

    return-void
.end method
