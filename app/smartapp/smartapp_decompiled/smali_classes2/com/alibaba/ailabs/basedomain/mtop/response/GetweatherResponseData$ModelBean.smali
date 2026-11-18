.class public Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;
.super Ljava/lang/Object;
.source "GetweatherResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AreaBean;,
        Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;,
        Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;,
        Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$HumidityBean;,
        Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WindBean;,
        Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$TemperatureBean;,
        Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;
    }
.end annotation


# instance fields
.field private airQuality:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;

.field private area:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AreaBean;

.field private dateTime:Ljava/lang/String;

.field private humidity:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$HumidityBean;

.field private indexMap:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;

.field private temperature:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$TemperatureBean;

.field private warnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private weather:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;

.field private wind:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WindBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAirQuality()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->airQuality:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;

    return-object v0
.end method

.method public getArea()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AreaBean;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->area:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AreaBean;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHumidity()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$HumidityBean;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->humidity:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$HumidityBean;

    return-object v0
.end method

.method public getIndexMap()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->indexMap:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;

    return-object v0
.end method

.method public getTemperature()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$TemperatureBean;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->temperature:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$TemperatureBean;

    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->warnings:Ljava/util/List;

    return-object v0
.end method

.method public getWeather()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->weather:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;

    return-object v0
.end method

.method public getWind()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WindBean;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->wind:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WindBean;

    return-object v0
.end method

.method public setAirQuality(Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->airQuality:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;

    return-void
.end method

.method public setArea(Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AreaBean;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->area:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AreaBean;

    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->dateTime:Ljava/lang/String;

    return-void
.end method

.method public setHumidity(Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$HumidityBean;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->humidity:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$HumidityBean;

    return-void
.end method

.method public setIndexMap(Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->indexMap:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean;

    return-void
.end method

.method public setTemperature(Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$TemperatureBean;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->temperature:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$TemperatureBean;

    return-void
.end method

.method public setWarnings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->warnings:Ljava/util/List;

    return-void
.end method

.method public setWeather(Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->weather:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;

    return-void
.end method

.method public setWind(Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WindBean;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->wind:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WindBean;

    return-void
.end method
