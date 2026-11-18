.class public Lcom/alibaba/ailabs/basedomain/model/weather/Wind;
.super Ljava/lang/Object;
.source "Wind.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "WeatherData"


# instance fields
.field private direct:Ljava/lang/String;

.field private directDesc:Ljava/lang/String;

.field private originData:Ljava/lang/String;

.field private power:Ljava/lang/String;

.field private powerDesc:Ljava/lang/String;

.field private powerName:Ljava/lang/String;

.field private speed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->originData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDirect()Ljava/lang/String;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->direct:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->originData:Ljava/lang/String;

    const-string v1, "direct"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->direct:Ljava/lang/String;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->direct:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectDesc()Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->directDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->originData:Ljava/lang/String;

    const-string v1, "directDesc"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->directDesc:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->directDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->directDesc:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPower()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->power:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->originData:Ljava/lang/String;

    const-string v1, "power"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->power:Ljava/lang/String;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->power:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerDesc()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->powerDesc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->originData:Ljava/lang/String;

    const-string v1, "powerDesc"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->powerDesc:Ljava/lang/String;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->powerDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->powerDesc:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPowerName()Ljava/lang/String;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->powerName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->originData:Ljava/lang/String;

    const-string v1, "powerName"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->powerName:Ljava/lang/String;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->powerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->speed:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->originData:Ljava/lang/String;

    const-string v1, "speed"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->speed:Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wind{direct=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->direct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", directDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->directDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", power=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->power:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", powerDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->powerDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", powerName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->powerName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", speed=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Wind;->speed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
