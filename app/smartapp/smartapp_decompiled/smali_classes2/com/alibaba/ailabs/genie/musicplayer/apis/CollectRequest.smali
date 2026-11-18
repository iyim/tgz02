.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;
.super Ljava/lang/Object;
.source "CollectRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.music.collection.modify"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "CollectRequest"


# instance fields
.field private mCallback:Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;)Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->mCallback:Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 30
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.music.collection.modify"

    .line 31
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 32
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;-><init>()V

    .line 34
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->authInfo:Ljava/lang/String;

    const-string v2, "program"

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "story"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "content"

    .line 38
    iput-object p1, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->itemType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "album"

    .line 36
    iput-object p1, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->itemType:Ljava/lang/String;

    .line 40
    :goto_1
    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->rawId:Ljava/lang/String;

    const-string p1, "ADD"

    .line 41
    iput-object p1, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->operation:Ljava/lang/String;

    .line 42
    iput-object p3, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->source:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "add-param:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CollectRequest"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;)V

    .line 47
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 67
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 74
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.music.collection.modify"

    .line 75
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 76
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;-><init>()V

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->authInfo:Ljava/lang/String;

    const-string v2, "program"

    .line 79
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "story"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "content"

    .line 82
    iput-object p1, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->itemType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "album"

    .line 80
    iput-object p1, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->itemType:Ljava/lang/String;

    .line 84
    :goto_1
    iput-object p2, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->rawId:Ljava/lang/String;

    const-string p1, "REMOVE"

    .line 85
    iput-object p1, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->operation:Ljava/lang/String;

    .line 86
    iput-object p3, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$Param;->source:Ljava/lang/String;

    .line 87
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "remove-param:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CollectRequest"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$2;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;)V

    .line 91
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 111
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public setCallback(Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest;->mCallback:Lcom/alibaba/ailabs/genie/musicplayer/apis/CollectRequest$CollectCallback;

    return-void
.end method
