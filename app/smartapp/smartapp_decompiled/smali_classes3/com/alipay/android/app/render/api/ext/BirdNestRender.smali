.class public Lcom/alipay/android/app/render/api/ext/BirdNestRender;
.super Ljava/lang/Object;
.source "BirdNestRender.java"

# interfaces
.implements Lcom/alipay/android/app/render/api/ICashierRender;


# instance fields
.field private mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

.field private mFBContextHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/alipay/android/app/template/FBContext;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGenContextDelay:Z

.field private mKeyBoardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field private mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

.field private mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

.field private mRenderInterceptor:Lcom/alipay/android/app/render/api/ext/IRenderInterceptor;

.field private mTplProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

.field private mTplService:Lcom/alipay/android/app/cctemplate/api/TemplateService;

.field private mTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mIsGenContextDelay:Z

    return-void
.end method

.method static synthetic access$002(Lcom/alipay/android/app/render/api/ext/BirdNestRender;Lcom/alipay/android/app/template/ITemplateClickCallback;)Lcom/alipay/android/app/template/ITemplateClickCallback;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

    return-object p1
.end method

.method private buildRpcJs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "var flybird = flybird || {};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flybird.rpcData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_0

    .line 213
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 215
    :try_start_0
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 217
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 221
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "flybird.local="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCallbackProxy(Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;
    .locals 1

    .line 184
    new-instance v0, Lcom/alipay/android/app/render/api/ext/BirdNestRender$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/render/api/ext/BirdNestRender$1;-><init>(Lcom/alipay/android/app/render/api/ext/BirdNestRender;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)V

    return-object v0
.end method

.method private getEngineService()Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-static {v0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestManager;->create(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object v0

    return-object v0
.end method

.method private getTplService()Lcom/alipay/android/app/cctemplate/api/TemplateService;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplService:Lcom/alipay/android/app/cctemplate/api/TemplateService;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/alipay/android/app/cctemplate/api/TemplateService;

    iget-object v1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplService:Lcom/alipay/android/app/cctemplate/api/TemplateService;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplService:Lcom/alipay/android/app/cctemplate/api/TemplateService;

    iget-object v1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->setTplTransport(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V

    .line 256
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplService:Lcom/alipay/android/app/cctemplate/api/TemplateService;

    return-object v0
.end method

.method private setAlpha(Landroid/view/View;F)V
    .locals 3

    .line 402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 403
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 404
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p2, 0x1

    .line 405
    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public callExecuteJs(Landroid/view/View;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    .line 428
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/android/app/template/FBContext;

    if-eqz p1, :cond_0

    .line 430
    invoke-interface {p1, p2}, Lcom/alipay/android/app/template/FBContext;->executeJs(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 433
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    return v0
.end method

.method public callOnreload(Landroid/view/View;)V
    .locals 1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/android/app/template/FBContext;

    if-eqz p1, :cond_0

    const-string v0, "{}"

    .line 346
    invoke-interface {p1, v0}, Lcom/alipay/android/app/template/FBContext;->reloadData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 349
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public callRender(Ljava/lang/String;)V
    .locals 10

    .line 310
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BirdNestRender::callRender"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 314
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resultJson 001:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/android/app/template/ITemplateClickCallback;->onClickCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 318
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, ","

    .line 319
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 320
    array-length v3, p1

    if-ltz v3, :cond_1

    .line 321
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p1, v5

    .line 324
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 323
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    .line 325
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 326
    array-length v7, v6

    const/4 v9, 0x2

    if-lt v7, v9, :cond_0

    .line 328
    :try_start_1
    aget-object v7, v6, v4

    aget-object v6, v6, v8

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 330
    :catch_1
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 335
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultJson 002:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/android/app/template/ITemplateClickCallback;->onClickCallback(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public destroy(Landroid/content/Context;I)V
    .locals 5

    const-string p1, "exception"

    .line 276
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getEngineService()Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object v0

    .line 277
    invoke-virtual {v0, p2}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->releaseResource(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 279
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 280
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 281
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v2

    const-string v3, "flybird"

    const-string v4, "BirdNestEx"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/android/app/render/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 291
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getTplService()Lcom/alipay/android/app/cctemplate/api/TemplateService;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->triggerTemplateUpdate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 294
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    .line 305
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mCallBack:Lcom/alipay/android/app/template/ITemplateClickCallback;

    return-void
.end method

.method public destroyView(Landroid/view/View;)V
    .locals 4

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/FBContext;

    .line 229
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v1

    const-string v2, "BirdNestRender::destroyView"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 231
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "deferDownload"

    const/4 v3, 0x1

    .line 232
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deferDownloadFilter"

    .line 233
    new-instance v3, Lcom/alipay/android/app/render/api/ext/BirdNestRender$2;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender$2;-><init>(Lcom/alipay/android/app/render/api/ext/BirdNestRender;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/FBContext;->destroy(Ljava/util/Map;)V

    .line 240
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public generateView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    invoke-virtual/range {p0 .. p6}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->preloadView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Lcom/alipay/android/app/render/api/result/PreparedResult;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->generateView(Lcom/alipay/android/app/render/api/result/PreparedResult;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public generateView(Lcom/alipay/android/app/render/api/result/PreparedResult;)Landroid/view/View;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 357
    iget-boolean v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mIsGenContextDelay:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object p1, p1, Lcom/alipay/android/app/render/api/result/PreparedResult;->mResult:Ljava/lang/Object;

    check-cast p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    invoke-virtual {p1}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->create()Lcom/alipay/android/app/template/FBContext;

    move-result-object p1

    goto :goto_0

    .line 360
    :cond_0
    iget-object p1, p1, Lcom/alipay/android/app/render/api/result/PreparedResult;->mResult:Ljava/lang/Object;

    check-cast p1, Lcom/alipay/android/app/template/FBContext;

    .line 364
    :goto_0
    invoke-interface {p1}, Lcom/alipay/android/app/template/FBContext;->getAutoFocusable()Lcom/alipay/android/app/template/FBFocusable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/alipay/android/app/render/api/ext/BirdNestRender$3;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender$3;-><init>(Lcom/alipay/android/app/render/api/ext/BirdNestRender;Lcom/alipay/android/app/template/FBFocusable;)V

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    :cond_1
    invoke-interface {p1}, Lcom/alipay/android/app/template/FBContext;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 376
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 377
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "samsung"

    .line 378
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "GT-N7100"

    .line 379
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "4.4.2"

    .line 380
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "4.4.4"

    .line 381
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 382
    :goto_1
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "K-Touch E806"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 383
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "SM-G9350"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "6.0.1"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 385
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    .line 386
    invoke-interface {p1}, Lcom/alipay/android/app/template/FBContext;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 387
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_4
    if-nez v1, :cond_6

    if-nez v5, :cond_6

    if-eqz v3, :cond_5

    goto :goto_3

    .line 394
    :cond_5
    invoke-interface {p1}, Lcom/alipay/android/app/template/FBContext;->getBodyOpacity()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->setAlpha(Landroid/view/View;F)V

    goto :goto_4

    :cond_6
    :goto_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 392
    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->setAlpha(Landroid/view/View;F)V

    .line 397
    :goto_4
    iget-object v1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getEngineParams()Ljava/lang/String;
    .locals 4

    .line 414
    invoke-virtual {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getEngineVersion()Ljava/lang/String;

    move-result-object v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "birdParamsVer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BirdNestRender::getBirdParamsVersion"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    .line 422
    invoke-static {}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getBirdNestVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFBContext(Landroid/view/View;)Lcom/alipay/android/app/template/FBContext;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mFBContextHash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/android/app/template/FBContext;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFBPluginFactory()Lcom/alipay/android/app/template/FBPluginFactory;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

    return-object v0
.end method

.method public getKeyBoardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mKeyBoardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-object v0
.end method

.method public getLocalTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 2

    .line 441
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getTplService()Lcom/alipay/android/app/cctemplate/api/TemplateService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 444
    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getProvider()Lcom/alipay/android/app/render/api/ICashierProvider;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    return-object v0
.end method

.method public getServerTemplate(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 1

    .line 457
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getTplService()Lcom/alipay/android/app/cctemplate/api/TemplateService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getServerTemplate(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getTplProvider()Lcom/alipay/android/app/cctemplate/api/ITplProvider;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    return-object v0
.end method

.method public getTplTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    return-object v0
.end method

.method public needUpdateLocalTpl(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 1

    .line 451
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getTplService()Lcom/alipay/android/app/cctemplate/api/TemplateService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->needUpdateLocalTpl(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBackPressed(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    .line 263
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getEngineService()Lcom/alipay/android/app/render/birdnest/service/BirdNestService;

    move-result-object v1

    .line 264
    invoke-virtual {v1, p1}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->onBackPressed(Landroid/view/View;)Z

    move-result v0

    .line 265
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object p1

    const-string v2, "BirdNestRender::onBackPressed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public preloadView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Lcom/alipay/android/app/render/api/result/PreparedResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;",
            ")",
            "Lcom/alipay/android/app/render/api/result/PreparedResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getTplService()Lcom/alipay/android/app/cctemplate/api/TemplateService;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->loadTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 152
    iget-object v0, p3, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 153
    iget-object p3, p3, Lcom/alipay/android/app/cctemplate/model/Template;->name:Ljava/lang/String;

    move-object v6, p3

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mRenderInterceptor:Lcom/alipay/android/app/render/api/ext/IRenderInterceptor;

    if-eqz v1, :cond_1

    instance-of p3, p6, Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback2;

    if-eqz p3, :cond_1

    .line 157
    move-object v7, p6

    check-cast v7, Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback2;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, v0

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/app/render/api/ext/IRenderInterceptor;->preloadView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback2;)Lcom/alipay/android/app/render/api/result/PreparedResult;

    move-result-object p3

    if-eqz p3, :cond_1

    return-object p3

    .line 163
    :cond_1
    invoke-direct {p0, p4, p5}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->buildRpcJs(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 164
    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->setUiContext(Landroid/content/Context;)V

    .line 165
    new-instance p4, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    invoke-direct {p4, p1}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

    .line 166
    invoke-virtual {p4, p1}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object p1

    .line 167
    invoke-virtual {p1, p2}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setTemplateId(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object p1

    .line 168
    invoke-virtual {p1, p3}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setDataContent(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mKeyBoardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 169
    invoke-virtual {p1, p2}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setmKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v0}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setTemplateJson(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 171
    invoke-virtual {p1, p2}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setUseQuickPayTemplateManager(Z)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 172
    invoke-virtual {p1, p2}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setCashierProvider(Lcom/alipay/android/app/render/api/ICashierProvider;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object p1

    .line 173
    invoke-direct {p0, p6}, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->getCallbackProxy(Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->setCallbackProxy(Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;)Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    move-result-object p1

    .line 175
    iget-boolean p2, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mIsGenContextDelay:Z

    if-eqz p2, :cond_2

    .line 176
    invoke-static {p1}, Lcom/alipay/android/app/render/api/result/PreparedResult;->build(Ljava/lang/Object;)Lcom/alipay/android/app/render/api/result/PreparedResult;

    move-result-object p1

    return-object p1

    .line 178
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->create()Lcom/alipay/android/app/template/FBContext;

    move-result-object p1

    .line 179
    invoke-static {p1}, Lcom/alipay/android/app/render/api/result/PreparedResult;->build(Ljava/lang/Object;)Lcom/alipay/android/app/render/api/result/PreparedResult;

    move-result-object p1

    return-object p1
.end method

.method public setFBPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

    return-void
.end method

.method public setIsGenContextDelay(Z)V
    .locals 3

    .line 92
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BirdNestRender::setIsGenContextDelay"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/render/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput-boolean p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mIsGenContextDelay:Z

    return-void
.end method

.method public setKeyBoardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mKeyBoardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    return-void
.end method

.method public setProvider(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    return-void
.end method

.method public setRenderInterceptor(Lcom/alipay/android/app/render/api/ext/IRenderInterceptor;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mRenderInterceptor:Lcom/alipay/android/app/render/api/ext/IRenderInterceptor;

    return-void
.end method

.method public setTplProvider(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 2

    .line 101
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v0

    invoke-interface {p1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/render/log/LogTracer;->initialize(Landroid/content/Context;)V

    .line 102
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTplProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    return-void
.end method

.method public setTplTransport(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alipay/android/app/render/api/ext/BirdNestRender;->mTransport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    return-void
.end method
