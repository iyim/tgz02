.class Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;
.super Ljava/lang/Object;
.source "AppTimeCount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertBackgroundEvent(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;JLjava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->val$time:J

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 211
    new-instance v0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;-><init>()V

    const/4 v1, 0x2

    .line 212
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setEventType(I)V

    .line 213
    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->val$time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setTimeStamp(Ljava/lang/Long;)V

    .line 214
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$300(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->val$time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setTime(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setPackageName(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->isChildModel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setChildModel(Ljava/lang/Boolean;)V

    .line 217
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getDaoSession()Lcom/alibaba/ailabs/genie/time/db/DaoSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->insert(Ljava/lang/Object;)J

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9000\u51fa:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEST_TIME_LOG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MOVE_TO_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$300(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$3;->val$time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppletCount"

    .line 220
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "insertEvent"

    .line 221
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
