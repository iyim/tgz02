.class public Lcom/alibaba/ailabs/basedomain/model/weather/Area;
.super Ljava/lang/Object;
.source "Area.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "WeatherData"


# instance fields
.field private area:Ljava/lang/String;

.field private areaCode:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private countryId:Ljava/lang/String;

.field private countryType:Ljava/lang/String;

.field private originData:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->originData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->area:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->originData:Ljava/lang/String;

    const-string v1, "area"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->area:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->areaCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->originData:Ljava/lang/String;

    const-string v1, "areaCode"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->areaCode:Ljava/lang/String;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->city:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->originData:Ljava/lang/String;

    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->city:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->country:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->originData:Ljava/lang/String;

    const-string v1, "country"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->country:Ljava/lang/String;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryId()Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->countryId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->originData:Ljava/lang/String;

    const-string v1, "countryId"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->countryId:Ljava/lang/String;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->countryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryType()Ljava/lang/String;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->countryType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->originData:Ljava/lang/String;

    const-string v1, "countryType"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->countryType:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->countryType:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->province:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->originData:Ljava/lang/String;

    const-string v1, "province"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->province:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->province:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Area{areaCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->areaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", area=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->area:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", city=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", province=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->province:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", countryId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->countryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", countryType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/weather/Area;->countryType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
