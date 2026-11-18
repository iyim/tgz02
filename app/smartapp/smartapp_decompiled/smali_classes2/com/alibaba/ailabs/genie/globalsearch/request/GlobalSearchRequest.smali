.class public Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest;
.super Ljava/lang/Object;
.source "GlobalSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$RequestData;
    }
.end annotation


# static fields
.field private static final API_NAME:Ljava/lang/String; = "mtop.alibaba.ai.ComprehensiveSearchService.screenSearch"

.field private static final API_VER:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "Request-Search"


# instance fields
.field private queryWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest;->queryWord:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public request(Landroid/content/Context;Ljava/util/function/Function;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Function<",
            "Lcom/alibaba/ailabs/genie/globalsearch/response/GlobalSearchResponse;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$RequestData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$RequestData;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;

    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$RequestData;->authInfo:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest;->queryWord:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$RequestData;->utterance:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$RequestData;->uuid:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$RequestData;->userId:Ljava/lang/String;

    .line 40
    new-instance p1, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.ai.ComprehensiveSearchService.screenSearch"

    .line 41
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 42
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    const-string v1, "Request-Search"

    const-string v2, "apiName:mtop.alibaba.ai.ComprehensiveSearchService.screenSearch"

    .line 44
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestData.authInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$RequestData;->authInfo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$1;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/request/GlobalSearchRequest;Ljava/util/function/Function;)V

    .line 48
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

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
