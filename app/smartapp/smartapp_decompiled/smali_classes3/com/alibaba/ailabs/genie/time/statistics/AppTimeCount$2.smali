.class Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;
.super Ljava/lang/Object;
.source "AppTimeCount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertEvent(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

.field final synthetic val$appPackage:Ljava/lang/String;

.field final synthetic val$eventType:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;ILjava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    iput p2, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->val$eventType:I

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->val$appPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 182
    new-instance v0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;-><init>()V

    .line 183
    iget v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->val$eventType:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setEventType(I)V

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 185
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setTimeStamp(Ljava/lang/Long;)V

    .line 186
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$300(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setTime(Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->val$appPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setPackageName(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->isChildModel()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->setChildModel(Ljava/lang/Boolean;)V

    .line 189
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getDaoSession()Lcom/alibaba/ailabs/genie/time/db/DaoSession;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->insert(Ljava/lang/Object;)J

    .line 192
    iget v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->val$eventType:I

    const-string v3, "TEST_TIME_LOG"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6253\u5f00:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->val$appPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MOVE_TO_FOREGROUND"

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9000\u51fa:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->val$appPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MOVE_TO_BACKGROUND"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 199
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertRecord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->val$appPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",time:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount$2;->this$0:Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->access$300(Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppletCount"

    .line 200
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "insertEvent"

    .line 201
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
