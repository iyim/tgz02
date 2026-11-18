.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ShieldEyeModeBean;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTDeviceInfoGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShieldEyeModeBean"
.end annotation


# instance fields
.field private enable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 642
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ShieldEyeModeBean;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 646
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ShieldEyeModeBean;->enable:Z

    return-void
.end method
