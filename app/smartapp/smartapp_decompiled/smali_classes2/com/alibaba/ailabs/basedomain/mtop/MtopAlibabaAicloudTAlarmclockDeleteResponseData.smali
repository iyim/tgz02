.class public Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "MtopAlibabaAicloudTAlarmclockDeleteResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private model:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlarmData()Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aligenie.alarm.screen.alarm.deleteAlarm"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->model:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtopAlibabaAicloudTAlarmclockDeleteResponseData{, model=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", statusCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
