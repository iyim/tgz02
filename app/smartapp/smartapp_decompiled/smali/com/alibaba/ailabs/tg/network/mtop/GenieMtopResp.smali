.class public Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "GenieMtopResp.java"


# instance fields
.field private data:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->data:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->data:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    return-void
.end method
