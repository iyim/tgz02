.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;
.super Ljava/lang/Object;
.source "AlarmType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;
    }
.end annotation


# static fields
.field private static NON_MUSIC_TYPE:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AlarmType"

.field private static alarmImageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->NON_MUSIC_TYPE:Ljava/util/List;

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->NON_MUSIC_TYPE:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->NON_MUSIC_TYPE:Ljava/util/List;

    const v1, 0xc351

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->NON_MUSIC_TYPE:Ljava/util/List;

    const v2, 0xc352

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->NON_MUSIC_TYPE:Ljava/util/List;

    const v3, 0xea61

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->NON_MUSIC_TYPE:Ljava/util/List;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    new-instance v4, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    sget v5, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_bg_weather_rainy:I

    const/4 v6, 0x2

    invoke-direct {v4, v5, v3, v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;-><init>(III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    new-instance v4, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    sget v5, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_bg_music:I

    const/4 v7, -0x1

    const/16 v8, 0x11

    invoke-direct {v4, v5, v8, v7}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;-><init>(III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    new-instance v4, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    sget v5, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_bg_child:I

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;-><init>(III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    new-instance v4, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    sget v5, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_bg_custom:I

    const v6, 0x2e631

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;-><init>(III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    new-instance v4, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    sget v5, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_bg_good_light:I

    invoke-direct {v4, v5, v2, v7}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;-><init>(III)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    new-instance v2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    sget v4, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_bg_good_morning:I

    invoke-direct {v2, v4, v1, v7}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;-><init>(III)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_bg_weather_haze:I

    const/16 v4, 0x1f4

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_bg_weather_cloudy:I

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_bg_weather_snow:I

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_bg_weather_sunny:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAlarmImageInfo(IILjava/lang/String;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;
    .locals 7

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlarmImageInfo alarmCategory:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alarmSubCategory:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " weatherCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmType"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 76
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge p0, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v2, -0x1

    .line 84
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v3, "Parser weatherCode string to int err"

    .line 86
    invoke-static {v1, v3, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-lez p1, :cond_2

    mul-int/lit16 p2, p0, 0x2710

    add-int/2addr p1, p2

    goto :goto_2

    :cond_2
    move p1, p0

    .line 91
    :goto_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 92
    :goto_3
    sget-object v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 93
    sget-object v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    iget v5, v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->alarmTypeId:I

    if-eq v5, p1, :cond_3

    sget-object v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    iget v5, v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->alarmTypeId:I

    if-eq v5, p0, :cond_3

    sget-object v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    .line 94
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    iget v5, v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->alarmTypeId:I

    div-int/lit16 v5, v5, 0x2710

    if-ne v5, p0, :cond_4

    .line 95
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAlarmImageInfo alarmType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " matched:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v5, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->alarmImageInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x6

    if-ne p0, v1, :cond_8

    const/4 p0, 0x0

    .line 101
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_8

    .line 102
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    iget v1, v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->weatherCode:I

    if-eq v1, v2, :cond_7

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    iget v1, v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->weatherCode:I

    div-int/lit8 v4, v2, 0x64

    if-ne v1, v4, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 103
    :cond_7
    :goto_5
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    return-object p0

    :cond_8
    const p0, 0xc351

    if-ne p1, p0, :cond_a

    .line 109
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    .line 110
    iget v2, v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;->alarmTypeId:I

    if-ne v2, p1, :cond_9

    return-object v1

    .line 116
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_b

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType$AlarmImageInfo;

    :cond_b
    return-object v0
.end method

.method public static getImage(II)I
    .locals 0

    .line 61
    sget p0, Lcom/alibaba/ailabs/basedomain/R$drawable;->alarm_ring_dialog_bg:I

    return p0
.end method

.method public static isMusicAlarm(II)Z
    .locals 1

    .line 65
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->NON_MUSIC_TYPE:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->NON_MUSIC_TYPE:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static needGetWeatherData(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)Z
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needGetWeatherData, alarmInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmType"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getAlarmCategory()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
