.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;
.super Ljava/lang/Object;
.source "DataLoaderEngineImpl.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoader;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataLoaderEngineImpl"


# instance fields
.field mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    return-void
.end method


# virtual methods
.method public doRequest(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;)V
    .locals 7

    .line 30
    iget-object v0, p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mOpType:Ljava/lang/String;

    const-string v1, "initial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getUltronEngine()Lcom/alibaba/android/ultron/engine/UltronEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/UltronEngine;->resetCurrentTemplate()V

    :cond_0
    const-string v0, "DataParseResult"

    .line 33
    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getUltronEngine()Lcom/alibaba/android/ultron/engine/UltronEngine;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;->getModel()Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 35
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ultron/engine/UltronEngine;->renderUserData(Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;

    invoke-direct {v1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->setTempRenderInfo(Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;)V

    .line 40
    invoke-virtual {v1, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->setLoaderContext(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;)V

    if-eqz v0, :cond_4

    .line 42
    iget-boolean p1, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->hasError:Z

    if-eqz p1, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    iget-object p1, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->renderResult:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_3

    const-string v3, "noNeedRefresh"

    .line 61
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    invoke-interface {p2, v2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;->onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V

    return-void

    .line 67
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v3, "api"

    const-string v4, "api.newultron"

    .line 68
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    .line 69
    invoke-virtual {v2, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl$1;

    invoke-direct {p1, p0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl$1;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;)V

    const-string v3, "ret"

    invoke-virtual {v2, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v"

    const-string v3, "1.0"

    .line 73
    invoke-virtual {v2, p1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iput-object v2, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->renderResult:Lcom/alibaba/fastjson/JSONObject;

    .line 77
    invoke-interface {p2, v1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;->onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V

    goto :goto_4

    :cond_4
    :goto_1
    const-string p1, "DataLoaderEngineImpl"

    const-string v2, "F_ULTRON_ENGINE_10001"

    if-eqz v0, :cond_6

    .line 45
    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->templateRenderError:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;

    .line 46
    new-instance v3, Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    iget-object v4, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;->errorMsg:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object v2, v3, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    const/4 v2, 0x1

    .line 48
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "renderUserData error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;->errorMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;->extraMsg:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;->extraMsg:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v0, ""

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p1, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 51
    :cond_6
    new-instance v3, Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    const-string v0, "Template has generated error, result is empty!"

    invoke-direct {v3, v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object v2, v3, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    const-string v0, "renderUserData error: TempRenderInfo is null"

    .line 54
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_3
    const-string p1, "ClientEngine"

    .line 56
    iput-object p1, v3, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->domain:Ljava/lang/String;

    .line 57
    invoke-interface {p2, v1, v3}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;->onDataLoadFailed(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    :goto_4
    return-void
.end method
