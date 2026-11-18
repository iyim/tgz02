.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintGetentirelistResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "SoundprintGetentirelistResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintGetentirelistResponseData;


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
.method public getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintGetentirelistResponseData;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintGetentirelistResponse;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintGetentirelistResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintGetentirelistResponse;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintGetentirelistResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintGetentirelistResponseData;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintGetentirelistResponse;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintGetentirelistResponseData;

    return-void
.end method
