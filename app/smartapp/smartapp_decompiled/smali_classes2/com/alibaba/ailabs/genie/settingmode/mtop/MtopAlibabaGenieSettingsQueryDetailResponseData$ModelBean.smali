.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;
.super Ljava/lang/Object;
.source "MtopAlibabaGenieSettingsQueryDetailResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field public mCurrentStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getmCurrentStatus()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;->mCurrentStatus:Z

    return v0
.end method

.method public setmCurrentStatus(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;->mCurrentStatus:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelBean{mCurrentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;->mCurrentStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
