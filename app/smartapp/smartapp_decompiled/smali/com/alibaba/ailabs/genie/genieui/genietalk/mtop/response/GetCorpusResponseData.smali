.class public Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;
.super Ljava/lang/Object;
.source "GetCorpusResponseData.java"


# instance fields
.field private corpusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;"
        }
    .end annotation
.end field

.field private payload:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCorpusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;->corpusList:Ljava/util/List;

    return-object v0
.end method

.method public getPayload()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;->payload:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public setCorpusList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;->corpusList:Ljava/util/List;

    return-void
.end method

.method public setPayload(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GetCorpusResponseData;->payload:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method
