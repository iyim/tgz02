.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest;
.super Ljava/lang/Object;
.source "AuthDetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.ybClientSearch.authDetail"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "AuthDetailRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public authDetail(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;)V
    .locals 2

    .line 37
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$RequestData;-><init>()V

    .line 38
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$RequestData;->authInfo:Ljava/lang/String;

    .line 40
    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$RequestData;->source:Ljava/lang/String;

    .line 41
    iput-object p2, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$RequestData;->appId:Ljava/lang/String;

    .line 43
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string p2, "mtop.alibaba.aicloud.t.ybClientSearch.authDetail"

    .line 44
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string p2, "1.0"

    .line 45
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 47
    new-instance p2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$1;

    invoke-direct {p1, p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/AuthDetailRequest$ProtocolResult;)V

    .line 48
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
