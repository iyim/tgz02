.class public Lcom/alibaba/ailabs/basedomain/model/weather/Weather;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "WeatherData"


# instance fields
.field private code:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private originData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->originData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->code:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->originData:Ljava/lang/String;

    const-string v1, "code"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->code:Ljava/lang/String;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->originData:Ljava/lang/String;

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->name:Ljava/lang/String;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weather{code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Weather;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
