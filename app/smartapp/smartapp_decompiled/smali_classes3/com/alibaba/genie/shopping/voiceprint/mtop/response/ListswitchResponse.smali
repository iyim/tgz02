.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/response/ListswitchResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ListswitchResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListswitchResponseData;


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
.method public getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListswitchResponseData;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/ListswitchResponse;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListswitchResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/ListswitchResponse;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListswitchResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListswitchResponseData;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/ListswitchResponse;->data:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/ListswitchResponseData;

    return-void
.end method
