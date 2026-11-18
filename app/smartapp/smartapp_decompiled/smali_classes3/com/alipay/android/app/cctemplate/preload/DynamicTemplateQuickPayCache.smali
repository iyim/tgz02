.class public Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;
.super Ljava/lang/Object;
.source "DynamicTemplateQuickPayCache.java"


# static fields
.field private static mInstance:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;


# instance fields
.field private mIsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mIsInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->initialize(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;
    .locals 1

    .line 21
    sget-object v0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mInstance:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    invoke-direct {v0}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;-><init>()V

    sput-object v0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mInstance:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    .line 24
    :cond_0
    sget-object v0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mInstance:Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;

    return-object v0
.end method

.method private initialize(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 2

    .line 60
    new-instance v0, Lcom/alipay/android/app/cctemplate/api/TemplateService;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    const-string p1, "amc.js"

    .line 62
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AlipaySDK.bundle/amc.js"

    invoke-static {v1, p1}, Lcom/flybird/FBDocumentAssistor;->putAssetRes(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "amc.css"

    .line 63
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AlipaySDK.bundle/amc.css"

    invoke-static {v1, p1}, Lcom/flybird/FBDocumentAssistor;->putAssetRes(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "amc.i18n"

    .line 64
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AlipaySDK.bundle/amc.i18n"

    invoke-static {v1, p1}, Lcom/flybird/FBDocumentAssistor;->putAssetRes(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v1, "QUICKPAY@cashier-pre-confirm-flex"

    .line 66
    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    const-string v1, "QUICKPAY@cashier-channel-logo-flex"

    .line 67
    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    const-string v1, "QUICKPAY@deposit-index-flex"

    .line 68
    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    const-string v1, "QUICKPAY@frontpay-channel-logo-flex"

    .line 69
    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    const-string v1, "QUICKPAY@cashier-card-detail-flex"

    .line 70
    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    const-string v1, "QUICKPAY@cashier-card-no-flex"

    .line 71
    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    const-string v1, "QUICKPAY@open-pwd-check-flex"

    .line 72
    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getLocalTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    return-void
.end method


# virtual methods
.method public declared-synchronized preLoad(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 3

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string v1, "DynamicTemplateQuickPayCache::preLoad"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-boolean v0, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    const-string v0, "DynamicTemplateQuickPayCache::preLoad"

    const-string v1, "mIsInitialized:true"

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 34
    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;->mIsInitialized:Z

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache$1;-><init>(Lcom/alipay/android/app/cctemplate/preload/DynamicTemplateQuickPayCache;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
