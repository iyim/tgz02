.class Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;
.super Ljava/lang/Object;
.source "WeatherBrokenLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TemperatureList"
.end annotation


# instance fields
.field private mTemperatureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;)V
    .locals 8

    .line 247
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    new-instance v7, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    const/16 v3, 0x12

    const/16 v4, 0xa

    const-string v5, "\u660e\u5929"

    const-string v6, "04/30"

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    new-instance v7, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    const/16 v3, 0xf

    const/4 v4, 0x7

    const-string v5, "\u540e\u5929"

    const-string v6, "05/01"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    new-instance v7, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    const/16 v3, 0x16

    const/16 v4, 0xc

    const-string v5, "\u661f\u671f\u4e00"

    const-string v6, "05/02"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    new-instance v7, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    const/16 v3, 0x1a

    const/16 v4, 0x9

    const-string v5, "\u661f\u671f\u4e8c"

    const-string v6, "05/03"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;)V
    .locals 9

    .line 254
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->this$0:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    .line 257
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    new-instance v6, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    const/16 v2, 0x12

    const/16 v3, 0xa

    const-string v4, "\u6d4b\u8bd5"

    const-string v5, "04/30"

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    new-instance v6, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    const/16 v2, 0xf

    const/4 v3, 0x7

    const-string v4, "\u6d4b\u8bd5"

    const-string v5, "05/01"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    new-instance v6, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    const/16 v2, 0x16

    const/16 v3, 0xc

    const-string v4, "\u6d4b\u8bd5"

    const-string v5, "05/02"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    new-instance v6, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    const/16 v2, 0x1a

    const/16 v3, 0x9

    const-string v4, "\u6d4b\u8bd5"

    const-string v5, "05/03"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    .line 263
    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    new-instance v8, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getTemperatureHigh(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 265
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getTemperatureLow(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 266
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeekNameForWeatherBrokenLne(I)Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getDateForWeatherBrokenLne(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;IILjava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public fillPositions(FFIFF)V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    const-string v1, "WeatherBrokenLine"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillPositions yDistancePerDegree:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " maxTemperaturePositionY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " maxTemperature:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " xDistancePerDay:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " begin_point_margin_left:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    int-to-float v2, v0

    mul-float v2, v2, p4

    add-float/2addr v2, p5

    .line 327
    iput v2, v1, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    .line 328
    iget v2, v1, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->low:I

    sub-int v2, p3, v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v2, p2

    iput v2, v1, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yLow:F

    .line 329
    iget v2, v1, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->high:I

    sub-int v2, p3, v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v2, p2

    iput v2, v1, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yHigh:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 318
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "fillPositions with empty mTemperatureList"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public get(I)Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    return-object p1
.end method

.method public getMax()I
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    const-string v1, "WeatherBrokenLine"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    iget v0, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->high:I

    const/4 v2, 0x1

    .line 286
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 287
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    iget v3, v3, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->high:I

    if-ge v0, v3, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    iget v0, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->high:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMax val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const-string v0, "getMax error, return min"

    .line 294
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x80000000

    return v0
.end method

.method public getMin()I
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    const-string v1, "WeatherBrokenLine"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    iget v0, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->low:I

    const/4 v2, 0x1

    .line 302
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 303
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    iget v3, v3, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->low:I

    if-le v0, v3, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    iget v0, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->low:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMin val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const-string v0, "getMin error, return max"

    .line 310
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x80000000

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 336
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 339
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->mTemperatureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
