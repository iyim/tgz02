.class Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$4;
.super Lcom/alibaba/jsi/standard/js/JSCallback;
.source "UltronJSIEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->addJSCallbackFunc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$4;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-direct {p0}, Lcom/alibaba/jsi/standard/js/JSCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallFunction(Lcom/alibaba/jsi/standard/js/Arguments;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 9

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$4;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$600(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$4;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Z

    move-result v0

    const-string v1, "UltronJSIEngine"

    if-eqz v0, :cond_0

    const-string v0, "jsCallback timeout, return!"

    .line 264
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 265
    invoke-super {p0, p1}, Lcom/alibaba/jsi/standard/js/JSCallback;->onCallFunction(Lcom/alibaba/jsi/standard/js/Arguments;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 269
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/alibaba/jsi/standard/js/Arguments;->get(I)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object v3

    .line 270
    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/js/Arguments;->getContext()Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/jsi/standard/js/JSValue;->toString(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {v3}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    .line 273
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    const-string v5, "method"

    .line 278
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    new-array v6, v0, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onJsCallback, method:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1, v6}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez v5, :cond_2

    return-object v4

    .line 284
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$4;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v4}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$700(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    if-eqz v4, :cond_4

    .line 286
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;

    if-eqz v4, :cond_3

    const-string v5, "methodReturn"

    .line 288
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v3, "JSFunction but logicCallBack is null"

    .line 290
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 294
    new-array v0, v0, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsCallback exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 297
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/jsi/standard/js/JSCallback;->onCallFunction(Lcom/alibaba/jsi/standard/js/Arguments;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p1

    return-object p1
.end method
