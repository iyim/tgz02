.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$7;
.super Ljava/lang/Object;
.source "AlarmClockManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->readyWeatherData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 556
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "readyWeatherData onResponseFailed userFlag = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorCode = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";errorMessage = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlarmClockManager"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 2

    .line 504
    check-cast p1, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponse;

    const-string p2, "AlarmClockManager"

    if-nez p1, :cond_0

    const-string p1, "ready weather data failed, response == null !!!"

    .line 506
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 510
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponse;->getData()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "ready weather data failed, response == null !!! 2"

    .line 513
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 517
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData;->getModel()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "ready weather data failed, modelBean is null !!!"

    .line 520
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 524
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->getWeather()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;

    move-result-object p3

    .line 526
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->getInstance()Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1102(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;)Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    if-eqz p3, :cond_3

    .line 528
    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$WeatherBean;->getCode()Ljava/lang/String;

    move-result-object p3

    .line 530
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->setWeatherCode(Ljava/lang/String;)V

    .line 534
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->getTemperature()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$TemperatureBean;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 536
    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$TemperatureBean;->getCurrent()Ljava/lang/String;

    move-result-object p3

    .line 537
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u00b0C"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 539
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->setTemperature(Ljava/lang/String;)V

    .line 543
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;->getArea()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AreaBean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 545
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$AreaBean;->getCity()Ljava/lang/String;

    move-result-object p1

    .line 546
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {p3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->setCity(Ljava/lang/String;)V

    .line 548
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1202(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;J)J

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "load weatherBaseInfo  = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$7;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-static {p3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->access$1100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
