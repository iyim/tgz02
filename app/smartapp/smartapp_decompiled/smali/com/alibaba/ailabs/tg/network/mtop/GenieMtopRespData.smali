.class public Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "GenieMtopRespData.java"


# instance fields
.field private model:Lcom/alibaba/fastjson/JSON;


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
.method public getModel()Lcom/alibaba/fastjson/JSON;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->model:Lcom/alibaba/fastjson/JSON;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/fastjson/JSON;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->model:Lcom/alibaba/fastjson/JSON;

    return-void
.end method
