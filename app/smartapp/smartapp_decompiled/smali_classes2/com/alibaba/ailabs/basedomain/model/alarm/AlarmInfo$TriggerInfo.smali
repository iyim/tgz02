.class Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;
.super Ljava/lang/Object;
.source "AlarmInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TriggerInfo"
.end annotation


# instance fields
.field private async:I

.field private bizType:Ljava/lang/String;

.field private enable:I

.field private ignoreDefault:I

.field private needFeedback:I

.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;Ljava/lang/String;)V
    .locals 2

    .line 464
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->this$0:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 458
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->async:I

    const-string v0, "alarm"

    .line 459
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->bizType:Ljava/lang/String;

    .line 460
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->ignoreDefault:I

    const/4 v0, 0x1

    .line 461
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->enable:I

    .line 462
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->needFeedback:I

    .line 466
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "async"

    .line 467
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->async:I

    const-string v0, "bizType"

    .line 468
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->bizType:Ljava/lang/String;

    const-string v0, "enable"

    .line 469
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->enable:I

    const-string v0, "ignoreDefault"

    .line 470
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->ignoreDefault:I

    const-string v0, "needFeedback"

    .line 471
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->needFeedback:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse json err, origin Json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Alarm"

    invoke-static {v0, p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I
    .locals 0

    .line 457
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->ignoreDefault:I

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)Ljava/lang/String;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->bizType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I
    .locals 0

    .line 457
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->enable:I

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I
    .locals 0

    .line 457
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->async:I

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;)I
    .locals 0

    .line 457
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$TriggerInfo;->needFeedback:I

    return p0
.end method
