.class public Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private mBuildType:Ljava/lang/String;

.field private mCpuAbi:Ljava/lang/String;

.field private mMac:Ljava/lang/String;

.field private mManufacturer:Ljava/lang/String;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Ljava/lang/String;

.field private mOpenGLVersion:Ljava/lang/String;

.field private mOsVersion:Ljava/lang/String;

.field private mRamSize:Ljava/lang/String;

.field private mSdcardSize:J

.field private mSdkVersion:Ljava/lang/String;

.field private mUTDID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.product.cpu.abilist"

    invoke-static {v1}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ro.product.cpu.abilist32"

    .line 122
    invoke-static {v2}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.product.cpu.abilist64"

    .line 123
    invoke-static {v1}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mCpuAbi:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mCpuAbi:Ljava/lang/String;

    const-string v2, "cpuAbi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Lcom/ta/audid/collect/DeviceInfo2;->getWifiMacID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMac:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMac:Ljava/lang/String;

    const-string v2, "mac"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ro.opengles.version"

    .line 129
    invoke-static {v0}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mOpenGLVersion:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mOpenGLVersion:Ljava/lang/String;

    const-string v2, "openGL_Version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/StorageUtil;->getAvailableSdCardSize()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mSdcardSize:J

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mSdcardSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sdcardSize"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mUTDID:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mUTDID:Ljava/lang/String;

    const-string/jumbo v3, "utdid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p1}, Lcom/ta/audid/collect/DeviceInfo2;->getMemFreeSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mRamSize:Ljava/lang/String;

    .line 139
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mRamSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ramSize"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mModel:Ljava/lang/String;

    .line 142
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mModel:Ljava/lang/String;

    const-string v1, "model"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mManufacturer:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mManufacturer:Ljava/lang/String;

    const-string v1, "manufacturer"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mOsVersion:Ljava/lang/String;

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mOsVersion:Ljava/lang/String;

    const-string v1, "osVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mBuildType:Ljava/lang/String;

    .line 151
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mBuildType:Ljava/lang/String;

    const-string v1, "buildType"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mSdkVersion:Ljava/lang/String;

    .line 154
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mSdkVersion:Ljava/lang/String;

    const-string/jumbo v1, "sdkVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBuildType()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mBuildType:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuInfo()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenGLVersion()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mOpenGLVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRamSize()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mRamSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSdcardSize()Ljava/lang/String;
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mSdcardSize:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUTDID()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->mUTDID:Ljava/lang/String;

    return-object v0
.end method
