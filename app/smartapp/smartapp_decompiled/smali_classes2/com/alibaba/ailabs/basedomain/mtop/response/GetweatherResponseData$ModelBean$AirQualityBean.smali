.class public Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;
.super Ljava/lang/Object;
.source "GetweatherResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirQualityBean"
.end annotation


# instance fields
.field private airQualityDesc:Ljava/lang/String;

.field private aqi:Ljava/lang/String;

.field private co:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private levelDesc:Ljava/lang/String;

.field private no2:Ljava/lang/String;

.field private o3:Ljava/lang/String;

.field private pm10:Ljava/lang/String;

.field private pm25:Ljava/lang/String;

.field private so2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAirQualityDesc()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->airQualityDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getAqi()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->aqi:Ljava/lang/String;

    return-object v0
.end method

.method public getCo()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->co:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelDesc()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->levelDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getNo2()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->no2:Ljava/lang/String;

    return-object v0
.end method

.method public getO3()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->o3:Ljava/lang/String;

    return-object v0
.end method

.method public getPm10()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->pm10:Ljava/lang/String;

    return-object v0
.end method

.method public getPm25()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->pm25:Ljava/lang/String;

    return-object v0
.end method

.method public getSo2()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->so2:Ljava/lang/String;

    return-object v0
.end method

.method public setAirQualityDesc(Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->airQualityDesc:Ljava/lang/String;

    return-void
.end method

.method public setAqi(Ljava/lang/String;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->aqi:Ljava/lang/String;

    return-void
.end method

.method public setCo(Ljava/lang/String;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->co:Ljava/lang/String;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->level:Ljava/lang/String;

    return-void
.end method

.method public setLevelDesc(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->levelDesc:Ljava/lang/String;

    return-void
.end method

.method public setNo2(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->no2:Ljava/lang/String;

    return-void
.end method

.method public setO3(Ljava/lang/String;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->o3:Ljava/lang/String;

    return-void
.end method

.method public setPm10(Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->pm10:Ljava/lang/String;

    return-void
.end method

.method public setPm25(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->pm25:Ljava/lang/String;

    return-void
.end method

.method public setSo2(Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AirQualityBean;->so2:Ljava/lang/String;

    return-void
.end method
