.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "MtopAlibabaGenieSettingsQueryDetailResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;
    }
.end annotation


# instance fields
.field private model:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;",
            ">;"
        }
    .end annotation
.end field

.field private msgCode:Ljava/lang/String;

.field private msgInfo:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData;->model:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMsgCode()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData;->msgCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData;->success:Z

    return v0
.end method

.method public setModel(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData;->model:Ljava/util/ArrayList;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingsQueryDetailResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method
