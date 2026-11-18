.class public Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
.super Ljava/lang/Object;
.source "BirdNestBuilder.java"


# instance fields
.field public actionBarHeight:I

.field public appParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bundleName:Ljava/lang/String;

.field public businessId:Ljava/lang/String;

.field public callback:Lcom/alipay/android/app/template/OnLoadCallback;

.field public context:Landroid/content/Context;

.field public contextResources:Landroid/content/res/Resources;

.field public data:Ljava/lang/String;

.field public eventBridge:Lcom/alipay/android/app/template/FBBridge;

.field public eventTarget:Ljava/lang/Object;

.field private expired:Z

.field public factory:Lcom/alipay/android/app/template/FBPluginFactory;

.field public jsDebugger:Z

.field public mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

.field public mCashierProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

.field public mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field public mPasswordService:Lcom/alipay/android/app/template/TemplatePasswordService;

.field public resourceClient:Lcom/alipay/android/app/template/FBResourceClient;

.field public tplHtml:Ljava/lang/String;

.field public tplId:Ljava/lang/String;

.field public tplJson:Ljava/lang/String;

.field public useQuickPayTemplateManager:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->jsDebugger:Z

    .line 40
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->useQuickPayTemplateManager:Z

    .line 41
    iput-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->expired:Z

    .line 47
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/alipay/android/app/template/FBContext;
    .locals 8

    .line 51
    iget-boolean v0, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->expired:Z

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCashierProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-static {v0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->create(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object v0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 59
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->buildFBContext(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/template/FBContext;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v3

    const-string v4, "render"

    const-string v5, "buildFBContext"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/alipay/android/app/render/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->context:Landroid/content/Context;

    .line 64
    iput-object v1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->data:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplHtml:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplJson:Ljava/lang/String;

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->expired:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 71
    invoke-static {}, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->resetService()V

    .line 72
    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BirdNestBuilder is Expired!\n"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallbackProxy(Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    return-object p0
.end method

.method public setCashierProvider(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCashierProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    return-object p0
.end method

.method public setDataContent(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->data:Ljava/lang/String;

    return-object p0
.end method

.method public setPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    return-object p0
.end method

.method public setTemplateHtml(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplHtml:Ljava/lang/String;

    return-object p0
.end method

.method public setTemplateId(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplId:Ljava/lang/String;

    return-object p0
.end method

.method public setTemplateJson(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplJson:Ljava/lang/String;

    return-object p0
.end method

.method public setUseQuickPayTemplateManager(Z)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->useQuickPayTemplateManager:Z

    return-object p0
.end method

.method public setmKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object p0
.end method
