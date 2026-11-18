.class public Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;
.super Ljava/lang/Object;
.source "EventHandlerWrapper.java"

# interfaces
.implements Lcom/alipay/android/app/template/EventHandler;


# instance fields
.field handler:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;->handler:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;

    return-void
.end method


# virtual methods
.method public onAsyncEvent(Lcom/alipay/android/app/template/EventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;->handler:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;

    .line 32
    invoke-virtual {p1}, Lcom/alipay/android/app/template/EventHandler$EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    move-result-object p1

    .line 31
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;->onAsyncEvent(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z

    move-result p1

    return p1
.end method

.method public onEvent(Lcom/alipay/android/app/template/EventHandler$EventType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 19
    :try_start_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;->handler:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;

    .line 24
    invoke-virtual {p1}, Lcom/alipay/android/app/template/EventHandler$EventType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    move-result-object p1

    .line 23
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;->onEvent(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;->handler:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;->onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
