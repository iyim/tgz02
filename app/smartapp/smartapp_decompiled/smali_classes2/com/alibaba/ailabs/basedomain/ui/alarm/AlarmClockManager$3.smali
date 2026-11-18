.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;
.super Ljava/lang/Object;
.source "AlarmClockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->processAddAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

.field final synthetic val$syncAlarms:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->val$syncAlarms:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    .line 198
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->val$syncAlarms:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processAddAlarmContents type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->val$type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " alarmContents:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmClockManager"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 201
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 204
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 205
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->get(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v4

    .line 206
    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->val$type:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->reveiveParsedParsedAlarm(Ljava/lang/String;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processAddAlarmContents alarmDatabaseHelper index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v5}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$200(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    move-result-object v5

    .line 210
    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 212
    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v6, v5}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 214
    :cond_1
    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v5}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$200(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    move-result-object v6

    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getCron()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 215
    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getTtsUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getStartTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getEndTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v14

    .line 216
    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getVolume()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getRepeat()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getOriginTrigger()Ljava/lang/String;

    move-result-object v17

    .line 217
    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getOriginActions()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getOriginAlarmItem()Ljava/lang/String;

    move-result-object v19

    .line 214
    invoke-virtual/range {v6 .. v19}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 218
    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v5}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$200(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmByDBIdUpdateTime(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v4

    .line 219
    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v5, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$400(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 221
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAddAlarmContents end alarmContents:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAddAlarmContents : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
