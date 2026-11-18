.class public Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest;
.super Ljava/lang/Object;
.source "ReOrderAppsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;,
        Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.ybClientSearch.orderApps"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "ReOrderAppsRequest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public reOrderApps(Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;",
            ">;",
            "Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;",
            ")V"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$RequestData;-><init>()V

    .line 37
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getAuthInfo()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$RequestData;->authInfo:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$RequestData;->apps:Ljava/lang/String;

    .line 40
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.ybClientSearch.orderApps"

    .line 41
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 42
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiName:mtop.alibaba.aicloud.t.ybClientSearch.orderApps, apps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$RequestData;->apps:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReOrderAppsRequest"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$1;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest;Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$ReorderListener;)V

    .line 46
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

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
