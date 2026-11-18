.class public Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "WeatherData"


# instance fields
.field private current:Ljava/lang/String;

.field private currentDesc:Ljava/lang/String;

.field private feelLike:Ljava/lang/String;

.field private high:Ljava/lang/String;

.field private highDesc:Ljava/lang/String;

.field private low:Ljava/lang/String;

.field private lowDesc:Ljava/lang/String;

.field private originData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->originData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrent()Ljava/lang/String;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->current:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->originData:Ljava/lang/String;

    const-string v1, "current"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->current:Ljava/lang/String;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->current:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDesc()Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->currentDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->originData:Ljava/lang/String;

    const-string v1, "currentDesc"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->currentDesc:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->currentDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getWeatherOneDay()Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getTemperature()Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->getLow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u00b0C\uff5e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u00b0C"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public getFeelLike()Ljava/lang/String;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->feelLike:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->originData:Ljava/lang/String;

    const-string v1, "feelLike"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->feelLike:Ljava/lang/String;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->feelLike:Ljava/lang/String;

    return-object v0
.end method

.method public getHigh()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->high:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->originData:Ljava/lang/String;

    const-string v1, "high"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->high:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->high:Ljava/lang/String;

    return-object v0
.end method

.method public getHighDesc()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->highDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->originData:Ljava/lang/String;

    const-string v1, "highDesc"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->highDesc:Ljava/lang/String;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->highDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getLow()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->low:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->originData:Ljava/lang/String;

    const-string v1, "low"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->low:Ljava/lang/String;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->low:Ljava/lang/String;

    return-object v0
.end method

.method public getLowDesc()Ljava/lang/String;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->lowDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->originData:Ljava/lang/String;

    const-string v1, "lowDesc"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->lowDesc:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->lowDesc:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temperature{current=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->current:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", currentDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->currentDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", feelLike=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->feelLike:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", high=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->high:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", highDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->highDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", low=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->low:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lowDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->lowDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
