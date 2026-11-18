.class public Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;
.super Ljava/lang/Object;
.source "WeatherOneDay.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "WeatherData"


# instance fields
.field private airQuality:Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;

.field private area:Lcom/alibaba/ailabs/basedomain/model/weather/Area;

.field private dateTime:Ljava/lang/Long;

.field private mIndexMapBean:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;

.field private originData:Ljava/lang/String;

.field private temperature:Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

.field private weather:Lcom/alibaba/ailabs/basedomain/model/weather/Weather;

.field private wind:Lcom/alibaba/ailabs/basedomain/model/weather/Wind;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->originData:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherOneDay originData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WeatherData"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAirQuality()Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->airQuality:Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->originData:Ljava/lang/String;

    const-string v1, "airQuality"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->airQuality:Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->airQuality:Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;

    return-object v0
.end method

.method public getArea()Lcom/alibaba/ailabs/basedomain/model/weather/Area;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->area:Lcom/alibaba/ailabs/basedomain/model/weather/Area;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->originData:Ljava/lang/String;

    const-string v1, "area"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/weather/Area;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Area;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->area:Lcom/alibaba/ailabs/basedomain/model/weather/Area;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->area:Lcom/alibaba/ailabs/basedomain/model/weather/Area;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/Long;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->dateTime:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->originData:Ljava/lang/String;

    const-string v1, "dateTime"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->dateTime:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->dateTime:Ljava/lang/Long;

    .line 108
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->dateTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getIndexMapBean()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$ZWXINDEXBean;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->originData:Ljava/lang/String;

    const-string v1, "indexMap"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->mIndexMapBean:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->mIndexMapBean:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;->getZWX_INDEX()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$ZWXINDEXBean;

    move-result-object v0

    return-object v0
.end method

.method public getTemperature()Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->temperature:Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->originData:Ljava/lang/String;

    const-string v1, "temperature"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->temperature:Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->temperature:Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    return-object v0
.end method

.method public getWeather()Lcom/alibaba/ailabs/basedomain/model/weather/Weather;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->weather:Lcom/alibaba/ailabs/basedomain/model/weather/Weather;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->originData:Ljava/lang/String;

    const-string v1, "weather"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->weather:Lcom/alibaba/ailabs/basedomain/model/weather/Weather;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->weather:Lcom/alibaba/ailabs/basedomain/model/weather/Weather;

    return-object v0
.end method

.method public getWind()Lcom/alibaba/ailabs/basedomain/model/weather/Wind;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->wind:Lcom/alibaba/ailabs/basedomain/model/weather/Wind;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->originData:Ljava/lang/String;

    const-string v1, "wind"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->wind:Lcom/alibaba/ailabs/basedomain/model/weather/Wind;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->wind:Lcom/alibaba/ailabs/basedomain/model/weather/Wind;

    return-object v0
.end method
