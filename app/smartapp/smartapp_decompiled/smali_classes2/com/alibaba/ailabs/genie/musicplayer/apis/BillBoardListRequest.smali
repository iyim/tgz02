.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest;
.super Ljava/lang/Object;
.source "BillBoardListRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.ybClientSearch.getBillBoardList"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "BillBoardListRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBillBoardList(Ljava/lang/String;IILcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard;",
            ">;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest$RequestData;-><init>()V

    .line 38
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest$RequestData;->authInfo:Ljava/lang/String;

    .line 39
    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest$RequestData;->source:Ljava/lang/String;

    .line 40
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest$RequestData;->pageSize:Ljava/lang/String;

    .line 41
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest$RequestData;->pageNum:Ljava/lang/String;

    .line 43
    new-instance p2, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string p3, "mtop.alibaba.aicloud.t.ybClientSearch.getBillBoardList"

    .line 44
    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string p3, "1.0"

    .line 45
    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.getBillBoardList, source:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BillBoardListRequest"

    invoke-static {p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest$1;

    invoke-direct {p2, p0, p4}, Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/BillBoardListRequest;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    .line 50
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
