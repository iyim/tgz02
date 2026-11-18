.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SwitchInsertorupdateResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "SwitchInsertorupdateResponseData.java"


# instance fields
.field private model:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SwitchInsertorupdateResponseData;->model:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SwitchInsertorupdateResponseData;->model:Ljava/lang/String;

    return-void
.end method
