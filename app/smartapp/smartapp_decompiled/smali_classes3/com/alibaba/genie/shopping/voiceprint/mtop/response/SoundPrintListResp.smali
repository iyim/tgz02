.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "SoundPrintListResp.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;

    return-void
.end method
