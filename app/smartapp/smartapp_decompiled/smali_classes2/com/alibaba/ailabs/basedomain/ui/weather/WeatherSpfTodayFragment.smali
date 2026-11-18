.class public Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherSpfTodayFragment;
.super Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;
.source "WeatherSpfTodayFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected getUv()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$ZWXINDEXBean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherSpfTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getUv()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$ZWXINDEXBean;

    move-result-object v0

    return-object v0
.end method

.method protected getUvBackground(Ljava/lang/String;)I
    .locals 1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->getUvBackground(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "\u6700\u5f31"

    .line 24
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_very_good:I

    return p1

    :cond_1
    const-string v0, "\u5f31"

    .line 26
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_fine:I

    return p1

    :cond_2
    const-string v0, "\u4e2d\u7b49"

    .line 28
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_mild:I

    return p1

    :cond_3
    const-string v0, "\u5f3a"

    .line 30
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_middle:I

    return p1

    :cond_4
    const-string v0, "\u5f88\u5f3a"

    .line 32
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_very_serious:I

    return p1

    .line 36
    :cond_5
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->getUvBackground(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
