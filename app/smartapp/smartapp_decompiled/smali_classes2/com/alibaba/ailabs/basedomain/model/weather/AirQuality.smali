.class public Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;
.super Ljava/lang/Object;
.source "AirQuality.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "WeatherData"


# instance fields
.field private airQualityDesc:Ljava/lang/String;

.field private aqi:Ljava/lang/String;

.field private co:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private levelDesc:Ljava/lang/String;

.field private mOriginData:Ljava/lang/String;

.field private no2:Ljava/lang/String;

.field private o3:Ljava/lang/String;

.field private pm10:Ljava/lang/String;

.field private pm25:Ljava/lang/String;

.field private so2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAirQualityDesc()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->airQualityDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    const-string v1, "airQualityDesc"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->airQualityDesc:Ljava/lang/String;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->airQualityDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getAqi()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->aqi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    const-string v1, "aqi"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->aqi:Ljava/lang/String;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->aqi:Ljava/lang/String;

    return-object v0
.end method

.method public getCo()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->co:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    const-string v1, "co"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->co:Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->co:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->level:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    const-string v1, "level"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->level:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelDesc()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->levelDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    const-string v1, "levelDesc"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->levelDesc:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->levelDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getNo2()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->no2:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    const-string v1, "no2"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->no2:Ljava/lang/String;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->no2:Ljava/lang/String;

    return-object v0
.end method

.method public getO3()Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->o3:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    const-string v1, "o3"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->o3:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->o3:Ljava/lang/String;

    return-object v0
.end method

.method public getPm10()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->pm10:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    const-string v1, "pm10"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->pm10:Ljava/lang/String;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->pm10:Ljava/lang/String;

    return-object v0
.end method

.method public getPm25()Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->pm25:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    const-string v1, "pm25"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->pm25:Ljava/lang/String;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->pm25:Ljava/lang/String;

    return-object v0
.end method

.method public getSo2()Ljava/lang/String;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->so2:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->mOriginData:Ljava/lang/String;

    const-string v1, "so2"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->so2:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->so2:Ljava/lang/String;

    return-object v0
.end method
