.class public Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;
.super Ljava/lang/Object;
.source "EnvInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a()Ljava/lang/Object;
    .locals 3

    const-string v0, "EnvInfoUtil"

    :try_start_0
    const-string v1, "com.alipay.mobile.verifyidentity.module.fingerprint.SafepayChecker"

    .line 121
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "getFingerprintChecker FAILED!!!"

    .line 126
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "getFingerprintChecker FAILED With Exception!!!"

    .line 128
    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 9

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 88
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->a()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    .line 90
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, v8

    const-string p0, "getFpSecdata"

    .line 89
    invoke-static {v3, p0, v5, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFpSecdata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnvInfoUtil"

    invoke-static {v3, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "getFpSecdata\u8017\u65f6\uff1a"

    .line 92
    invoke-static {v3, v2, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz p0, :cond_0

    .line 94
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getBaseEnvInfo()Lcom/alibaba/fastjson/JSONObject;
    .locals 6

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 55
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apdid"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getApdidToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apdidToken"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appName"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appVersion"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getViSdkVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "viSdkVersion"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceType"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "EnvInfoUtil"

    const-string v4, "AppInfo\u62fc\u63a5\u8017\u65f6\uff1a"

    .line 62
    invoke-static {v3, v4, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "deviceModel"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileManufacturer()Ljava/lang/String;

    move-result-object v4

    const-string v5, "manufacturer"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "osVersion"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "DeviceInfo\u62fc\u63a5\u8017\u65f6\uff1a"

    .line 68
    invoke-static {v3, v4, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public static getBioInfo()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 159
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bioMetaInfo"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getViSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "viSdkVersion"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceType"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceModel"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "osVersion"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBioMetaInfo()Ljava/lang/String;
    .locals 7

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 140
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 141
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v2, "com.alipay.mobile.security.bio.api.BioDetectorBuilder"

    const-string v5, "getMetaInfos"

    invoke-static {v2, v5, v4, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u5230\u751f\u7269\u4fe1\u606f\uff08getBioMetaInfo\uff09:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnvInfoUtil"

    invoke-static {v4, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "getBioMetaInfo\u8017\u65f6\uff1a"

    if-eqz v2, :cond_0

    .line 146
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v4, v3, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    .line 150
    :cond_0
    invoke-static {v4, v3, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, ""

    return-object v0
.end method

.method public static getBirdNestInfo()Ljava/lang/String;
    .locals 3

    const-string v0, "com.alipay.mobile.verifyidentity.module.dynamic.helper.BirdNestHelper"

    const-string v1, "getEngineParams"

    .line 231
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5230\u9e1f\u5de2\u4fe1\u606f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnvInfoUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 236
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getEnvInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {v0, v0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getEnvInfoWithExt(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvInfoForMsp(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 175
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 177
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdataJO(Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 178
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getIsSupportFP()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getInstalledCert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getViSdkVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    const-string v5, "secData"

    .line 184
    invoke-virtual {v0, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "sfp"

    .line 187
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "bmi"

    .line 190
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "dm"

    .line 193
    invoke-virtual {v0, p1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "certsn"

    .line 196
    invoke-virtual {v0, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "viv"

    .line 199
    invoke-virtual {v0, p0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEnvInfoWithExt(ZZ)Ljava/lang/String;
    .locals 3

    .line 34
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBaseEnvInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    .line 37
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getIsSupportFP()Ljava/lang/String;

    move-result-object p0

    const-string v2, "isSupportFP"

    invoke-virtual {v1, v2, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdataJO()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "secData"

    .line 40
    invoke-virtual {v1, v2, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 45
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bioMetaInfo"

    invoke-virtual {v1, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBirdNestInfo()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bp"

    invoke-virtual {v1, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "externParams"

    .line 48
    invoke-virtual {v0, p0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFpSecdata()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFpSecdataJO()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdataJO(Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getFpSecdataJO(Z)Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 104
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->a(Z)Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EnvInfoUtil"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstalledCert(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 217
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "com.alipay.mobile.verifyidentity.module.cert.helper.CertHelper"

    const-string v2, "getInstalledCert"

    invoke-static {p0, v2, v1, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u5230\u672c\u5730\u8bc1\u4e66\u72b6\u6001:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnvInfoUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 222
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getIsSupportFP()Ljava/lang/String;
    .locals 9

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 75
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->a()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    .line 76
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v8

    const-string v2, "isFingerprintAvailable"

    .line 75
    invoke-static {v3, v2, v5, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIsSupportFP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnvInfoUtil"

    invoke-static {v4, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "getIsSupportFP\u8017\u65f6\uff1a"

    .line 78
    invoke-static {v4, v3, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    if-nez v2, :cond_0

    const-string v0, "false"

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getSecDataForMsp()Ljava/lang/String;
    .locals 3

    .line 205
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 206
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdataJO()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "secData"

    .line 208
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
