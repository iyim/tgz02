.class Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;
.super Ljava/lang/Object;
.source "UltronJSIEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->callMethod(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

.field final synthetic val$args:Ljava/util/List;

.field final synthetic val$jsCallBack:Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;

.field final synthetic val$method:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    iput-object p2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;->val$args:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;->val$jsCallBack:Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 489
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "callMethod\uff0cmJSContext is null\uff01"

    .line 490
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "UltronJSIEngine"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "jsCallMethod"

    .line 493
    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->beginSection(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;->val$method:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;->val$args:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;->val$jsCallBack:Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1600(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V

    .line 495
    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->endSection(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1500(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V

    return-void
.end method
