.class public Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;
.super Ljava/lang/Object;
.source "ListAlarmV2Request.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private deviceInfo:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.alarm.listAlarmV2"

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->NEED_ECODE:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->deviceInfo:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->authInfo:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->timestamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->deviceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->deviceInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->NEED_SESSION:Z

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/request/ListAlarmV2Request;->VERSION:Ljava/lang/String;

    return-void
.end method
