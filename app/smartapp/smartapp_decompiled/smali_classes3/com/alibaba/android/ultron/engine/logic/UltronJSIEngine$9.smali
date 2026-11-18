.class Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;
.super Ljava/lang/Object;
.source "UltronJSIEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->destroy()V
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

    .line 605
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1700(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1700(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/jsi/standard/JSEngine;->removeContext(Lcom/alibaba/jsi/standard/JSContext;)V

    .line 612
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1700(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSEngine;->dispose()V

    .line 613
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1702(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Lcom/alibaba/jsi/standard/JSEngine;)Lcom/alibaba/jsi/standard/JSEngine;

    .line 615
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1800(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1800(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1802(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Landroid/os/Handler;)Landroid/os/Handler;

    .line 619
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1900(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 620
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1902(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 622
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$2000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$2000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$2002(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 628
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroy error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UltronJSIEngine"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
