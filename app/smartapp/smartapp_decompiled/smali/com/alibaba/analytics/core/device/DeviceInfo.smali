.class public Lcom/alibaba/analytics/core/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private access:Ljava/lang/String;

.field private accessSubType:Ljava/lang/String;

.field private aid:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private binTime:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private cpu:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private screenHeight:I

.field private screenWidth:I

.field private serialNo:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private utdid:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->imei:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->imsi:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->cpu:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->carrier:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->deviceId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->deviceModel:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->country:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->language:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->timezone:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->resolution:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->access:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->accessSubType:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->brand:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->appVersion:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->versionCode:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->osName:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->osVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->screenWidth:I

    .line 23
    iput v1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->screenHeight:I

    .line 24
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->utdid:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->aid:Ljava/lang/String;

    const-string v1, "0"

    .line 28
    iput-object v1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->binTime:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->serialNo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccess()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->access:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessSubType()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->accessSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBinTime()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->binTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCpu()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->cpu:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->screenWidth:I

    return v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method getTimezone()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->access:Ljava/lang/String;

    return-void
.end method

.method public setAccessSubType(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->accessSubType:Ljava/lang/String;

    return-void
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->aid:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setBinTime(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->binTime:Ljava/lang/String;

    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->brand:Ljava/lang/String;

    return-void
.end method

.method setCarrier(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->carrier:Ljava/lang/String;

    return-void
.end method

.method setCountry(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->country:Ljava/lang/String;

    return-void
.end method

.method setCpu(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->cpu:Ljava/lang/String;

    return-void
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method setImei(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method setImsi(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->imsi:Ljava/lang/String;

    return-void
.end method

.method setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->language:Ljava/lang/String;

    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->osName:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->osVersion:Ljava/lang/String;

    return-void
.end method

.method setResolution(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->screenHeight:I

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->screenWidth:I

    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->serialNo:Ljava/lang/String;

    return-void
.end method

.method setTimezone(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->timezone:Ljava/lang/String;

    return-void
.end method

.method setUtdid(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->utdid:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/alibaba/analytics/core/device/DeviceInfo;->versionCode:Ljava/lang/String;

    return-void
.end method
