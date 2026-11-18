.class public Lcom/alibaba/ailabs/genie/client/data/GenieUiClickData;
.super Lcom/alibaba/ailabs/genie/client/data/BaseReqData;
.source "GenieUiClickData.java"


# instance fields
.field private clickType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClickType()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/alibaba/ailabs/genie/client/data/GenieUiClickData;->clickType:I

    return v0
.end method

.method public setClickType(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/alibaba/ailabs/genie/client/data/GenieUiClickData;->clickType:I

    return-void
.end method
