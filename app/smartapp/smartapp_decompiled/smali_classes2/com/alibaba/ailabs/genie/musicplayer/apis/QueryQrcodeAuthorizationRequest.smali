.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;
.super Ljava/lang/Object;
.source "QueryQrcodeAuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestDataWechat;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.ybClientSearch.queryQrcodeAuthorization"

.field private static final API_NAME_WECHAT:Ljava/lang/String; = "mtop.alibaba.ai.apishare.tme.TmeService.queryWeChatQrcodeResult"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final CODE_SUCCESS:Ljava/lang/String; = "200"

.field private static final ERROR_CODE_INVALID:Ljava/lang/String; = "5060002"

.field private static final ERROR_CODE_WAIT_GRANT:Ljava/lang/String; = "5060003"

.field private static final TAG:Ljava/lang/String; = "QueryQrcodeAuth"


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
.method public queryQrcodeAuth(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;)V
    .locals 2

    .line 43
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestData;-><init>()V

    .line 44
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestData;->authInfo:Ljava/lang/String;

    .line 45
    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestData;->source:Ljava/lang/String;

    .line 46
    iput-object p2, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestData;->ticket:Ljava/lang/String;

    .line 48
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string p2, "mtop.alibaba.aicloud.t.ybClientSearch.queryQrcodeAuthorization"

    .line 49
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string p2, "1.0"

    .line 50
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 52
    new-instance p2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$1;

    invoke-direct {p1, p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;)V

    .line 53
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 78
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public queryQrcodeAuthForWechat(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;)V
    .locals 2

    .line 90
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestDataWechat;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestDataWechat;-><init>()V

    .line 91
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestDataWechat;->authInfo:Ljava/lang/String;

    .line 92
    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestDataWechat;->sp:Ljava/lang/String;

    .line 93
    iput-object p2, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$RequestDataWechat;->ticket:Ljava/lang/String;

    .line 95
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string p2, "mtop.alibaba.ai.apishare.tme.TmeService.queryWeChatQrcodeResult"

    .line 96
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string p2, "1.0"

    .line 97
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 99
    new-instance p2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$2;

    invoke-direct {p1, p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;)V

    .line 100
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 125
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
