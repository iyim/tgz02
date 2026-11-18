.class public Lcom/taobao/android/dinamicx/DinamicXEngineRouter;
.super Lcom/taobao/android/dinamicx/DXBaseClass;
.source "DinamicXEngineRouter.java"


# static fields
.field private static final V2_TEMPLATE:I = 0x4e20

.field private static final V3_TEMPLATE:I = 0x7530


# instance fields
.field engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

.field templateManager:Lcom/taobao/android/dinamic/tempate/DTemplateManager;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V
    .locals 1
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXBaseClass;-><init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V

    .line 71
    new-instance v0, Lcom/taobao/android/dinamicx/DinamicXEngine;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngine;-><init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    .line 75
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DinamicXEngine;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    .line 76
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->bizType:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->templateManagerWithModule(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->templateManager:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 66
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig;Z)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/taobao/android/dinamicx/DXGlobalInitConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    :try_start_0
    invoke-static {p0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->initialize(Landroid/content/Context;Lcom/taobao/android/dinamicx/DXGlobalInitConfig;)V

    .line 59
    invoke-static {p0, p2}, Lcom/taobao/android/dinamic/Dinamic;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private isV3Template(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 405
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getFileVersion()I

    move-result v1

    const/16 v2, 0x7530

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    return v3

    .line 408
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getFileVersion()I

    move-result v1

    const/16 v2, 0x4e20

    if-ne v1, v2, :cond_2

    return v0

    .line 411
    :cond_2
    iget-object v1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    .line 413
    :cond_3
    iget-object v1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-ltz p1, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method private isValidaTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/android/dinamicx/DXError;"
        }
    .end annotation

    .line 530
    new-instance v0, Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->bizType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 531
    iput-object p2, v0, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 532
    new-instance p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const-string v1, "Router"

    invoke-direct {p2, v1, p1, p3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 534
    iput-object p4, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 535
    iput-object p5, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->extraParams:Ljava/util/Map;

    .line 536
    iget-object p1, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;
    .locals 9
    .param p3    # Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ")",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    .line 132
    :try_start_0
    invoke-direct {p0, p3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->isValidaTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string v1, "Router_Create_view"

    const/16 v3, 0x4e2c

    const-string v4, "template is null "

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    .line 133
    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    .line 136
    new-instance p2, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p2, p1}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Lcom/taobao/android/dinamicx/DXError;)V

    return-object p2

    .line 139
    :cond_0
    invoke-direct {p0, p3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->isV3Template(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 140
    iget-object p2, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    invoke-virtual {p2, p1, p3}, Lcom/taobao/android/dinamicx/DinamicXEngine;->createView(Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object p1

    return-object p1

    .line 143
    :cond_1
    invoke-virtual {p0, p3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->transformTemplateToV2(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object p2

    .line 145
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->bizType:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/android/dinamic/DViewGenerator;->viewGeneratorWithModule(Ljava/lang/String;)Lcom/taobao/android/dinamic/DViewGenerator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/taobao/android/dinamic/DViewGenerator;->createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p2

    .line 147
    new-instance v0, Lcom/taobao/android/dinamicx/DXRootView;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/DXRootView;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance p1, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p1, v0}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_2

    const-string v3, "Router_Create_view"

    const/16 v5, 0x4e2d

    const-string v6, "2.0 createView \u5931\u8d25 viewResult == null"

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p3

    .line 151
    invoke-direct/range {v2 .. v7}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DXResult;->setDxError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 154
    invoke-virtual {p1, v1}, Lcom/taobao/android/dinamicx/DXResult;->setResult(Ljava/lang/Object;)V

    return-object p1

    .line 158
    :cond_2
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/view/ViewResult;->isRenderSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v4, "Router_Create_view"

    const/16 v6, 0x4e2d

    const-string v7, "2.0 createView \u5931\u8d25"

    .line 160
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamic/view/DinamicError;->getErrorMap()Ljava/util/HashMap;

    move-result-object v8

    move-object v3, p0

    move-object v5, p3

    .line 159
    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    .line 162
    invoke-virtual {p1, v2}, Lcom/taobao/android/dinamicx/DXResult;->setDxError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 163
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/view/ViewResult;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    .line 164
    invoke-virtual {p1, v1}, Lcom/taobao/android/dinamicx/DXResult;->setResult(Ljava/lang/Object;)V

    return-object p1

    .line 169
    :cond_3
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/view/ViewResult;->getView()Landroid/view/View;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 174
    :cond_4
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const/4 v1, 0x1

    .line 177
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXRootView;->setV2(Z)V

    .line 178
    iput-object p3, v0, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 179
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/view/ViewResult;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXRootView;->addView(Landroid/view/View;)V

    .line 180
    invoke-virtual {p2, v0}, Lcom/taobao/android/dinamic/view/ViewResult;->setView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 184
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    const/16 v3, 0x4e25

    .line 188
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v1, "Router_Create_view"

    move-object v0, p0

    move-object v2, p3

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    .line 190
    new-instance p2, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p2, p1}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Lcom/taobao/android/dinamicx/DXError;)V

    return-object p2
.end method

.method public downLoadTemplates(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)V"
        }
    .end annotation

    .line 86
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 88
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 89
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 90
    invoke-direct {p0, v3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->isV3Template(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    iget-object v4, v3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    invoke-virtual {p0, v3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->transformTemplateToV2(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->templateManager:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    if-eqz p1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 100
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->templateManager:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    new-instance v2, Lcom/taobao/android/dinamicx/DinamicXEngineRouter$1;

    invoke-direct {v2, p0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter$1;-><init>(Lcom/taobao/android/dinamicx/DinamicXEngineRouter;)V

    invoke-virtual {p1, v1, v2}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->downloadTemplates(Ljava/util/List;Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;)V

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    if-eqz p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 111
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DinamicXEngine;->downLoadTemplates(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 v2, 0x0

    const/16 v3, 0x4e28

    .line 115
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v1, "Router_Download"

    move-object v0, p0

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    :cond_4
    :goto_2
    return-void
.end method

.method public fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 9

    const/4 v0, 0x0

    .line 303
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->isValidaTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->isV3Template(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    invoke-virtual {v1, p1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x7530

    .line 309
    invoke-virtual {v1, v2}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->setFileVersion(I)V

    :cond_1
    return-object v1

    .line 313
    :cond_2
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->transformTemplateToV2(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->templateManager:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    invoke-virtual {v2, v1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->fetchExactTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object v1

    .line 315
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->transformTemplateToV3(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v2, 0x4e20

    .line 317
    invoke-virtual {v1, v2}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->setFileVersion(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception v1

    .line 322
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 323
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    const/16 v6, 0x4e27

    .line 327
    invoke-static {v1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v4, "Router_Fetch"

    move-object v3, p0

    move-object v5, p1

    .line 325
    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    return-object v0
.end method

.method public getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    return-object v0
.end method

.method public registerDataParser(JLcom/taobao/android/dinamicx/expression/parser/IDXDataParser;)Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/DinamicXEngine;->registerDataParser(JLcom/taobao/android/dinamicx/expression/parser/IDXDataParser;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerEventHandler(JLcom/taobao/android/dinamicx/IDXEventHandler;)Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/DinamicXEngine;->registerEventHandler(JLcom/taobao/android/dinamicx/IDXEventHandler;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerNotificationListener(Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->registerNotificationListener(Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;)V

    :cond_0
    return-void
.end method

.method public registerWidget(JLcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;)Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/DinamicXEngine;->registerWidget(JLcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public renderTemplate(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRootView;IILjava/lang/Object;)Lcom/taobao/android/dinamicx/DXResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            "II",
            "Ljava/lang/Object;",
            ")",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    .line 252
    :try_start_0
    iget-object v0, p3, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :try_start_1
    invoke-direct {p0, v0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->isValidaTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p2, "Router_Render"

    const/16 p4, 0x4e26

    const-string p5, "template is null "

    const/4 p6, 0x0

    move-object p1, p0

    move-object p3, v0

    .line 254
    invoke-direct/range {p1 .. p6}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    .line 258
    new-instance p2, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p2, p1}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Lcom/taobao/android/dinamicx/DXError;)V

    return-object p2

    .line 261
    :cond_0
    invoke-direct {p0, v0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->isV3Template(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v2, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->engine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/taobao/android/dinamicx/DinamicXEngine;->renderTemplate(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRootView;IILjava/lang/Object;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object p1

    return-object p1

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->bizType:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/android/dinamic/DViewGenerator;->viewGeneratorWithModule(Ljava/lang/String;)Lcom/taobao/android/dinamic/DViewGenerator;

    move-result-object p1

    invoke-virtual {p1, p3, p2, p6}, Lcom/taobao/android/dinamic/DViewGenerator;->bindData(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p2, "Router_Render"

    const/16 p4, 0x4e26

    const-string p5, "2.0 render \u5931\u8d25"

    const/4 p6, 0x0

    move-object p1, p0

    move-object p3, v0

    .line 268
    invoke-direct/range {p1 .. p6}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    .line 270
    new-instance p2, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p2, p1}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Lcom/taobao/android/dinamicx/DXError;)V

    return-object p2

    .line 273
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/android/dinamic/view/ViewResult;->isBindDataSuccess()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p2, "Router_Render"

    const/16 p4, 0x4e26

    const-string p5, "2.0 render \u5931\u8d25"

    .line 275
    invoke-virtual {v1}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DinamicError;->getErrorMap()Ljava/util/HashMap;

    move-result-object p6

    move-object p1, p0

    move-object p3, v0

    .line 274
    invoke-direct/range {p1 .. p6}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    .line 276
    new-instance p2, Lcom/taobao/android/dinamicx/DXResult;

    invoke-virtual {v1}, Lcom/taobao/android/dinamic/view/ViewResult;->getView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/taobao/android/dinamicx/DXRootView;

    invoke-direct {p2, p3, p1}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXError;)V

    return-object p2

    .line 279
    :cond_3
    new-instance p1, Lcom/taobao/android/dinamicx/DXResult;

    invoke-virtual {v1}, Lcom/taobao/android/dinamic/view/ViewResult;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/android/dinamicx/DXRootView;

    invoke-direct {p1, p2}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 281
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 282
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    const v3, 0x30d4e

    .line 286
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v1, "Router_Render"

    move-object v0, p0

    .line 284
    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    .line 288
    new-instance p2, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p2, p1}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Lcom/taobao/android/dinamicx/DXError;)V

    return-object p2
.end method

.method public renderTemplate(Lcom/taobao/android/dinamicx/DXRootView;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/dinamicx/DXResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Lcom/taobao/android/dinamicx/DXResult<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 207
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 209
    iget-object v0, p1, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 210
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultWidthSpec()I

    move-result v5

    .line 211
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultHeightSpec()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    .line 212
    invoke-virtual/range {v1 .. v7}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->renderTemplate(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRootView;IILjava/lang/Object;)Lcom/taobao/android/dinamicx/DXResult;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "Engine_Render"

    const/4 v2, 0x0

    const/16 v3, 0x7538

    const-string v4, "dxRootView == null || dxRootView.getContext() == null || dxRootView.dxTemplateItem == null"

    const/4 v5, 0x0

    move-object v0, p0

    .line 214
    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    move-result-object p2

    .line 218
    new-instance v0, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {v0, p2}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Lcom/taobao/android/dinamicx/DXError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 221
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 226
    iget-object v0, p1, Lcom/taobao/android/dinamicx/DXRootView;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    :cond_2
    move-object v3, v0

    const/16 v4, 0x7534

    .line 230
    invoke-static {p2}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v2, "Engine_Render"

    move-object v1, p0

    .line 228
    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    .line 232
    new-instance p2, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {p2, p1}, Lcom/taobao/android/dinamicx/DXResult;-><init>(Lcom/taobao/android/dinamicx/DXError;)V

    return-object p2
.end method

.method public transformTemplateToV2(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 433
    :cond_0
    :try_start_0
    new-instance v1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;-><init>()V

    .line 434
    iget-object v2, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    .line 435
    iget-wide v2, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    .line 438
    :cond_1
    iget-object p1, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    iput-object p1, v1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->templateUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 441
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 v4, 0x0

    const/16 v5, 0x4e2a

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transformTemplateToV3 error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v3, "Router_Transform_Template"

    move-object v2, p0

    .line 444
    invoke-direct/range {v2 .. v7}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    return-object v0
.end method

.method public transformTemplateToV3(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 494
    :cond_0
    :try_start_0
    new-instance v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-direct {v1}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;-><init>()V

    .line 495
    iget-object v2, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    .line 496
    iget-object v2, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 497
    iget-object v2, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    .line 499
    iput-wide v2, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    .line 501
    :goto_0
    iget-object v2, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->templateUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 504
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 505
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 508
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 509
    iget-object v2, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    const-string v3, "templateName"

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v2, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    const-string v3, "templateVersion"

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->templateUrl:Ljava/lang/String;

    const-string v2, "templateUrl"

    invoke-interface {v8, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x4e2b

    .line 512
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transformTemplateToV3 error:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-static {v1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v4, "Router_Transform_Template"

    move-object v3, p0

    .line 512
    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    return-object v0
.end method

.method public transformTemplatesToV3(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation

    .line 461
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 462
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 463
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    .line 464
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->transformTemplateToV3(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 466
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 472
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 v3, 0x0

    const/16 v4, 0x4e2b

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transformTemplateToV3 error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v2, "Router_Transform_Template"

    move-object v1, p0

    .line 475
    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;ILjava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/DXError;

    const/4 p1, 0x0

    return-object p1
.end method

.method public v2RegisterEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 563
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V

    return-void
.end method

.method public v2RegisterParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 568
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerDataParser(Ljava/lang/String;Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;)V

    return-void
.end method

.method public v2RegisterView(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 551
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamic/DRegisterCenter;->registerViewConstructor(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;)V

    return-void
.end method
