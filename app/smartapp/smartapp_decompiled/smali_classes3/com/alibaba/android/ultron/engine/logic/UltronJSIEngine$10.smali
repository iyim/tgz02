.class Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$10;
.super Ljava/lang/Object;
.source "UltronJSIEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->notifyException(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

.field final synthetic val$ex:Lcom/alibaba/android/ultron/vfw/instance/UltronError;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$10;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    iput-object p2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$10;->val$ex:Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$10;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$2100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$10;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$2100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$10;->val$ex:Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    invoke-interface {v0, v1}, Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;->onException(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    :cond_0
    return-void
.end method
