.class public Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;
.super Lcom/alibaba/ailabs/basedomain/common/BaseFragment;
.source "FourDaysWeatherFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;


# static fields
.field public static final TAG:Ljava/lang/String; = "weather"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 1

    .line 95
    sget-object v0, Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;->WEATHER:Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;

    return-object v0
.end method

.method public getPagePropertiesForUT()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getPageType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSPMForUT()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12021498"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->from(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "base_domain_weather_four_days_weather"

    .line 36
    invoke-virtual {p1, v0, p2, p3}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(Ljava/lang/String;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FourDaysWeather bundle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weather"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_5

    const-string v0, "data"

    .line 42
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    .line 44
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    const-string v0, "a1z3lt.12021498"

    const-string v2, "weather_display"

    const-string v3, "escapepod_home"

    .line 45
    invoke-virtual {p2, v2, v3, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "escapepod_back"

    .line 46
    invoke-virtual {p2, v2, v3, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;)V

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->broken_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;

    .line 55
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->icon_day1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v2

    const-class v3, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;

    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;

    .line 57
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v3, p3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getWeatherIconForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    .line 59
    invoke-virtual {v3, p3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getWeatherIconForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 58
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 61
    :cond_0
    sget p3, Lcom/alibaba/ailabs/basedomain/R$id;->icon_day2:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getWeatherIconForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getWeatherIconForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    :cond_1
    sget p3, Lcom/alibaba/ailabs/basedomain/R$id;->icon_day3:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getWeatherIconForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getWeatherIconForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 69
    :cond_2
    sget p3, Lcom/alibaba/ailabs/basedomain/R$id;->icon_day4:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getWeatherIconForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getWeatherIconForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 73
    :cond_3
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->setData(Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;)V

    .line 74
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 75
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getRootBackgroundForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_4

    .line 76
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getRootBackgroundForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 78
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WeatherData data:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_5
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string p3, "No extra find "

    invoke-static {v1, p3, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method
