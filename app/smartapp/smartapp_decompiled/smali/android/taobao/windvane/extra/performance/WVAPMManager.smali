.class public Landroid/taobao/windvane/extra/performance/WVAPMManager;
.super Ljava/lang/Object;
.source "WVAPMManager.java"


# static fields
.field private static index:I


# instance fields
.field private apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    :try_start_0
    invoke-static {}, Lcom/taobao/monitor/performance/APMAdapterFactoryProxy;->instance()Lcom/taobao/monitor/performance/APMAdapterFactoryProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/monitor/performance/APMAdapterFactoryProxy;->createApmAdapterByType(Ljava/lang/String;)Lcom/taobao/monitor/performance/IWXApmAdapter;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addBiz(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addBizAbTest(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addBizStage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/monitor/performance/IWXApmAdapter;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addStatistic(Ljava/lang/String;D)V
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/monitor/performance/IWXApmAdapter;->addStatistic(Ljava/lang/String;D)V

    return-void
.end method

.method public onEnd()V
    .locals 1

    .line 33
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-interface {v0}, Lcom/taobao/monitor/performance/IWXApmAdapter;->onEnd()V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStage(Ljava/lang/String;J)V
    .locals 1

    .line 44
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/monitor/performance/IWXApmAdapter;->onStage(Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WV_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/taobao/windvane/extra/performance/WVAPMManager;->index:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/taobao/windvane/extra/performance/WVAPMManager;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/monitor/performance/IWXApmAdapter;->onStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVAPMManager;->apmAdapter:Lcom/taobao/monitor/performance/IWXApmAdapter;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-interface {v0}, Lcom/taobao/monitor/performance/IWXApmAdapter;->onStop()V

    return-void
.end method
