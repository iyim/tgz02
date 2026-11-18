.class public Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;
.super Ljava/lang/Object;
.source "DXBindingXScrollHandler.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;


# instance fields
.field listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->listenerMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addScrollListenerWith(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->setListener(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;)V

    return-void
.end method

.method public getListener(Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->listenerMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public postScrollEndMessage(Ljava/lang/String;IILcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->getListener(Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;

    move-result-object p1

    if-eqz p1, :cond_0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 71
    invoke-interface {p1, p2, p3}, Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;->onScrollEnd(FF)V

    :cond_0
    return-void
.end method

.method public postScrollStartMessage(Ljava/lang/String;IILcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->getListener(Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-interface {p1}, Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;->onScrollStart()V

    :cond_0
    return-void
.end method

.method public postScrollingMessage(Ljava/lang/String;IILcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->getListener(Ljava/lang/String;)Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;

    move-result-object p1

    if-eqz p1, :cond_0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 57
    invoke-interface {p1, p2, p3}, Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;->onScrolled(FF)V

    :cond_0
    return-void
.end method

.method public removeListener(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->listenerMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeScrollListenerWith(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->removeListener(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/PlatformManager$ScrollListener;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->listenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->listenerMap:Ljava/util/Map;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
