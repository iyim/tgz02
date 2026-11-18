.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "MtopAlibabaGenieSettingUpdateResponse.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
        "Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;"
    }
.end annotation


# instance fields
.field protected model:Ljava/lang/Object;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "model"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public setModel(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;->model:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/MtopAlibabaGenieSettingUpdateResponse;->model:Ljava/lang/Object;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
