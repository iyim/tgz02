.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/response/AlipayVerifyidResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "AlipayVerifyidResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyid;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/AlipayVerifyidResponse;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyid;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/AlipayVerifyidResponse;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyid;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyid;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/AlipayVerifyidResponse;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyid;

    return-void
.end method
