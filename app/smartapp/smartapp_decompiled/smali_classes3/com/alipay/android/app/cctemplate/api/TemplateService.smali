.class public Lcom/alipay/android/app/cctemplate/api/TemplateService;
.super Ljava/lang/Object;
.source "TemplateService.java"


# static fields
.field public static final OPTION_DEFER_DOWNLOAD:Ljava/lang/String; = "opt_defer_download"

.field public static final OPTION_SYNC_CANDIDATE:Ljava/lang/String; = "opt_sync_candidate"

.field public static final OPTION_SYNC_RECEIVED:Ljava/lang/String; = "opt_sync_reveived"


# instance fields
.field private mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

.field private mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

.field private mTplTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    invoke-interface {p1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->initialize(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .line 36
    new-instance v0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    return-void
.end method

.method public static getBirdNestVersion()Ljava/lang/String;
    .locals 6

    .line 148
    invoke-static {}, Lcom/alipay/birdnest/api/BirdNestEngine;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getMspBirdNestVer()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 156
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "birdNestVer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mspBirdNestEngineVer:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CdynamicTemplateService::getBirdNestVersion"

    invoke-virtual {v3, v1, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getMspBirdNestVer()Ljava/lang/String;
    .locals 1

    const-string v0, "5.3.0"

    return-object v0
.end method

.method private getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    return-object p1
.end method

.method private getTemplateData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    iget-object p1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    return-object p1
.end method

.method public static getWalletTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    .locals 4

    .line 125
    invoke-static {}, Lcom/alipay/android/app/render/api/RenderEnv;->isWallet()Z

    move-result v0

    const-string v1, "TplRpcInitTransEx"

    const-string v2, "template"

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.alipay.android.app.cctemplate.rpc.TplTransportRpc"

    .line 127
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 130
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "com.alipay.android.app.crender.ext.TemplateTransport"

    .line 134
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 137
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    return-object p1
.end method

.method public getServerTemplate(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->buildServerTpl(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTplTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mTplTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getWalletTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mTplTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mTplTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    return-object v0
.end method

.method public loadTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "opt_defer_download"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0, v0, p2, p3}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->loadTemplates(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 83
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "CdynamicTemplateService::loadTemplate failed"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    .line 88
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isTplUpdated="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {v0}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->isTplUpdated()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TemplateService::loadTemplate"

    invoke-virtual {p2, v0, p3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public loadTemplates(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {p0}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getTplTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->loadTemplates(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public needUpdateLocalTpl(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 0

    .line 108
    invoke-static {p2, p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->whetherNeedUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result p1

    return p1
.end method

.method public preLoad()V
    .locals 2

    .line 163
    invoke-static {}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->getInstance()Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->preLoad(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    return-void
.end method

.method public readAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setTplTransport(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mTplTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    return-void
.end method

.method public syncTplsCandidate()V
    .locals 2

    .line 167
    invoke-static {}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->instance()Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->syncTplsCandidate(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    return-void
.end method

.method public triggerTemplateUpdate()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/api/TemplateService;->mEngine:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-virtual {p0}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getTplTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->triggerTemplateUpdate(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V

    return-void
.end method
