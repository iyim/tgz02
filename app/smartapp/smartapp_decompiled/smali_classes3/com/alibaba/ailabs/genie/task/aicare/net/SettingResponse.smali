.class public Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "SettingResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public caputre:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "caputre"
    .end annotation
.end field

.field public caputreAnimal:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "caputreAnimal"
    .end annotation
.end field

.field private caputrePeople:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "caputrePeople"
    .end annotation
.end field

.field public enable:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "enable"
    .end annotation
.end field

.field public endTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "end"
    .end annotation
.end field

.field public model:Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;

.field public snapCry:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "snapCry"
    .end annotation
.end field

.field public snapFall:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "snapFall"
    .end annotation
.end field

.field public snapFallPush:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "snapFallPush"
    .end annotation
.end field

.field public snapHuman:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "snapHuman"
    .end annotation
.end field

.field public snapPet:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "snapPet"
    .end annotation
.end field

.field public startTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "start"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->caputre:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->enable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isHumanEnable()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->caputrePeople:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->snapHuman:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPetEnable()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->caputreAnimal:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->snapPet:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nEnable ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nPeople="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->isHumanEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nPet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->isPetEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nFall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->snapFall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nFallPush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->snapFallPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nstartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
