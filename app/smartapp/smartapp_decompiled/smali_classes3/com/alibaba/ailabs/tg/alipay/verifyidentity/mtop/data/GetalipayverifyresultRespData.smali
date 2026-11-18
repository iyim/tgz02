.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/GetalipayverifyresultRespData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "GetalipayverifyresultRespData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/GetalipayverifyresultRespData;->model:Z

    return v0
.end method

.method public setModel(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/data/GetalipayverifyresultRespData;->model:Z

    return-void
.end method
