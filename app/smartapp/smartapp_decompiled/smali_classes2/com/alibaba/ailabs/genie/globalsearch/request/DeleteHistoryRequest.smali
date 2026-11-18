.class public Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest;
.super Ljava/lang/Object;
.source "DeleteHistoryRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.ai.ScreenSearchService.deleteSearchHistory"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "Request-DeleteHistory"


# instance fields
.field private deleteWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest;->deleteWord:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public request(Landroid/content/Context;)V
    .locals 4

    .line 32
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest$RequestData;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest$RequestData;->authInfo:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest;->deleteWord:Ljava/lang/String;

    iput-object p1, v0, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest$RequestData;->deleteWord:Ljava/lang/String;

    .line 37
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.ai.ScreenSearchService.deleteSearchHistory"

    .line 38
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 39
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    const-string v1, "Request-DeleteHistory"

    const-string v2, "apiName:mtop.alibaba.ai.ScreenSearchService.deleteSearchHistory"

    .line 41
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestData.authInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest$RequestData;->authInfo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/request/DeleteHistoryRequest;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
