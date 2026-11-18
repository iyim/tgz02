.class public Lcom/taobao/android/dinamicx/DXEngineContext;
.super Ljava/lang/Object;
.source "DXEngineContext.java"


# instance fields
.field protected config:Lcom/taobao/android/dinamicx/DXEngineConfig;

.field private engineWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/DinamicXEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXEngineContext;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    return-void
.end method


# virtual methods
.method public fetchRemoteTimeSync()J
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXEngineContext;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXEngineContext;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getDxRemoteTimeInterface()Lcom/taobao/android/dinamicx/DXRemoteTimeInterface;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 56
    :cond_1
    invoke-interface {v0}, Lcom/taobao/android/dinamicx/DXRemoteTimeInterface;->fetchRemoteTimeSync()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConfig()Lcom/taobao/android/dinamicx/DXEngineConfig;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXEngineContext;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    return-object v0
.end method

.method public getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXEngineContext;->engineWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/DinamicXEngine;

    return-object v0
.end method

.method public postMessage(Lcom/taobao/android/dinamicx/DXRootView;Ljava/lang/Object;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXEngineContext;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/DXEngineContext;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngine;->postMessage(Lcom/taobao/android/dinamicx/DXRootView;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setEngine(Lcom/taobao/android/dinamicx/DinamicXEngine;)V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXEngineContext;->engineWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
