.class public Lcom/alibaba/ailabs/genie/data/bean/BetaUpdateSettingBean;
.super Ljava/lang/Object;
.source "BetaUpdateSettingBean.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;


# instance fields
.field private firmware:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isFirmware()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/data/bean/BetaUpdateSettingBean;->firmware:Z

    return v0
.end method

.method public setFirmware(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/data/bean/BetaUpdateSettingBean;->firmware:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BetaUpdateSettingBean{firmware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/data/bean/BetaUpdateSettingBean;->firmware:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
