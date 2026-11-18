.class public Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;
.super Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;
.source "DeviceDataReponseModel.java"


# static fields
.field public static final ILLEGAL_REQUEST:I = 0x3

.field public static final NETFAIL:I = 0x2

.field public static final SERVER_STATUS_ILLEGAL:Ljava/lang/String; = "APPKEY_ERROR"

.field public static final SERVER_STATUS_OK:Ljava/lang/String; = "SUCCESS"

.field public static final SUCCESS:I = 0x1


# instance fields
.field public agentSwitch:Ljava/lang/String;

.field public apdid:Ljava/lang/String;

.field public appListVer:Ljava/lang/String;

.field public bugTrackSwitch:Ljava/lang/String;

.field public currentTime:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public vkeySwitch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAgentSwitch()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->agentSwitch:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0"

    :cond_0
    return-object v0
.end method

.method public getApdid()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->apdid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppListVer()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->appListVer:Ljava/lang/String;

    return-object v0
.end method

.method public getBugTrackSwitch()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->bugTrackSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->currentTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSwitch()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->bugTrackSwitch:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getRequestResult()I
    .locals 3

    .line 63
    iget-boolean v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->success:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->apdid:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->resultCode:Ljava/lang/String;

    const-string v2, "APPKEY_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    return v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVkeySwitch()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->vkeySwitch:Ljava/lang/String;

    return-object v0
.end method

.method public setApdid(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->apdid:Ljava/lang/String;

    return-void
.end method

.method public setAppListVer(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->appListVer:Ljava/lang/String;

    return-void
.end method

.method public setBugTrackSwitch(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->bugTrackSwitch:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTime(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->currentTime:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->token:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->version:Ljava/lang/String;

    return-void
.end method

.method public setVkeySwitch(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->vkeySwitch:Ljava/lang/String;

    return-void
.end method
