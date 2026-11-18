.class public Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;
.super Ljava/lang/Object;
.source "BaikePlanetInfo.java"


# instance fields
.field private cardNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private guid:Ljava/lang/String;

.field private isScreen:Z

.field private name:Ljava/lang/String;

.field private triggerId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 26
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;

    .line 28
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->guid:Ljava/lang/String;

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->type:Ljava/lang/String;

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCardNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->cardNames:Ljava/util/List;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->triggerId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isScreen()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->isScreen:Z

    return v0
.end method

.method public setCardNames(Ljava/util/List;)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->cardNames:Ljava/util/List;

    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->guid:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setScreen(Z)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->isScreen:Z

    return-object p0
.end method

.method public setTriggerId(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->triggerId:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->type:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaikePlanetInfo{cardNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->cardNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->isScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", triggerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->triggerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", guid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->guid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
