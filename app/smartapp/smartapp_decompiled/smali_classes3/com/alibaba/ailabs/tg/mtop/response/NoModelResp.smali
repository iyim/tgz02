.class public Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "NoModelResp.java"


# instance fields
.field private data:Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;


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
.method public getData()Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;->data:Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;->getData()Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;->data:Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    return-void
.end method
