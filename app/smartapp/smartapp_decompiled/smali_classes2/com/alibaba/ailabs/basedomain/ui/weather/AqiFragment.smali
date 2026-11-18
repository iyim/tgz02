.class public Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;
.super Lcom/alibaba/ailabs/basedomain/common/BaseFragment;
.source "AqiFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/IBaseUI;


# static fields
.field public static final TAG:Ljava/lang/String; = "weather"


# instance fields
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

.method private getDateLocation()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getWeek()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getLocation()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s    %s    %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRootBackground(I)I
    .locals 1

    const/16 v0, 0x32

    if-gt p1, v0, :cond_0

    .line 81
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_aqi_very_good:I

    return p1

    :cond_0
    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    .line 83
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_aqi_fine:I

    return p1

    :cond_1
    const/16 v0, 0x96

    if-gt p1, v0, :cond_2

    .line 85
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_aqi_mild:I

    return p1

    :cond_2
    const/16 v0, 0xc8

    if-gt p1, v0, :cond_3

    .line 87
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_aqi_middle:I

    return p1

    :cond_3
    const/16 v0, 0x12c

    if-gt p1, v0, :cond_4

    .line 89
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_aqi_serious:I

    return p1

    :cond_4
    if-le p1, v0, :cond_5

    .line 91
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_aqi_very_serious:I

    return p1

    .line 93
    :cond_5
    sget p1, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_aqi_very_good:I

    return p1
.end method


# virtual methods
.method public getDomainType()Lcom/alibaba/ailabs/basedomain/BaseDomainConfig$BaseDomainType;
    .locals 1

    .line 103
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

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

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
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->from(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;

    move-result-object p1

    const-string p3, "base_domain_weather_aqi_fragment"

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p3, p2, v0}, Lcom/alibaba/ailabs/basedomain/GenieLayoutInflater;->inflate(Ljava/lang/String;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 42
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AqiFragment bundle:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "weather"

    invoke-static {v0, p3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p3, "data"

    .line 44
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WeatherData data:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->layout_exit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    const-string p3, "a1z3lt.12021498"

    const-string v0, "weather_display"

    const-string v1, "escapepod_home"

    .line 48
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setHomeUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "escapepod_back"

    .line 49
    invoke-virtual {p2, v0, v1, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackUtArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance p3, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment$1;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->date_location:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 59
    sget p3, Lcom/alibaba/ailabs/basedomain/R$id;->aqi:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->aqi_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->getDateLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getAqi()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " \u7a7a\u6c14\u8d28\u91cf  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getLevelDesc()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->mData:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->getAqi()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;->getRootBackground(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 70
    :cond_0
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string p3, "No extra find "

    invoke-static {v0, p3, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p1
.end method
