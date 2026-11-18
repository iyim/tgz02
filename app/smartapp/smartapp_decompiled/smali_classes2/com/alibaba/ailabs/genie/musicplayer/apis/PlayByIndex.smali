.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex;
.super Ljava/lang/Object;
.source "PlayByIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.music.playlist.playWithListPosition"

.field public static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "PlayByIndex"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public play(I)V
    .locals 3

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.music.playlist.playWithListPosition"

    .line 24
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 25
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex$RequestData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex$RequestData;-><init>()V

    .line 27
    iput p1, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex$RequestData;->pos:I

    .line 29
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex$RequestData;->authInfo:Ljava/lang/String;

    .line 30
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PlayByIndex"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/PlayByIndex;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
