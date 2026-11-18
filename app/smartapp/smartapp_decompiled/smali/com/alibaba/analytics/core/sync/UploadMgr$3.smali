.class Lcom/alibaba/analytics/core/sync/UploadMgr$3;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lcom/alibaba/analytics/core/store/ILogChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/core/sync/UploadMgr;->startBatchMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/sync/UploadMgr;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$3;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(JJ)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInsert(JJ)V
    .locals 3

    const/4 v0, 0x4

    .line 223
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "count"

    aput-object v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    const-string p2, "dbSize"

    aput-object p2, v0, p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "BatchMode"

    invoke-static {p1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$3;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {p1}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$400(Lcom/alibaba/analytics/core/sync/UploadMgr;)J

    move-result-wide p1

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    sget-object p1, Lcom/alibaba/analytics/core/sync/UploadMode;->BATCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object p2, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$3;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {p2}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$100(Lcom/alibaba/analytics/core/sync/UploadMgr;)Lcom/alibaba/analytics/core/sync/UploadMode;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 226
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$3;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {p2}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$000(Lcom/alibaba/analytics/core/sync/UploadMgr;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->setAllowedNetworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 227
    iget-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$3;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$3;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {p3}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$200(Lcom/alibaba/analytics/core/sync/UploadMgr;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p3

    iget-object p4, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$3;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {p4}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$300(Lcom/alibaba/analytics/core/sync/UploadMgr;)Lcom/alibaba/analytics/core/sync/UploadTask;

    move-result-object p4

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p3, p4, v0, v1}, Lcom/alibaba/analytics/utils/TaskExecutor;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$202(Lcom/alibaba/analytics/core/sync/UploadMgr;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method
