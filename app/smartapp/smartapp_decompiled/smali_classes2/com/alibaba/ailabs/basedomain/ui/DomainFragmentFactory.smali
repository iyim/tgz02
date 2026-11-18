.class public Lcom/alibaba/ailabs/basedomain/ui/DomainFragmentFactory;
.super Ljava/lang/Object;
.source "DomainFragmentFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MainActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public destroy()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getFragment(Ljava/lang/String;Ljava/io/Serializable;)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "ask_lunar_date"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "weatherTemperatureMultiWithToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "weatherDryingRealtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "weatherBaseSingleNotToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "weatherBaseRealtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "weatherDressRealtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "aligenie.alarm.screen.alarm.findAlarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "weatherSpfToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "weatherDryingToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "weatherTemperatureToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "weatherAqiToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "weatherTemperatureRealtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "aligenie.alarm.screen.alarm.setAlarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "weatherDryingNotToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "weatherTemperatureMultiWithoutToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "ask_solar_date"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "aligenie.alarm.screen.alarm.deleteAlarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "ask_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "ask_day"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_13
    const-string v1, "weatherDressNotToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_1

    :sswitch_14
    const-string v1, "weatherCarwashToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_1

    :sswitch_15
    const-string v1, "weatherBaseMultiWithoutToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_1

    :sswitch_16
    const-string v1, "weatherCarwashRealtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_17
    const-string v1, "weatherBaseMultiWithToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto :goto_1

    :sswitch_18
    const-string v1, "weatherDressToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    goto :goto_1

    :sswitch_19
    const-string v1, "weatherTemperatureNotToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto :goto_1

    :sswitch_1a
    const-string v1, "weatherBaseSingleToday"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v1, "data"

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_2

    .line 121
    :pswitch_0
    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    nop

    nop

    .line 122
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 123
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/basedomain/ui/weather/FourDaysWeatherFragment;-><init>()V

    goto :goto_2

    .line 113
    :pswitch_1
    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    nop

    nop

    .line 114
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 115
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherOtherDayFragment;-><init>()V

    goto :goto_2

    .line 100
    :pswitch_2
    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    nop

    nop

    .line 101
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 102
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/basedomain/ui/weather/AqiFragment;-><init>()V

    goto :goto_2

    .line 95
    :pswitch_3
    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    .line 96
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 97
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherSpfTodayFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherSpfTodayFragment;-><init>()V

    goto :goto_2

    .line 90
    :pswitch_4
    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    nop

    nop

    .line 91
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 92
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherTodayFragment;-><init>()V

    goto :goto_2

    .line 78
    :pswitch_5
    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    nop

    nop

    .line 79
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 80
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;-><init>()V

    goto :goto_2

    .line 69
    :pswitch_6
    check-cast p2, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    nop

    nop

    .line 70
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/basedomain/ui/datetime/DateFragment;-><init>()V

    .line 71
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 127
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFragment fragment:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MainActivity"

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f986a4c -> :sswitch_1a
        -0x719a36d2 -> :sswitch_19
        -0x6f625da2 -> :sswitch_18
        -0x6b17ead9 -> :sswitch_17
        -0x513fef96 -> :sswitch_16
        -0x47920b33 -> :sswitch_15
        -0x4517cb5e -> :sswitch_14
        -0x3ca1e40f -> :sswitch_13
        -0x2a75b72a -> :sswitch_12
        -0x2439cb2d -> :sswitch_11
        -0x2251f85c -> :sswitch_10
        -0x2124c70e -> :sswitch_f
        -0x1314d1ce -> :sswitch_e
        -0x10cb5b47 -> :sswitch_d
        -0xfaedc6f -> :sswitch_c
        -0x22b5995 -> :sswitch_b
        0x13cc189c -> :sswitch_a
        0x1d164641 -> :sswitch_9
        0x20190e96 -> :sswitch_8
        0x279c7b2c -> :sswitch_7
        0x2dd967d6 -> :sswitch_6
        0x32ccf92e -> :sswitch_5
        0x3549f570 -> :sswitch_4
        0x419260db -> :sswitch_3
        0x5ea381f6 -> :sswitch_2
        0x746adde2 -> :sswitch_1
        0x7a3614dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateViewData()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
