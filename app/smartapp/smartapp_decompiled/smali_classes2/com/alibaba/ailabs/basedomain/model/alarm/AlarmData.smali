.class public Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;
.super Ljava/lang/Object;
.source "AlarmData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADD_ALARM_KEY:Ljava/lang/String; = "addedAlarmMemoId"

.field private static final CLOSE_ALARM_KEY:Ljava/lang/String; = "closedAlarmMemoIds"

.field private static final DELETE_ALARM_KEY:Ljava/lang/String; = "deletedAlarmMemoIds"

.field public static final TAG:Ljava/lang/String; = "Alarm"

.field private static final TYPE_CLOSE_ALARM:Ljava/lang/String; = "aligenie.alarm.screen.alarm.closeAlarm"

.field private static final TYPE_DELETE_ALARM:Ljava/lang/String; = "aligenie.alarm.screen.alarm.setAlarm"

.field private static final TYPE_SET_ALARM:Ljava/lang/String; = "aligenie.alarm.screen.alarm.setAlarm"


# instance fields
.field private addedId:Ljava/lang/String;

.field private alarmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private closedId:Ljava/lang/String;

.field private deletedId:Ljava/lang/String;

.field private pageType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "addedAlarmMemoId"

    const-string v1, "aligenie.alarm.screen.alarm.setAlarm"

    const-string v2, "Alarm"

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    .line 34
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->pageType:Ljava/lang/String;

    .line 36
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "alarmList"

    .line 37
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlarmData type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->addedId:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "deletedAlarmMemoIds"

    .line 42
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->deletedId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "aligenie.alarm.screen.alarm.closeAlarm"

    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :goto_0
    const/4 p2, 0x0

    .line 48
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 49
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    new-instance v3, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    invoke-direct {v3, v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Parse alarm data error"

    .line 53
    invoke-static {v2, p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public get(I)Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    return-object p1
.end method

.method public getAddedAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;
    .locals 8

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->addedId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->addedId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->pageType:Ljava/lang/String;

    const-string v4, "aligenie.alarm.screen.alarm.setAlarm"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 100
    :goto_0
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 101
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    .line 102
    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getMemoId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-nez v7, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getAlarmListForContext()Lorg/json/JSONObject;
    .locals 6

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v2, "screenStatus"

    const/4 v3, 0x1

    .line 66
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 67
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 68
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "index"

    .line 69
    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getIndex()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "memoId"

    .line 70
    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getMemoId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "alarmList"

    .line 73
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Alarm"

    const-string v2, "getCurrentAppContext Exception"

    .line 76
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageType()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public remove(I)Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 113
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->alarmList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
