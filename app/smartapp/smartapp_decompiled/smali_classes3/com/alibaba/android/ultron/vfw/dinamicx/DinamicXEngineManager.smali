.class public Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;
.super Ljava/lang/Object;
.source "DinamicXEngineManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DinamicXEngineManager"


# instance fields
.field private mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

.field private mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 20
    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    .line 30
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->init()V

    return-void
.end method

.method public static create(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;
    .locals 1
    .param p0    # Lcom/alibaba/android/ultron/vfw/core/ViewEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 26
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    return-object v0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "params viewEngine can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->withUsePipelineCache(Z)Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 52
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->withDowngradeType(I)Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineConfig$Builder;->build()Lcom/taobao/android/dinamicx/DXEngineConfig;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-direct {v1, v0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;-><init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V

    iput-object v1, p0, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDxEngine()Lcom/taobao/android/dinamicx/DinamicXEngineRouter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    return-object v0
.end method

.method public registerEventHandler(JLcom/taobao/android/dinamicx/DXAbsEventHandler;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->registerEventHandler(JLcom/taobao/android/dinamicx/IDXEventHandler;)Z

    return-void
.end method

.method public registerEventHandlerV2(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/android/dinamic/exception/DinamicException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dinamicx/DinamicXEngineManager;->mDxEngineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->v2RegisterEventHandler(Ljava/lang/String;Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;)V

    return-void
.end method
