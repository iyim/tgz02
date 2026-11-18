.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintEnhanceAddResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "SoundprintEnhanceAddResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceGetResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceGetResult;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintEnhanceAddResponse;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceGetResult;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintEnhanceAddResponse;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceGetResult;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceGetResult;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintEnhanceAddResponse;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceGetResult;

    return-void
.end method
