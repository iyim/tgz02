.class public Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;
.super Ljava/lang/Object;
.source "SchemaJumpUtil.java"


# static fields
.field public static final NO_DATA_STATUS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SchemaJumpUtil: "

.field public static stageAlarmListForContext:Lorg/json/JSONObject;

.field public static stagedAddAlarmId:J

.field public static stagedSessionID:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getIntentData(Landroid/content/Intent;)J
    .locals 9

    const-string v0, "AlarmListActivity:"

    const-wide/16 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "SchemaJumpUtil: "

    const-string v0, "\u5f53\u524d\u8fc7\u6765\u7684intent \u662f\u7a7a\u7684"

    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    const-string v3, "renderData"

    .line 33
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    const-string v4, "reply"

    .line 34
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "pageType"

    .line 35
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 37
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-wide v1

    :cond_1
    const/4 v1, 0x0

    const-string v2, "sessionId"

    .line 40
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    int-to-long v6, p0

    sput-wide v6, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stagedSessionID:J

    const/4 p0, -0x1

    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v6, -0x2251f85c

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v6, :cond_4

    const v6, -0xfaedc6f

    if-eq v2, v6, :cond_3

    const v1, 0x2dd967d6

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "aligenie.alarm.screen.alarm.findAlarm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "aligenie.alarm.screen.alarm.setAlarm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "aligenie.alarm.screen.alarm.deleteAlarm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x1

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    if-eq p0, v8, :cond_6

    if-eq p0, v7, :cond_6

    goto :goto_1

    .line 45
    :cond_6
    check-cast v3, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    move-object v5, v3

    nop

    nop

    :goto_1
    if-eqz v5, :cond_7

    .line 50
    :try_start_0
    invoke-virtual {v5}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAlarmListForContext()Lorg/json/JSONObject;

    move-result-object p0

    sput-object p0, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stageAlarmListForContext:Lorg/json/JSONObject;

    .line 51
    invoke-virtual {v5}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->getAddedAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getMemoId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sput-wide v1, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stagedAddAlarmId:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "getIntentData: \u65e0\u6cd5\u83b7\u53d6\u5230alarmId"

    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#getIntentData:\n \u5f53\u524d\u9700\u8981\u9ad8\u4eae\u7684\u95f9\u949fid \u662f   "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stagedAddAlarmId:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  \u5bf9\u8bdd\u7684session\u662f  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stagedSessionID:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \u7f13\u5b58\u4e0b\u6765\u7684\u4ea4\u4e92\u8bed\u97f3 \n "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stageAlarmListForContext:Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_7
    sget-wide v0, Lcom/alibaba/genie/alarm/utils/SchemaJumpUtil;->stagedAddAlarmId:J

    return-wide v0
.end method
