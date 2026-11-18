.class public Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;
.super Lcom/alibaba/ailabs/basedomain/common/BaseFragment;
.source "WeatherOtherDayFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;


# static fields
.field public static final TAG:Ljava/lang/String; = "weather"

.field private static VALUE_SYSTEM_CUNICOM:Ljava/lang/String; = "AILABS_S1L_CU"


# instance fields
.field protected mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

.field private mDateTv:Landroid/widget/TextView;

.field private mLocationTv:Landroid/widget/TextView;

.field private mWeekTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getAqiAndDesc()Ljava/lang/String;
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getLevelDesc()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 138
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getAqi()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 142
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "%s | %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private getAqiBackground(I)I
    .locals 1

    const/16 v0, 0x32

    if-gt p1, v0, :cond_0

    .line 158
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_very_good:I

    return p1

    :cond_0
    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    .line 160
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_fine:I

    return p1

    :cond_1
    const/16 v0, 0x96

    if-gt p1, v0, :cond_2

    .line 162
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_mild:I

    return p1

    :cond_2
    const/16 v0, 0xc8

    if-gt p1, v0, :cond_3

    .line 164
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_middle:I

    return p1

    :cond_3
    const/16 v0, 0x12c

    if-gt p1, v0, :cond_4

    .line 166
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_serious:I

    return p1

    :cond_4
    if-le p1, v0, :cond_5

    .line 168
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_very_serious:I

    return p1

    .line 170
    :cond_5
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_very_good:I

    return p1
.end method

.method private getDateLocation()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 174
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeek()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getLocation()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s    %s    %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCCLiteCu()Z
    .locals 2

    .line 126
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->VALUE_SYSTEM_CUNICOM:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weather"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 1

    .line 184
    sget-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->WEATHER:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    return-object v0
.end method

.method public getPageNameForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "weather_display"

    return-object v0
.end method

.method public getPagePropertiesForUT()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getPageType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSPMForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12021498"

    return-object v0
.end method

.method protected getUv()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$ZWXINDEXBean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUvBackground(Ljava/lang/String;)I
    .locals 0

    .line 153
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_very_good:I

    return p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->from(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "base_domain_weather_other_day_fragment"

    .line 47
    invoke-virtual {p1, v0, p2, p3}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(Ljava/lang/String;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherOneDayFragment bundle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weather"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    const-string v0, "data"

    .line 51
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WeatherData data:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    const-string v0, "a1z3lt.12021498"

    const-string v1, "weather_display"

    const-string v2, "escapepod_home"

    .line 55
    invoke-virtual {p2, v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "escapepod_back"

    .line 56
    invoke-virtual {p2, v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;)V

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->date_location:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->getDateLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_0
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->date_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mDateTv:Landroid/widget/TextView;

    .line 71
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->week_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mWeekTv:Landroid/widget/TextView;

    .line 72
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->location_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mLocationTv:Landroid/widget/TextView;

    .line 74
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mDateTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mWeekTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeek()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mLocationTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;

    .line 82
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getRootBackground(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getRootBackground(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 85
    :cond_1
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->temperature_low:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getTemperatureLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->temperature_high:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getTemperatureHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->weather_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->wind:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWindDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->aqi:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->uv_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->getUv()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$ZWXINDEXBean;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->isCCLiteCu()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$ZWXINDEXBean;->getDegree()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 100
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean$IndexMapBean$ZWXINDEXBean;->getDegree()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, p3

    const-string v1, "UV  %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_1
    sget p3, Lcom/alibaba/ailabs/basedomain/R$id;->aqi_bg:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 109
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->getAqiAndDesc()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->getAqiAndDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    :goto_2
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    .line 117
    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getAqi()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "0"

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getAqi()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;->getAqiBackground(I)I

    move-result p2

    .line 116
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 119
    :cond_5
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string p3, "No extra find "

    invoke-static {v1, p3, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object p1
.end method
