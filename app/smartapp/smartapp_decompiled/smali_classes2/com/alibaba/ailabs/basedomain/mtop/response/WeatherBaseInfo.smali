.class public Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;
.super Ljava/lang/Object;
.source "WeatherBaseInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherBaseInfo"

.field private static sInstance:Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;


# instance fields
.field private city:Ljava/lang/String;

.field private mWeatherCodeIconMultiDay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private temperature:Ljava/lang/String;

.field private weatherCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->mWeatherCodeIconMultiDay:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;
    .locals 2

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->sInstance:Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->sInstance:Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    invoke-direct {v1}, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->sInstance:Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->sInstance:Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    return-object v0
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->temperature:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherCode()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->weatherCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setTemperature(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->temperature:Ljava/lang/String;

    return-void
.end method

.method public setWeatherCode(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->weatherCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherBaseInfo{weatherCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->weatherCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", temperature=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->temperature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", city=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
