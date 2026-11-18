.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$MusicLightBean;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTDeviceInfoGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicLightBean"
.end annotation


# instance fields
.field private lightstyle:Ljava/lang/String;

.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getLightstyle()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$MusicLightBean;->lightstyle:Ljava/lang/String;

    return-object v0
.end method

.method public isValue()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$MusicLightBean;->value:Z

    return v0
.end method

.method public setLightstyle(Ljava/lang/String;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$MusicLightBean;->lightstyle:Ljava/lang/String;

    return-void
.end method

.method public setValue(Z)V
    .locals 0

    .line 502
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$MusicLightBean;->value:Z

    return-void
.end method
