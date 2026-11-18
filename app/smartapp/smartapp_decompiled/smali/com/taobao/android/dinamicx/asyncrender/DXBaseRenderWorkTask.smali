.class public Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;
.super Ljava/lang/Object;
.source "DXBaseRenderWorkTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static pipelineThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/taobao/android/dinamicx/DXRenderPipeline;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected config:Lcom/taobao/android/dinamicx/DXEngineConfig;

.field protected controlEventCenterWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;",
            ">;"
        }
    .end annotation
.end field

.field protected dxPipelineCacheManager:Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

.field protected engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

.field protected options:Lcom/taobao/android/dinamicx/DXRenderOptions;

.field public runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

.field protected taskId:J

.field protected taskName:Ljava/lang/String;

.field protected templateManagerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/DXTemplateManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;->pipelineThreadLocal:Ljava/lang/ThreadLocal;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;Lcom/taobao/android/dinamicx/DXTemplateManager;Lcom/taobao/android/dinamicx/DXPipelineCacheManager;Lcom/taobao/android/dinamicx/DXEngineContext;Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;->runtimeContext:Lcom/taobao/android/dinamicx/DXRuntimeContext;

    .line 48
    iput-object p4, p0, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;->dxPipelineCacheManager:Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    .line 49
    iput-object p2, p0, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;->options:Lcom/taobao/android/dinamicx/DXRenderOptions;

    .line 50
    invoke-virtual {p5}, Lcom/taobao/android/dinamicx/DXEngineContext;->getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    .line 51
    iput-object p5, p0, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    if-eqz p6, :cond_0

    .line 53
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;->controlEventCenterWeakReference:Ljava/lang/ref/WeakReference;

    :cond_0
    if-eqz p3, :cond_1

    .line 56
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;->templateManagerWeakReference:Ljava/lang/ref/WeakReference;

    .line 58
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXBaseRenderWorkTask;->taskId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    :try_start_0
    const-class v0, Landroid/os/Looper;

    const-string/jumbo v1, "sThreadLocal"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    instance-of v1, v0, Ljava/lang/ThreadLocal;

    if-eqz v1, :cond_0

    .line 73
    nop

    nop

    .line 74
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
