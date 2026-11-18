.class public Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "SoundPayCancelResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponseData;


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
.method public getData()Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponseData;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponse;->data:Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponse;->getData()Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponseData;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponse;->data:Lcom/alibaba/genie/tradepay/mtop/response/SoundPayCancelResponseData;

    return-void
.end method
