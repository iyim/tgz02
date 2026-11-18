.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "MtopAlibabaAicloudTDeviceInfoSetDeviceSettingResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingResponseData;->model:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingResponseData;->model:Ljava/lang/String;

    return-void
.end method
