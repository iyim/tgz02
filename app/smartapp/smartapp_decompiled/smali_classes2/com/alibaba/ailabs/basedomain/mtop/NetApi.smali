.class public final Lcom/alibaba/ailabs/basedomain/mtop/NetApi;
.super Ljava/lang/Object;
.source "NetApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDeleteAlarmResult(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;)V
    .locals 8

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeleteAlarmResult flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alarmId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alarm"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v3, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteRequest;

    invoke-direct {v3}, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteRequest;-><init>()V

    .line 18
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, p2}, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteRequest;->setId(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v2

    const-class v4, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponse;

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getWeatherData(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V
    .locals 6

    .line 31
    new-instance v1, Lcom/alibaba/ailabs/basedomain/mtop/request/GetweatherRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/basedomain/mtop/request/GetweatherRequest;-><init>()V

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/basedomain/mtop/request/GetweatherRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/basedomain/mtop/request/GetweatherRequest;->setTimestamp(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method
