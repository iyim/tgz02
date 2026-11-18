.class public Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVBroadcastChannel.java"


# static fields
.field private static final CHANNEL_INSTANCE_ID:Ljava/lang/String; = "instanceId"

.field private static final CHANNEL_KEY:Ljava/lang/String; = "name"

.field private static final CHANNEL_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"


# instance fields
.field private messageTokenChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weaver/broadcast/MessageChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    return-void
.end method

.method private onMessage(Lcom/alibaba/fastjson/JSONObject;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4

    .line 90
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "instanceId"

    .line 93
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "message"

    const-string v2, "-1"

    const-string/jumbo v3, "result"

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 96
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 97
    invoke-virtual {p1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel token empty error"

    .line 98
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weaver/broadcast/MessageChannel;

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 106
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 107
    invoke-virtual {p1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel token not exist"

    .line 108
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 113
    :cond_4
    new-instance v1, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weaver/broadcast/MessageChannel;->setCallback(Lcom/taobao/weaver/broadcast/MessageCallback;)V

    return-void
.end method


# virtual methods
.method public closeChannel(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 157
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "instanceId"

    .line 161
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weaver/broadcast/MessageChannel;

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/taobao/weaver/broadcast/MessageChannel;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public createChannel(Lcom/alibaba/fastjson/JSONObject;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5

    if-eqz p2, :cond_5

    .line 49
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const-string v0, "name"

    .line 51
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "instanceId"

    .line 52
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    :cond_1
    const-string v0, "name"

    .line 63
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "instanceId"

    .line 64
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 67
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string/jumbo v0, "result"

    const-string v1, "-1"

    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "channel error token has been used"

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 72
    :cond_2
    monitor-exit p0

    return-void

    .line 75
    :cond_3
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v2

    invoke-interface {v2}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 76
    new-instance v3, Lcom/taobao/weaver/broadcast/MessageChannel;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Lcom/taobao/weaver/broadcast/MessageChannel;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/weaver/broadcast/MessageCallback;)V

    .line 77
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 79
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string/jumbo v1, "result"

    const-string v2, "0"

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    const-string v2, "channel create success"

    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 84
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->onMessage(Lcom/alibaba/fastjson/JSONObject;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 53
    :cond_5
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string/jumbo v0, "result"

    const-string v1, "-1"

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    const-string v1, "channel args error"

    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    .line 30
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    const-string v0, "createChannel"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->createChannel(Lcom/alibaba/fastjson/JSONObject;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    :cond_0
    const-string v0, "closeChannel"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->closeChannel(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    :cond_1
    const-string v0, "postMessage"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p0, p2, p3}, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->postMessage(Lcom/alibaba/fastjson/JSONObject;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 3

    .line 171
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 172
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weaver/broadcast/MessageChannel;

    invoke-virtual {v1}, Lcom/taobao/weaver/broadcast/MessageChannel;->close()V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 180
    :cond_2
    invoke-super {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->onDestroy()V

    return-void
.end method

.method public postMessage(Lcom/alibaba/fastjson/JSONObject;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5

    .line 124
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "instanceId"

    .line 128
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "-1"

    const-string/jumbo v3, "result"

    const-string v4, "message"

    if-nez v1, :cond_3

    .line 129
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 141
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->messageTokenChannels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weaver/broadcast/MessageChannel;

    if-nez v0, :cond_2

    .line 143
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 144
    invoke-virtual {p1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel token not exist"

    .line 145
    invoke-virtual {p1, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_2
    invoke-virtual {v0, p1}, Lcom/taobao/weaver/broadcast/MessageChannel;->postMessage(Ljava/lang/Object;)V

    .line 150
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "0"

    .line 151
    invoke-virtual {p1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "post message success"

    .line 152
    invoke-virtual {p1, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 131
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 132
    invoke-virtual {p1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "post message args error"

    .line 133
    invoke-virtual {p1, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
