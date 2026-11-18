.class public Lcom/taobao/android/dinamicx/bindingx/DXBindingXEventHandler;
.super Lcom/taobao/android/dinamicx/DXAbsEventHandler;
.source "DXBindingXEventHandler.java"


# static fields
.field public static final DX_EVENT_BINDINGX:J = 0x1430d66e2004d63bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DXAbsEventHandler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;[Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 4

    .line 50
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootView()Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 51
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string/jumbo v2, "type"

    const-string v3, "BNDX"

    .line 56
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 58
    invoke-virtual {p0, v2, p2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXEventHandler;->processArgs(Lcom/alibaba/fastjson/JSONObject;[Ljava/lang/Object;)V

    const-string/jumbo p2, "widget"

    .line 59
    invoke-virtual {v2, p2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "params"

    .line 60
    invoke-virtual {v1, p2, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 61
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/taobao/android/dinamicx/DXEngineContext;->postMessage(Lcom/taobao/android/dinamicx/DXRootView;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method processArgs(Lcom/alibaba/fastjson/JSONObject;[Ljava/lang/Object;)V
    .locals 7

    if-eqz p2, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 77
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    .line 79
    array-length v2, p2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 80
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 81
    aget-object v5, p2, v4

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 82
    aget-object v5, p2, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 83
    aget-object v4, p2, v4

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_1
    aget-object v5, p2, v4

    instance-of v5, v5, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v5, :cond_2

    .line 86
    aget-object v4, p2, v4

    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 87
    :cond_2
    aget-object v5, p2, v4

    if-eqz v5, :cond_3

    .line 88
    aget-object v4, p2, v4

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const-string/jumbo v4, "spec"

    .line 90
    invoke-virtual {p1, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 91
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "start"

    .line 92
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "action"

    if-eqz v5, :cond_4

    .line 93
    invoke-virtual {p1, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "stop"

    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    invoke-virtual {p1, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    if-ge v3, v0, :cond_8

    if-nez v1, :cond_6

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_6
    add-int/lit8 v2, v3, 0x1

    if-lt v2, v0, :cond_7

    goto :goto_2

    .line 107
    :cond_7
    aget-object v4, p2, v3

    check-cast v4, Ljava/lang/String;

    .line 108
    aget-object v2, p2, v2

    .line 109
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    const-string p2, "args"

    .line 112
    invoke-virtual {p1, p2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_3
    return-void
.end method
