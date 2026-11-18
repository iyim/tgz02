.class public Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;
.super Lcom/alibaba/ailabs/basedomain/common/BaseFragment;
.source "WeatherTodayFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;


# static fields
.field public static final TAG:Ljava/lang/String; = "weather"


# instance fields
.field private mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/BaseFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getAqiAndDesc()Ljava/lang/String;
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getLevelDesc()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 99
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getAqi()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 103
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "%s | %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
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

    .line 110
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_very_good:I

    return p1

    :cond_0
    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    .line 112
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_fine:I

    return p1

    :cond_1
    const/16 v0, 0x96

    if-gt p1, v0, :cond_2

    .line 114
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_mild:I

    return p1

    :cond_2
    const/16 v0, 0xc8

    if-gt p1, v0, :cond_3

    .line 116
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_middle:I

    return p1

    :cond_3
    const/16 v0, 0x12c

    if-gt p1, v0, :cond_4

    .line 118
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_serious:I

    return p1

    :cond_4
    if-le p1, v0, :cond_5

    .line 120
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_very_serious:I

    return p1

    .line 122
    :cond_5
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_today_aqi_icon_very_good:I

    return p1
.end method

.method private getDateLocation()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeek()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getLocation()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s    %s    %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 1

    .line 132
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

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

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
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->from(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;

    move-result-object p1

    const-string p3, "base_domain_weather_today_fragment"

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p3, p2, v0}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(Ljava/lang/String;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 42
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WeatherOneDayFragment bundle:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "weather"

    invoke-static {v0, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string p3, "data"

    .line 44
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    .line 46
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    const-string p3, "a1z3lt.12021498"

    const-string v1, "weather_display"

    const-string v2, "escapepod_home"

    .line 47
    invoke-virtual {p2, v1, v2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "escapepod_back"

    .line 48
    invoke-virtual {p2, v1, v2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WeatherData data:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p3

    const-class v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;

    invoke-virtual {p3, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getRootBackground(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->getRootBackground(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 63
    :cond_0
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->date_location:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 64
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->getDateLocation()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->temperature:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 66
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getCurrentTemperature()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->aqi:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 68
    sget p3, Lcom/alibaba/ailabs/basedomain/R$id;->aqi_bg:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getAqi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getAqi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->getAqiBackground(I)I

    move-result v0

    .line 69
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->getAqiAndDesc()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->getAqiAndDesc()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    .line 75
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :goto_1
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->weather_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 79
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeatherName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->wind:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 81
    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWindDesc()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 83
    :cond_3
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string p3, "No extra find "

    invoke-static {v0, p3, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object p1
.end method
