.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "SoundPrintCreate.java"


# instance fields
.field private model:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;


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
.method public getModel()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;->model:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;->model:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    return-void
.end method
