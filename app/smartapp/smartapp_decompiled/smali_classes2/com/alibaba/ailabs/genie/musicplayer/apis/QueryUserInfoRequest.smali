.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;
.super Ljava/lang/Object;
.source "QueryUserInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.videoSource.queryUserInfo"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "UserInfoRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public queryUserInfoRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/UserInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest$RequestData;-><init>()V

    .line 40
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest$RequestData;->authInfo:Ljava/lang/String;

    .line 41
    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest$RequestData;->source:Ljava/lang/String;

    .line 42
    iput-object p2, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest$RequestData;->type:Ljava/lang/String;

    .line 43
    iput-object p3, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest$RequestData;->appId:Ljava/lang/String;

    .line 45
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string p2, "mtop.alibaba.aicloud.t.videoSource.queryUserInfo"

    .line 46
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string p2, "1.0"

    .line 47
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiName:mtop.alibaba.aicloud.t.videoSource.queryUserInfo appId:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UserInfoRequest"

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestData.authInfo:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest$RequestData;->authInfo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance p2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest$1;

    invoke-direct {p1, p0, p4}, Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryUserInfoRequest;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    .line 53
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 77
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
