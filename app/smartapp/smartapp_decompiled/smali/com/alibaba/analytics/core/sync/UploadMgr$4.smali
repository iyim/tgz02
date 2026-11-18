.class Lcom/alibaba/analytics/core/sync/UploadMgr$4;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lcom/alibaba/analytics/core/sync/IUploadExcuted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/core/sync/UploadMgr;->startLunchMode()V
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

    .line 243
    iput-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$4;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadExcuted(J)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$4;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {v0, p1, p2}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$502(Lcom/alibaba/analytics/core/sync/UploadMgr;J)J

    .line 247
    sget-object p1, Lcom/alibaba/analytics/core/sync/UploadMode;->LAUNCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object p2, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$4;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {p2}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$100(Lcom/alibaba/analytics/core/sync/UploadMgr;)Lcom/alibaba/analytics/core/sync/UploadMode;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 248
    iget-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$4;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {p1}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$500(Lcom/alibaba/analytics/core/sync/UploadMgr;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$4;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {v0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$600(Lcom/alibaba/analytics/core/sync/UploadMgr;)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 249
    iget-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr$4;->this$0:Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-static {p1}, Lcom/alibaba/analytics/core/sync/UploadMgr;->access$200(Lcom/alibaba/analytics/core/sync/UploadMgr;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method
