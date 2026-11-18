.class Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$1;
.super Landroid/os/Handler;
.source "UltronJSIEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Landroid/os/Looper;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$1;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 101
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2711

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2712

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$1;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {p1, v1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$202(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Z)Z

    .line 113
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$1;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    const-string v0, "JSI \u521d\u59cb\u5316\u8d85\u65f6"

    invoke-static {p1, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$300(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$1;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {p1, v1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$002(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Z)Z

    .line 105
    new-instance p1, Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    const-string v0, "js \u6267\u884c\u8d85\u65f6"

    invoke-direct {p1, v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;-><init>(Ljava/lang/String;)V

    const-string v0, "F_ULTRON_ENGINE_10005_JSI"

    .line 106
    iput-object v0, p1, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$1;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    :goto_0
    return-void
.end method
