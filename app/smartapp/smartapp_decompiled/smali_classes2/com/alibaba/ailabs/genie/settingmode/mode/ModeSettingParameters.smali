.class public Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;
.super Ljava/lang/Object;
.source "ModeSettingParameters.java"


# instance fields
.field public enable:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isType()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    return v0
.end method

.method public setType(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModeSettingParameters{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/settingmode/mode/ModeSettingParameters;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
