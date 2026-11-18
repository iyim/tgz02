.class public Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;
.super Ljava/lang/Object;
.source "WeatherData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "WeatherData"


# instance fields
.field private pageType:Ljava/lang/String;

.field private weathers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;",
            ">;"
        }
    .end annotation
.end field

.field weeks:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const-string v0, "WeatherData"

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const-string v2, "\u661f\u671f\u65e5"

    const-string v3, "\u661f\u671f\u4e00"

    const-string v4, "\u661f\u671f\u4e8c"

    const-string v5, "\u661f\u671f\u4e09"

    const-string v6, "\u661f\u671f\u56db"

    const-string v7, "\u661f\u671f\u4e94"

    const-string v8, "\u661f\u671f\u516d"

    .line 23
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weeks:[Ljava/lang/String;

    .line 28
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonArray:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonArray len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    new-instance v5, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse weather data error, data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAqi()Ljava/lang/String;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 157
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getAirQuality()Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->getAqi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentTemperature()Ljava/lang/String;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 179
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getTemperature()Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->getCurrent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getDateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateForWeatherBrokenLne(I)Ljava/lang/String;
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getDateTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 76
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLevelDesc()Ljava/lang/String;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 168
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getAirQuality()Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/AirQuality;->getLevelDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const-string v1, ""

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 129
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getArea()Lcom/alibaba/ailabs/basedomain/model/weather/Area;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->getArea()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->getProvince()Ljava/lang/String;

    move-result-object v2

    .line 139
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 142
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0

    :cond_4
    return-object v1
.end method

.method public getPageType()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperatureHigh()Ljava/lang/String;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 212
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getTemperature()Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->getHigh()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTemperatureHigh(I)Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 223
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getTemperature()Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->getHigh()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTemperatureLow()Ljava/lang/String;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 190
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getTemperature()Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->getLow()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTemperatureLow(I)Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 201
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getTemperature()Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->getLow()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUv()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$ZWXINDEXBean;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 258
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getIndexMapBean()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$ZWXINDEXBean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWeatherCode()Ljava/lang/String;
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 267
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getWeather()Lcom/alibaba/ailabs/basedomain/model/weather/Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weathercode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeatherData"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWeatherCode(I)Ljava/lang/String;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 279
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getWeather()Lcom/alibaba/ailabs/basedomain/model/weather/Weather;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weathercode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherData"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWeatherName()Ljava/lang/String;
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 234
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getWeather()Lcom/alibaba/ailabs/basedomain/model/weather/Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getDateTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x7

    .line 90
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weeks:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWeekNameForWeatherBrokenLne(I)Ljava/lang/String;
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getDateTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x7

    .line 104
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x6

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 107
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeatherData getWeek, dayOfWeek\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " calendar\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WeatherData"

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v2, v1

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weeks:[Ljava/lang/String;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1

    :cond_0
    const-string p1, "\u540e\u5929"

    return-object p1

    :cond_1
    const-string p1, "\u660e\u5929"

    return-object p1

    :cond_2
    const-string p1, "\u4eca\u5929"

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWindDesc()Ljava/lang/String;
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 245
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getWind()Lcom/alibaba/ailabs/basedomain/model/weather/Wind;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->getDirectDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->getPowerDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPageType(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->pageType:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 291
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->weathers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
