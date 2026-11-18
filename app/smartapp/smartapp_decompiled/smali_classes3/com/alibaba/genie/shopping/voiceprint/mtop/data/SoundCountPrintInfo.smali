.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundCountPrintInfo;
.super Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;
.source "SoundCountPrintInfo.java"


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundCountPrintInfo;->count:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundCountPrintInfo;->count:I

    return-void
.end method
