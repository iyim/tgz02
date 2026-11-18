.class public Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "CorpusTipGetResponse.java"


# instance fields
.field private data:Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponse;->data:Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponse;->getData()Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponse;->data:Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;

    return-void
.end method
