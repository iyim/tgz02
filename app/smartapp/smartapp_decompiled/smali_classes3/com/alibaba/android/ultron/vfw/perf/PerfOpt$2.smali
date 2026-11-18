.class Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$2;
.super Ljava/lang/Object;
.source "PerfOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->purchaseOpt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$2;->this$0:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$2;->this$0:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->access$100(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 128
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
