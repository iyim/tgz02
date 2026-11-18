.class public Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;
.super Ljava/lang/Object;
.source "AlarmInfo.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;,
        Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;,
        Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;
    }
.end annotation


# static fields
.field public static final HOURS_CATEGORY:Ljava/lang/String; = "\u6574\u70b9\u62a5\u65f6"


# instance fields
.field private alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

.field private async:I

.field private bizType:Ljava/lang/String;

.field private cron:Ljava/lang/String;

.field private dbId:Ljava/lang/Integer;

.field private delayTime:I

.field private enable:I

.field private endTime:Ljava/lang/Long;

.field private ignoreDefault:I

.field private isDismissByOther:Z

.field private isWaitingOther:Z

.field private memoId:Ljava/lang/String;

.field private needFeedback:I

.field private originActions:Ljava/lang/String;

.field private originAlarmItem:Ljava/lang/String;

.field private originTrigger:Ljava/lang/String;

.field private repeat:Ljava/lang/Integer;

.field private startTime:Ljava/lang/Long;

.field private time:Ljava/util/Date;

.field private ttsUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private volume:Ljava/lang/Integer;

.field private volumeGradual:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->async:I

    const/4 v1, 0x1

    .line 41
    iput v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->enable:I

    .line 42
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ignoreDefault:I

    const-string v1, "alarm"

    .line 43
    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->bizType:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->needFeedback:I

    const/4 v1, -0x1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->dbId:Ljava/lang/Integer;

    .line 56
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->isWaitingOther:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const-string v0, "actions"

    const-string v1, "Alarm"

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 40
    iput v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->async:I

    const/4 v3, 0x1

    .line 41
    iput v3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->enable:I

    .line 42
    iput v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ignoreDefault:I

    const-string v3, "alarm"

    .line 43
    iput-object v3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->bizType:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->needFeedback:I

    const/4 v3, -0x1

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->dbId:Ljava/lang/Integer;

    .line 56
    iput-boolean v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->isWaitingOther:Z

    .line 61
    iput v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->delayTime:I

    .line 63
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->parseCron(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->cron:Ljava/lang/String;

    const-string v4, "url"

    .line 65
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->url:Ljava/lang/String;

    const-string v4, "ttsUrl"

    .line 66
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ttsUrl:Ljava/lang/String;

    const-string v4, "startTime"

    .line 67
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->startTime:Ljava/lang/Long;

    const-string v4, "endTime"

    .line 68
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->endTime:Ljava/lang/Long;

    const-string v4, "id"

    .line 69
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->memoId:Ljava/lang/String;

    const-string v4, "volume"

    .line 70
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->volume:Ljava/lang/Integer;

    const-string v4, "repeat"

    .line 71
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->repeat:Ljava/lang/Integer;

    const-string v4, "alarmItem"

    .line 72
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originAlarmItem:Ljava/lang/String;

    .line 73
    new-instance v4, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originAlarmItem:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alarmItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v3, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originActions:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 79
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 80
    new-instance v4, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;-><init>(Lorg/json/JSONObject;)V

    .line 81
    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->isTts()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ttsUrl:Ljava/lang/String;

    .line 84
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->isMusic()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    invoke-virtual {v4}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->url:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse AlarmInfo.actions err, jsonStr:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "trigger"

    .line 92
    invoke-static {v3, p1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originTrigger:Ljava/lang/String;

    .line 93
    new-instance p1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originTrigger:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;-><init>(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->access$000(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ignoreDefault:I

    .line 95
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->access$100(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->bizType:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->access$200(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->enable:I

    .line 97
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->access$300(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->async:I

    .line 98
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->access$400(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->needFeedback:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Parse alarm data error"

    .line 100
    invoke-static {v1, v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->async:I

    const/4 v1, 0x1

    .line 41
    iput v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->enable:I

    .line 42
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ignoreDefault:I

    const-string v1, "alarm"

    .line 43
    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->bizType:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->needFeedback:I

    const/4 v1, -0x1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->dbId:Ljava/lang/Integer;

    .line 56
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->isWaitingOther:Z

    .line 125
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->cron:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->url:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ttsUrl:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->memoId:Ljava/lang/String;

    .line 129
    iput-object p5, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->time:Ljava/util/Date;

    .line 130
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->dbId:Ljava/lang/Integer;

    .line 131
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->repeat:Ljava/lang/Integer;

    .line 132
    iput-object p8, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originTrigger:Ljava/lang/String;

    .line 133
    new-instance p1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;

    invoke-direct {p1, p0, p8}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;-><init>(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;Ljava/lang/String;)V

    .line 134
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->access$000(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ignoreDefault:I

    .line 135
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->access$100(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->bizType:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->access$200(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->enable:I

    .line 137
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->access$300(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->async:I

    .line 138
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->access$400(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->needFeedback:I

    .line 139
    iput-object p9, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originActions:Ljava/lang/String;

    .line 140
    iput-object p10, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originAlarmItem:Ljava/lang/String;

    .line 141
    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->volume:Ljava/lang/Integer;

    .line 142
    new-instance p1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originAlarmItem:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    return-void
.end method

.method private parseCron(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    const-string v0, "Alarm"

    const-string v1, ""

    :try_start_0
    const-string v2, "cronAsJavaFormat"

    .line 107
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 109
    nop

    nop

    move-object v1, v2

    goto :goto_1

    .line 110
    :cond_0
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 111
    nop

    nop

    const/4 v3, 0x0

    .line 112
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse cronAsJavaFormat err, json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse cron:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public delay()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x5

    .line 226
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->delay(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public delay(I)Ljava/util/Date;
    .locals 5

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " delay mins:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alarm"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->delayTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->delayTime:I

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->time:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->time:Ljava/util/Date;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 383
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->memoId:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->memoId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAlarmCategory()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    if-eqz v0, :cond_0

    .line 311
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$600(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAlarmHour()Ljava/lang/String;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->cron:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->cron:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 236
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlarmMin()Ljava/lang/String;
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->cron:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->cron:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 244
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 3

    const-string v0, "Alarm"

    const-string v1, "getAlarmName() called"

    .line 331
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 335
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$600(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 336
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$800(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$700(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getWeatherOneDay()Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getTemperature()Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 349
    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 351
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$800(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getAlarmSubcategory()I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    if-eqz v0, :cond_0

    .line 304
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$500(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAsync()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->async:I

    return v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getCron()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->cron:Ljava/lang/String;

    return-object v0
.end method

.method public getDbId()Ljava/lang/Integer;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->dbId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDelayTime()I
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDelayTime delayTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->delayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alarm"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->delayTime:I

    return v0
.end method

.method public getEnable()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->enable:I

    return v0
.end method

.method public getEndTime()Ljava/lang/Long;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->endTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->memoId:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoreDefault()Z
    .locals 2

    .line 197
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ignoreDefault:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNeedFeedback()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->needFeedback:I

    return v0
.end method

.method public getOriginActions()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originActions:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginAlarmItem()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originAlarmItem:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginTrigger()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originTrigger:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeat()Ljava/lang/Integer;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->repeat:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    .line 286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->startTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getTtsUrl()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ttsUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getTTSURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ttsUrl:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ttsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVisualAlarmType()Ljava/lang/String;
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVisualAlarmType alarmItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alarm"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    if-eqz v0, :cond_1

    .line 320
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$600(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$700(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$700(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getVolume()Ljava/lang/Integer;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->volume:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeGradual()Ljava/lang/Boolean;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->volumeGradual:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->memoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDismissByOther()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->isDismissByOther:Z

    return v0
.end method

.method public isHoursReport()Z
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$700(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->alarmItem:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;

    .line 480
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->access$700(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6574\u70b9\u62a5\u65f6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWaitingOther()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->isWaitingOther:Z

    return v0
.end method

.method public preSetRtc(J)Ljava/util/Date;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " preSetRtc preTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alarm"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->time:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 167
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->time:Ljava/util/Date;

    return-object p1
.end method

.method public setDismissByOther(Z)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->isDismissByOther:Z

    return-void
.end method

.method public setTtsUrl(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ttsUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmInfo setUrl url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alarm"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 291
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->volume:Ljava/lang/Integer;

    return-void
.end method

.method public setWaitingOther(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->isWaitingOther:Z

    return-void
.end method

.method public testSchedule()V
    .locals 5

    const-string v0, "Alarm"

    const-string v1, " testSchedule"

    .line 171
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->time:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x1017df80

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmInfo{cron=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->cron:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ttsUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ttsUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", memoId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->memoId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->time:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", endTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->endTime:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", volume="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->volume:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", volumeGradual="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->volumeGradual:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", repeat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->repeat:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", ignoreDefault="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->ignoreDefault:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bizType=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->enable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", async="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->async:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->dbId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getRepeat()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->delayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDismissByOther="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->isDismissByOther:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWaitingOther="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->isWaitingOther:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", originTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originTrigger:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originActions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originAlarmItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->originAlarmItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
