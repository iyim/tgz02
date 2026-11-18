.class public Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;
.super Ljava/lang/Object;
.source "AppUsedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field appEndTime:J

.field appStartTime:J

.field childModel:Ljava/lang/String;

.field extend:Lcom/alibaba/fastjson/JSONObject;

.field identify:Ljava/lang/String;

.field mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field type:Ljava/lang/String;

.field usedTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, -0x1

    .line 77
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->appStartTime:J

    .line 78
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->appEndTime:J

    return-void
.end method


# virtual methods
.method public calculateTime()V
    .locals 7

    .line 149
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->appStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->appEndTime:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    .line 154
    div-long/2addr v4, v0

    iput-wide v4, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->usedTime:J

    .line 156
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->usedTime:J

    const-wide/32 v4, 0x15180

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    .line 157
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->usedTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppEndTime()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->appEndTime:J

    return-wide v0
.end method

.method public getAppStartTime()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->appStartTime:J

    return-wide v0
.end method

.method public getChildModel()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->childModel:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->extend:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getIdentify()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->identify:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedTime()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->usedTime:J

    return-wide v0
.end method

.method public setAppEndTime(J)V
    .locals 0

    .line 125
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->appEndTime:J

    return-void
.end method

.method public setAppStartTime(J)V
    .locals 0

    .line 117
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->appStartTime:J

    return-void
.end method

.method public setChildModel(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->childModel:Ljava/lang/String;

    return-void
.end method

.method public setExtend(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->extend:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setIdentify(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->identify:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/time/utils/DataUtils;->isDigital(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "applets"

    .line 105
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "app"

    .line 107
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setType(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setUsedTime(J)V
    .locals 3

    const-wide/32 v0, 0x15180

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 p1, 0x0

    .line 142
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->usedTime:J

    goto :goto_0

    .line 144
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->usedTime:J

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", identify=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->identify:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", childModel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->childModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", usedTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->usedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", extend=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->extend:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
