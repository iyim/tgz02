.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseResp;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "SoundPrintPayCloseResp.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;


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
.method public getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseResp;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseResp;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;

    return-void
.end method
