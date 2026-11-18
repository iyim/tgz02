.class Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$3;
.super Ljava/lang/Object;
.source "PerfOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->asyncCreateDinamicView(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

.field final synthetic val$template:Lcom/taobao/android/ultron/common/model/DynamicTemplate;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$3;->this$0:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$3;->val$template:Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, 0xa

    .line 323
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$3;->this$0:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$3;->val$template:Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->access$300(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;Lcom/taobao/android/ultron/common/model/DynamicTemplate;)V

    .line 325
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 327
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "PerfOpt.Tmq"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
