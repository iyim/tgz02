.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$NightModeBean;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTDeviceInfoGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NightModeBean"
.end annotation


# instance fields
.field private end:Ljava/lang/String;

.field private start:Ljava/lang/String;

.field private value:Z

.field private wakeupStyle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEnd()Ljava/lang/String;
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$NightModeBean;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$NightModeBean;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeupStyle()Ljava/lang/String;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$NightModeBean;->wakeupStyle:Ljava/lang/String;

    return-object v0
.end method

.method public isValue()Z
    .locals 1

    .line 960
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$NightModeBean;->value:Z

    return v0
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$NightModeBean;->end:Ljava/lang/String;

    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$NightModeBean;->start:Ljava/lang/String;

    return-void
.end method

.method public setValue(Z)V
    .locals 0

    .line 964
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$NightModeBean;->value:Z

    return-void
.end method

.method public setWakeupStyle(Ljava/lang/String;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$NightModeBean;->wakeupStyle:Ljava/lang/String;

    return-void
.end method
