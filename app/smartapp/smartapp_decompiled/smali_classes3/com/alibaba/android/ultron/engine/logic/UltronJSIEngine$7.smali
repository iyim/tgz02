.class Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$7;
.super Ljava/lang/Object;
.source "UltronJSIEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->initLogicEngine(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

.field final synthetic val$jsFileMd5:Ljava/lang/String;

.field final synthetic val$jsFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$7;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    iput-object p2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$7;->val$jsFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$7;->val$jsFileMd5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "jsFileInit"

    .line 418
    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->beginSection(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$7;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$7;->val$jsFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$7;->val$jsFileMd5:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1400(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->endSection(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$7;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->access$1500(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V

    return-void
.end method
