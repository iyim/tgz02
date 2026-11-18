.class Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$2;
.super Ljava/lang/Object;
.source "UltronJSIEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->initializeJSI()V
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

    .line 128
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$2;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$2;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$400(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "UltronJSIEngine"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v0, "checkJSEngineSoExist: true"

    .line 134
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$2;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$500(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 138
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkJSEngineSoExist false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$2;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v1, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$300(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$2;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$300(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
