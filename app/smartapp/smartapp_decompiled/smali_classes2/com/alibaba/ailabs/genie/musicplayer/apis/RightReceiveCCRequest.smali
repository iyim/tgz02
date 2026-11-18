.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;
.super Ljava/lang/Object;
.source "RightReceiveCCRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanRightReceiveCClResult;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final CAN_RECEIVE_RIGHT_BY_ID:Ljava/lang/String; = "mtop.alibaba.ai.UserInfoClientService.canReceiveRightById"

.field private static final IS_CAN_RECEIVE_CC_API_NAME:Ljava/lang/String; = "mtop.alibaba.ai.RightReceiveService.isCanReceiveCC"

.field private static final RECEIVE_CC_API_NAME:Ljava/lang/String; = "mtop.alibaba.ai.RightReceiveService.receiveCC"

.field private static final TAG:Ljava/lang/String; = "TME-RightReceiverRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public canReceiveRightById(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;)V
    .locals 3

    .line 121
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;-><init>()V

    .line 122
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    .line 123
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;->authInfo:Ljava/lang/String;

    const-string v1, ""

    .line 124
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;->rightCode:Ljava/lang/String;

    .line 126
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.ai.UserInfoClientService.canReceiveRightById"

    .line 127
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 128
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 130
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;)V

    .line 131
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public isCanCCRightReceive(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanRightReceiveCClResult;)V
    .locals 3

    .line 81
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;-><init>()V

    .line 82
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;->authInfo:Ljava/lang/String;

    const-string v1, "618ExperienceMember"

    .line 84
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;->rightCode:Ljava/lang/String;

    .line 86
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.ai.RightReceiveService.isCanReceiveCC"

    .line 87
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 88
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 90
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanRightReceiveCClResult;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public receiveCCRight(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;)V
    .locals 3

    .line 38
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;-><init>()V

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;->authInfo:Ljava/lang/String;

    const-string v1, "618ExperienceMember"

    .line 41
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RequestData;->rightCode:Ljava/lang/String;

    .line 43
    new-instance v1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v2, "mtop.alibaba.ai.RightReceiveService.receiveCC"

    .line 44
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 45
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 47
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
