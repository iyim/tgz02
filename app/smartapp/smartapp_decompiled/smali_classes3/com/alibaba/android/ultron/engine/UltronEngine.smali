.class public Lcom/alibaba/android/ultron/engine/UltronEngine;
.super Ljava/lang/Object;
.source "UltronEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;,
        Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UltronEngine"


# instance fields
.field final bizName:Ljava/lang/String;

.field final exceptionListener:Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;

.field mBizName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDataLoaderConfig:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

.field mLogicEngine:Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;

.field private mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

.field mTemplateManager:Lcom/alibaba/android/ultron/engine/template/ITemplateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mContext:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->bizName:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->exceptionListener:Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ultron/engine/UltronEngine;->createLogicEngine(Landroid/content/Context;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;Ljava/lang/String;)V

    .line 47
    new-instance p4, Lcom/alibaba/android/ultron/engine/template/TemplateManager;

    invoke-direct {p4, p1, p3}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTemplateManager:Lcom/alibaba/android/ultron/engine/template/ITemplateManager;

    .line 48
    iput-object p2, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mDataLoaderConfig:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    .line 49
    iput-object p3, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mBizName:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/UltronEngine;->init()V

    return-void
.end method

.method private createLogicEngine(Landroid/content/Context;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->getDataParseType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "dataLoaderParserScript"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "use jsi engine"

    .line 75
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "UltronEngine"

    invoke-static {v0, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    new-instance p2, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->exceptionListener:Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;

    invoke-direct {p2, p1, p3, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;)V

    iput-object p2, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mLogicEngine:Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;

    return-void
.end method

.method private init()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mDataLoaderConfig:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->getTemplateInfo()Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/engine/UltronEngine;->initTemplate(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-boolean v1, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->hasError:Z

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6a21\u677f\u5f15\u64ceinit\u51fa\u9519:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->templateRenderError:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;

    iget v3, v3, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v2, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->templateRenderError:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;

    iget v2, v2, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    .line 60
    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->templateRenderError:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;->errorMsg:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->extraMsg:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mBizName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorEngine(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mDataLoaderConfig:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->getScriptUrl()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mDataLoaderConfig:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderConfig;->getScriptMd5()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/ultron/engine/UltronEngine;->initLogicEngine(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addEventCallback(Ljava/lang/String;Lcom/alibaba/android/ultron/engine/logic/EventCallback;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mLogicEngine:Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;->addLogicEventCallback(Ljava/lang/String;Lcom/alibaba/android/ultron/engine/logic/EventCallback;)V

    return-void
.end method

.method public callMethod(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;",
            ")V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mLogicEngine:Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;->callMethod(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V

    .line 137
    invoke-static {}, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->getUmbrella()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v7, 0x0

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UME_SKU_000_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mLogicEngine:Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;

    instance-of p2, p2, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    if-eqz p2, :cond_1

    const-string p2, "JSI"

    goto :goto_0

    :cond_1
    const-string p2, "JSC"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v2, "Main"

    const-string v3, ""

    const-string v4, ""

    const-string v5, "New_Sku"

    const-string v6, "taobao_sku"

    const-string v9, "showSKU"

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mLogicEngine:Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;->destroy()V

    return-void
.end method

.method protected initLogicEngine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mLogicEngine:Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;->initLogicEngine(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initTemplate(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 6

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTemplateManager:Lcom/alibaba/android/ultron/engine/template/ITemplateManager;

    invoke-interface {v2, p1}, Lcom/alibaba/android/ultron/engine/template/ITemplateManager;->initTemplate(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 p1, 0x1

    .line 94
    new-array p1, p1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTemplate use time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "UltronEngine"

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    return-object p1
.end method

.method public initTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTemplateManager:Lcom/alibaba/android/ultron/engine/template/ITemplateManager;

    invoke-interface {v0, p1}, Lcom/alibaba/android/ultron/engine/template/ITemplateManager;->initTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    .line 84
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    return-object p1
.end method

.method public renderUserData(Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->hasError:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    return-object p1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTemplateManager:Lcom/alibaba/android/ultron/engine/template/ITemplateManager;

    invoke-interface {v0, p1}, Lcom/alibaba/android/ultron/engine/template/ITemplateManager;->renderUserData(Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1
.end method

.method public renderUserData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->hasError:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    return-object p1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTemplateManager:Lcom/alibaba/android/ultron/engine/template/ITemplateManager;

    invoke-interface {v0, p1}, Lcom/alibaba/android/ultron/engine/template/ITemplateManager;->renderUserData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1
.end method

.method public resetCurrentTemplate()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/UltronEngine;->mTemplateManager:Lcom/alibaba/android/ultron/engine/template/ITemplateManager;

    invoke-interface {v0}, Lcom/alibaba/android/ultron/engine/template/ITemplateManager;->resetCurrentTemplate()V

    return-void
.end method
