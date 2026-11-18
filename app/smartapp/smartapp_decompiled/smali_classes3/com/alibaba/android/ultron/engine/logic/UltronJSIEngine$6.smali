.class Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;
.super Ljava/lang/Object;
.source "UltronJSIEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->executeJS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$sourceContect:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    iput-object p2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->val$sourceContect:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "executeJS\uff0cmJSContext is null\uff01"

    .line 348
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "UltronJSIEngine"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSContext;->getJSEngine()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/JSEngine;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    const-string v1, "JSEngine disposed"

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V

    return-void

    .line 357
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSContext;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    const-string v1, "JSContext disposed"

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_2
    new-instance v1, Lcom/alibaba/jsi/standard/js/EngineScope;

    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSContext;->getJSEngine()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/jsi/standard/js/EngineScope;-><init>(Lcom/alibaba/jsi/standard/JSEngine;)V

    .line 365
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->val$sourceContect:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/jsi/standard/JSContext;->executeJS(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object v2

    .line 366
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSContext;->hasException()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 367
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSContext;->getException()Lcom/alibaba/jsi/standard/js/JSException;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "name: "

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lcom/alibaba/jsi/standard/js/JSException;->getName(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; message: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lcom/alibaba/jsi/standard/js/JSException;->getMessage(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; stack: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lcom/alibaba/jsi/standard/js/JSException;->getStack(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {v3}, Lcom/alibaba/jsi/standard/js/JSException;->delete()V

    .line 376
    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v3, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1200(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    const-string v3, "get exception failed"

    invoke-static {v0, v3}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 381
    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-virtual {v2, v0}, Lcom/alibaba/jsi/standard/js/JSValue;->toString(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1300(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Lcom/alibaba/jsi/standard/JSContext;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    const-string v3, "unexpected error"

    invoke-static {v0, v3}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_6

    .line 386
    invoke-virtual {v2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/js/EngineScope;->exit()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 389
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeJS exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 391
    :goto_3
    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/js/EngineScope;->exit()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
