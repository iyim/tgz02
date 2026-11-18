.class public Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;
.super Landroid/arch/lifecycle/ViewModel;
.source "DayWeatherConfig.java"


# instance fields
.field private final mWeatherCodeBackgroundMultiDay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeatherCodeBackgroundSingleDay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeatherCodeIconMultiDay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    .line 24
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->init()V

    return-void
.end method

.method private init()V
    .locals 19

    move-object/from16 v0, p0

    .line 71
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_qin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_duoyun:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "100"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "101"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "200"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v7, "201"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "202"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v9, "203"

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "204"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "205"

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v12, "206"

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v13, "207"

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v14, "209"

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "211"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v16, v15

    const-string v15, "212"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v15

    const-string v15, "213"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v18, v15

    const-string v15, "214"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "300"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "301"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "302"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "303"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "304"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "305"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "307"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "309"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_wu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "400"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_shachen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "501"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_shachen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "502"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_shachen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "503"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_shachen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "504"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "215"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_mai:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "500"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_qin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "0"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "2"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "3"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_wu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "4"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_single_bg_shachen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "5"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_qin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_duoyun:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v15, v16

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v15, v17

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v15, v18

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "214"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "300"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "301"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "302"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "303"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "304"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "305"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "307"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "309"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_wu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "400"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_shacheng:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "501"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_shacheng:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "502"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_shacheng:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "503"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_shacheng:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "504"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "215"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_mai:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "500"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_qin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "0"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "2"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "3"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_wu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "4"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_bg_shacheng:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v15, "5"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_qing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_duoyun:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_yin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_xiaoyu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_xiaodaozhongyu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_zhongyu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_zhongdaodayu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_dayu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_dadaobaoyu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_baoyu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_dabaoyu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_tedabaoyu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_zhenyu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_leizhenyu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_dongyu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "214"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "300"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_yujiaxue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "301"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_zhenxue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "302"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_xiaoxue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "303"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_xiaodaozhongxue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "304"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_zhongxue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "305"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_daxue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "307"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_baoxue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "309"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_wu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "400"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_shachenbao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "501"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_yangsha:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "502"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_shachenbao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "503"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_qiangshachenbao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "504"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_leiyubingbao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "215"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_mai:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "500"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_qing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_yu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "2"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_xue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "3"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_wu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "4"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    sget v2, Lcom/alibaba/ailabs/basedomain/R$drawable;->weather_domain_mutil_icon_shachenbao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "5"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRootBackground(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundSingleDay:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    .line 40
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherTodayFragment getRootBackground weatherCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resId:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WeatherData"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRootBackgroundForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeBackgroundMultiDay:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    .line 53
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherTodayFragment getRootBackground weatherCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resId:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WeatherData"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWeatherIconForMutilDay(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    return-object v1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/DayWeatherConfig;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    .line 66
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FourDaysWeatherFragment getWeatherIconForMutilDay weatherCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resId:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WeatherData"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
