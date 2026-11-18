.class public Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;
.super Lcom/taobao/android/dinamicx/DXBaseClass;
.source "DXAsyncRenderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;
    }
.end annotation


# static fields
.field public static final MSG_ASYNC_RENDER:I = 0x3

.field public static final MSG_CACHE_MONITOR:I = 0x8

.field public static final MSG_CANCEL_PREFETCH_TASK:I = 0x7

.field public static final MSG_CLEAR_EXECUTOR_TASKS:I = 0x4

.field public static final MSG_CLEAR_TASKS:I = 0x5

.field public static final MSG_PREFETCH:I = 0x2

.field public static final MSG_PRE_RENDER:I = 0x1

.field public static final MSG_RESTORE_EXECUTOR_TASKS:I = 0x6

.field private static final NO_PREFETCH:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DXAsyncRenderManager"


# instance fields
.field private addPrefetchTaskCount:I

.field private cacheHits:I

.field private callRenderTemplateCount:I

.field private cancelPrefetchTaskCount:I

.field private handler:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

.field private hasCleared:Z

.field private prefetchTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/DXPrefetchTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V
    .locals 8
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXBaseClass;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    .line 75
    :try_start_0
    new-instance p1, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->getAsyncRenderScheduledThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;-><init>(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->handler:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    new-instance v0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;-><init>(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->handler:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

    .line 78
    iget-object v2, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->bizType:Ljava/lang/String;

    const/4 v3, 0x0

    const v6, 0x1d4c4

    .line 81
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "AsyncRender"

    const-string v5, "Async_Render_3.0_init_Crash"

    .line 78
    invoke-static/range {v2 .. v7}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->clearTasks()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->clearExecutorTasks()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->restoreExecutorTasks()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->prefetchMonitor()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private clearExecutorTasks()V
    .locals 1

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->hasCleared:Z

    .line 224
    invoke-static {}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->clearAsyncRenderTasks()V

    return-void
.end method

.method private clearTasks()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->prefetchTasks:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method private prefetchMonitor()V
    .locals 9

    .line 280
    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "totalNum"

    const/4 v2, 0x1

    const-string v3, "DXAsyncRenderManager"

    const-string v4, "PreRender"

    const/4 v5, 0x0

    if-lez v0, :cond_1

    .line 285
    iget v6, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cancelPrefetchTaskCount:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    int-to-float v0, v0

    div-float/2addr v6, v0

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 287
    iget v7, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget v7, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cancelPrefetchTaskCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cancelNum"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    const-string v8, "fillRate"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v7, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->bizType:Ljava/lang/String;

    const-string v8, "PreRender_FillRate"

    invoke-static {v5, v7, v4, v8, v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerAsyncRender(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 293
    new-array v0, v2, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4efb\u52a1\u586b\u5145\u7387="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u9884\u52a0\u8f7d\u4efb\u52a1\u521b\u5efa="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u4efb\u52a1\u53d6\u6d88="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cancelPrefetchTaskCount:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v3, v0}, Lcom/taobao/android/dinamicx/log/DXLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 297
    :cond_1
    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->callRenderTemplateCount:I

    const-string v6, "hitRate"

    if-lez v0, :cond_2

    .line 298
    iget v7, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cacheHits:I

    int-to-float v7, v7

    int-to-float v0, v0

    div-float/2addr v7, v0

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    iget v8, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->callRenderTemplateCount:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget v1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cacheHits:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v8, "hitNum"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->bizType:Ljava/lang/String;

    const-string v8, "PreRender_HitRate"

    invoke-static {v5, v1, v4, v8, v0}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerAsyncRender(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 306
    new-array v0, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u7f13\u5b58\u547d\u4e2d\u7387="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u6a21\u677f\u6e32\u67d3\u8c03\u7528\u6b21\u6570="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->callRenderTemplateCount:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u7f13\u5b58\u547d\u4e2d\u7684\u8c03\u7528\u6b21\u6570="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cacheHits:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3, v0}, Lcom/taobao/android/dinamicx/log/DXLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;->getPipelineCacheMaxCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 311
    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXEngineConfig;->getPipelineCacheMaxCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 312
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 313
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/android/dinamicx/DXEngineConfig;->getPipelineCacheMaxCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "maxNum"

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v7, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->prefetchTasks:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "taskNum"

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v6, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->bizType:Ljava/lang/String;

    const-string v7, "PreRender_OccupationRate"

    invoke-static {v5, v6, v4, v7, v1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerAsyncRender(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 319
    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7f13\u5b58\u5229\u7528\u7387="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u7f13\u5b58\u6700\u5927\u4e2a\u6570\u9650\u5236="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;->getPipelineCacheMaxCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u9884\u52a0\u8f7d\u7684\u521b\u5efa\u4efb\u52a1="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v3, v1}, Lcom/taobao/android/dinamicx/log/DXLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 323
    :cond_4
    iput v5, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    .line 324
    iput v5, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cancelPrefetchTaskCount:I

    .line 325
    iput v5, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->callRenderTemplateCount:I

    .line 326
    iput v5, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cacheHits:I

    return-void
.end method

.method private restoreExecutorTasks()V
    .locals 4

    .line 240
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->hasCleared:Z

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->prefetchTasks:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/DXPrefetchTask;

    .line 243
    iget-boolean v2, v1, Lcom/taobao/android/dinamicx/DXPrefetchTask;->isDone:Z

    if-nez v2, :cond_0

    .line 244
    new-instance v2, Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;-><init>(ILjava/lang/Runnable;)V

    invoke-static {v2}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runForPrefetch(Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->hasCleared:Z

    :cond_2
    return-void
.end method

.method private scheduleCancelPrefetchTask(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 2

    .line 161
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 162
    iput v1, v0, Landroid/os/Message;->what:I

    .line 163
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    iget-object p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->handler:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scheduleClearExecutorTasks()V
    .locals 2

    .line 196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 197
    iput v1, v0, Landroid/os/Message;->what:I

    .line 198
    iget-object v1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->handler:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scheduleClearTasks()V
    .locals 2

    .line 205
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 206
    iput v1, v0, Landroid/os/Message;->what:I

    .line 207
    iget-object v1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->handler:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private schedulePrefetchCacheMonitor()V
    .locals 2

    .line 268
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    .line 269
    iput v1, v0, Landroid/os/Message;->what:I

    .line 270
    iget-object v1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->handler:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scheduleRestoreExecutorTasks()V
    .locals 2

    .line 214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 215
    iput v1, v0, Landroid/os/Message;->what:I

    .line 216
    iget-object v1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->handler:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public beforeRenderTemplate(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->scheduleCancelPrefetchTask(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public cancelAllTasks()V
    .locals 2

    .line 361
    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->scheduleClearExecutorTasks()V

    return-void
.end method

.method public cancelPrefetchTask(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 2

    .line 172
    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->callRenderTemplateCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->callRenderTemplateCount:I

    .line 174
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->prefetchTasks:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getCacheIdentify()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/DXPrefetchTask;

    .line 180
    iget-boolean v0, p1, Lcom/taobao/android/dinamicx/DXPrefetchTask;->isDone:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p1, Lcom/taobao/android/dinamicx/DXPrefetchTask;->options:Lcom/taobao/android/dinamicx/DXRenderOptions;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXRenderOptions;->setCanceled(Z)V

    .line 182
    iput-boolean v1, p1, Lcom/taobao/android/dinamicx/DXPrefetchTask;->isDone:Z

    .line 183
    iget p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cancelPrefetchTaskCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cancelPrefetchTaskCount:I

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXPrefetchTask;->options:Lcom/taobao/android/dinamicx/DXRenderOptions;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRenderOptions;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 186
    iget p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cacheHits:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cacheHits:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 257
    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->scheduleClearExecutorTasks()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 344
    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->scheduleRestoreExecutorTasks()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 352
    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->schedulePrefetchCacheMonitor()V

    .line 357
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->scheduleClearExecutorTasks()V

    return-void
.end method

.method public preRenderTemplate(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;Lcom/taobao/android/dinamicx/DXTemplateManager;Lcom/taobao/android/dinamicx/DXPipelineCacheManager;Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;)V
    .locals 8

    .line 142
    new-instance v7, Lcom/taobao/android/dinamicx/DXPreRenderWorkTask;

    iget-object v5, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/taobao/android/dinamicx/DXPreRenderWorkTask;-><init>(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;Lcom/taobao/android/dinamicx/DXTemplateManager;Lcom/taobao/android/dinamicx/DXPipelineCacheManager;Lcom/taobao/android/dinamicx/DXEngineContext;Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;)V

    .line 144
    new-instance p1, Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v7}, Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;-><init>(ILjava/lang/Runnable;)V

    invoke-static {p1}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runForPreRender(Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;)V

    return-void
.end method

.method public prefetchTemplate(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;Lcom/taobao/android/dinamicx/DXTemplateManager;Lcom/taobao/android/dinamicx/DXPipelineCacheManager;Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;)V
    .locals 8

    .line 104
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->prefetchTasks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->prefetchTasks:Ljava/util/HashMap;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->prefetchTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getCacheIdentify()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    .line 116
    :cond_1
    new-instance v0, Lcom/taobao/android/dinamicx/DXPrefetchTask;

    iget-object v6, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/taobao/android/dinamicx/DXPrefetchTask;-><init>(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;Lcom/taobao/android/dinamicx/DXTemplateManager;Lcom/taobao/android/dinamicx/DXPipelineCacheManager;Lcom/taobao/android/dinamicx/DXEngineContext;Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;)V

    .line 118
    new-instance p2, Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;

    const/4 p3, 0x2

    invoke-direct {p2, p3, v0}, Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;-><init>(ILjava/lang/Runnable;)V

    invoke-static {p2}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runForPrefetch(Lcom/taobao/android/dinamicx/template/download/DXPriorityRunnable;)V

    .line 119
    iget-object p2, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->prefetchTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getCacheIdentify()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 334
    iget v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->addPrefetchTaskCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->schedulePrefetchCacheMonitor()V

    .line 339
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->scheduleClearExecutorTasks()V

    .line 340
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->scheduleClearTasks()V

    return-void
.end method

.method public schedulePreRenderTemplate(Ljava/lang/Runnable;)V
    .locals 2

    .line 130
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 131
    iput v1, v0, Landroid/os/Message;->what:I

    .line 132
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->handler:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public schedulePrefetchTemplate(Ljava/lang/Runnable;)V
    .locals 2

    .line 90
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 91
    iput v1, v0, Landroid/os/Message;->what:I

    .line 92
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->handler:Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
