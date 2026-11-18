.class Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;
.super Ljava/lang/Object;
.source "AlarmInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlarmItem"
.end annotation


# instance fields
.field private musicCategory:Ljava/lang/String;

.field private musicId:I

.field private musicName:Ljava/lang/String;

.field private musicType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "musicCategory"

    .line 498
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicCategory:Ljava/lang/String;

    const-string v1, "musicName"

    .line 499
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicName:Ljava/lang/String;

    const-string v1, "musicId"

    .line 500
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicId:I

    const-string v1, "musicType"

    .line 501
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicType:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse AlarmItem err, origin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Alarm"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)I
    .locals 0

    .line 487
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicId:I

    return p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)I
    .locals 0

    .line 487
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicType:I

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)Ljava/lang/String;
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicCategory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;)Ljava/lang/String;
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmItem{musicCategory=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", musicName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", musicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", musicType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$AlarmItem;->musicType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
