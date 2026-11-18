.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "SoundPrintPayCloseData.java"


# instance fields
.field private model:Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;


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
.method public getModel()Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;->model:Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;->model:Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;

    return-void
.end method
