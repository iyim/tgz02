.class public Lcom/alibaba/ailabs/genie/assistant/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/device/IDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/Device$IForbiddenListener;
    }
.end annotation


# static fields
.field private static final DEVICE_ID_TYPE_MAC:I = 0x0

.field private static final DEVICE_ID_TYPE_SN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Device"

.field private static volatile mMainHandler:Landroid/os/Handler;


# instance fields
.field private imeiNull:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

.field private mForbiddenListener:Lcom/alibaba/ailabs/genie/assistant/Device$IForbiddenListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->imeiNull:Z

    .line 45
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    .line 46
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    .line 47
    iget-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    iput-object p5, p4, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->devSecretKey:Ljava/lang/String;

    .line 48
    iput-object p3, p4, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->configPath:Ljava/lang/String;

    .line 49
    iput-object p1, p4, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->cacheDir:Ljava/lang/String;

    .line 50
    iput-object p2, p4, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->fileDir:Ljava/lang/String;

    .line 51
    iput-object p7, p4, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->libDir:Ljava/lang/String;

    const-string p1, "ro.genie.board.sn"

    .line 52
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->sn:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    const-string p2, "ro.genie.odmname"

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->odmInfo:Ljava/lang/String;

    const-string p1, "ro.product.submodel"

    .line 55
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "ro.product.model"

    .line 57
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    iput-object p1, p2, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->vendorInfo:Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->appVersion:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p2, p1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->systemVer:Ljava/lang/String;

    .line 62
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    const/4 p2, 0x0

    iput p2, p1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->deviceIDType:I

    .line 63
    iput-object p6, p1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->caPath:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/Device;->getExtInfo()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->extInfo:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getBizType()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->bizType:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getBizGroup()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->bizGroup:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    iput p2, p1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->accountMode:I

    .line 68
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isCmccDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    const-string p2, "h2-ipv6.g-aicloud.alibaba.com"

    iput-object p2, p1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->gatewayHostH2:Ljava/lang/String;

    const-string p2, "ws-ipv6.g-aicloud.alibaba.com"

    .line 70
    iput-object p2, p1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->gatewayHostWS:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/Device;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getExtInfo()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 152
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 153
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isCmccDevice()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "extDeviceId"

    const-string v5, "extType"

    const-string v6, "Device"

    if-eqz v2, :cond_6

    :try_start_1
    const-string v2, "getExtInfo: cmcc"

    .line 154
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "chinaMobile"

    .line 155
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    invoke-static {v3}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getMacAddr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isPreEnv()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ":"

    if-eqz v3, :cond_0

    :try_start_2
    const-string v3, "getExtInfo: isPreEnv"

    .line 159
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmcc-500758-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 162
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isDeviceS1L()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "getExtInfo: isDeviceS1L"

    .line 163
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmcc-500801-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 165
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isDeviceS3()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "getExtInfo: isDeviceS3"

    .line 166
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmcc-501344-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 168
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isDeviceS5()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "getExtInfo: isDeviceS5"

    .line 169
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmcc-501840-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 171
    :cond_3
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isDeviceS7()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "getExtInfo: isDeviceS7"

    .line 172
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmcc-501860-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 174
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isDeviceS4A02()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "getExtInfo: isDeviceS4A02"

    .line 175
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmcc-589383-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v0

    .line 179
    :goto_0
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "extension"

    .line 180
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 181
    :cond_6
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isChinaUnicom()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "persist.sys.imei"

    if-eqz v2, :cond_7

    :try_start_3
    const-string v2, "chinaUnicom"

    .line 182
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    invoke-static {v7}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->imeiNull:Z

    const-string v3, "cuei"

    .line 185
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 187
    :cond_7
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->isNjTelecom()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "chinaTelecom"

    .line 188
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "devType"

    const-string v5, "C2C00200FF04031005"

    .line 189
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sn"

    const-string v5, "ro.genie.board.sn"

    .line 190
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-static {v3}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getMacAddr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mac"

    .line 192
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    invoke-static {v7}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->imeiNull:Z

    const-string v3, "ctei"

    .line 195
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_8
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 3

    .line 308
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Device;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 309
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;

    monitor-enter v0

    .line 310
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/Device;->mMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 311
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/Device;->mMainHandler:Landroid/os/Handler;

    .line 313
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 315
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/Device;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized getWifiMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "wifi"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 76
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getWifiMac"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get AP mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-boolean v0, Lcom/alibaba/ailabs/genie/assistant/Global;->SECURE_CONNECT_ENABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    monitor-exit p0

    return-object p1

    .line 83
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 87
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x2

    .line 88
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-ne v0, v2, :cond_2

    const-string v0, "getWifiMac"

    const-string v2, "enabling, will not close"

    .line 89
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "getWifiMac"

    const-string v2, "wifi is not enabled, open it."

    .line 92
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v2, 0x1

    .line 94
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v3, :cond_7

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_5

    :try_start_3
    const-string v0, "getWifiMac"

    const-string v3, "wait wifi open"

    .line 98
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_4
    const-string v0, "getWifiMac"

    const-string v3, "sleep exception"

    .line 101
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 103
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-ne v0, v3, :cond_4

    const-string v0, "getWifiMac"

    const-string v3, "wifi is opened."

    .line 104
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "getWifiMac"

    const-string v3, "getConnectionInfo error"

    .line 107
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 110
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    const-string v0, "02:00:00:00:00:00"

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_4
    const-string v0, "getWifiMac"

    const-string v3, "not WIFI_STATE_ENABLED"

    .line 116
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    const-string p1, "getWifiMac"

    const-string v0, "can not open wifi after wait several seconds"

    .line 125
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    :cond_6
    monitor-exit p0

    return-object v1

    :cond_7
    :try_start_5
    const-string p1, "getWifiMac"

    const-string v0, "setWifiEnable failed"

    .line 129
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    monitor-exit p0

    return-object v1

    :cond_8
    :try_start_6
    const-string v0, "getWifiMac"

    const-string v2, "wifi is enabled."

    .line 133
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, "getWifiMac"

    const-string v0, "getConnectionInfo error"

    .line 136
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    monitor-exit p0

    return-object v1

    .line 139
    :cond_9
    :try_start_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public static isMuteState(Landroid/content/Context;)Z
    .locals 3

    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    :try_start_0
    const-string v0, "audio"

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 338
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_0
    :try_start_1
    const-string p0, "persist.sys.audio.ali_mic_mute"

    .line 346
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 347
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/StrUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 349
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public cleanAllPlay()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->cleanAllPlayer(Landroid/content/Context;Z)V

    return-void
.end method

.method public getDeviceInfo()Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfo bizType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    iget-object v1, v1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bizGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    iget-object v1, v1, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->bizGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    iget-object v0, v0, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->extInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->imeiNull:Z

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/Device;->getExtInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->extInfo:Ljava/lang/String;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mDeviceInfo:Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;

    return-object v0
.end method

.method public getForbiddenListener()Lcom/alibaba/ailabs/genie/assistant/Device$IForbiddenListener;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mForbiddenListener:Lcom/alibaba/ailabs/genie/assistant/Device$IForbiddenListener;

    return-object v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Device;->getWifiMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenStatus()Z
    .locals 4

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    const-string v1, "Device"

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreenStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSysProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 242
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasNetwork()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isFirstStart()Z
    .locals 4

    const/4 v0, 0x0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 256
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isFristStart(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isForbidden()Z
    .locals 4

    const-string v0, "Device"

    const/4 v1, 0x1

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/Device;->getForbiddenListener()Lcom/alibaba/ailabs/genie/assistant/Device$IForbiddenListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 271
    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/assistant/Device$IForbiddenListener;->onGetForbidden()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "isForbidden, because external"

    .line 272
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    .line 276
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    const-string v2, "isForbidden, because not Boot Wizard"

    .line 282
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/Device;->isMuteState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "isForbidden, because mute"

    .line 292
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isForbiddenSession()Z
    .locals 3

    const-string v0, "persist.sys.forbidden_mode"

    .line 320
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forbiddenModeFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    .line 322
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Device;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/Device$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/assistant/Device$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/Device;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return v0
.end method

.method public isHomePage()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isHomePage(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setForbiddenListener(Lcom/alibaba/ailabs/genie/assistant/Device$IForbiddenListener;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Device;->mForbiddenListener:Lcom/alibaba/ailabs/genie/assistant/Device$IForbiddenListener;

    return-void
.end method
