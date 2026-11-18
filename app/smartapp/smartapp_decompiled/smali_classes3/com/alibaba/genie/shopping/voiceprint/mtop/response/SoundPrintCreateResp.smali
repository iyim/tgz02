.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "SoundPrintCreateResp.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;


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
.method public getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;

    return-void
.end method
