.class public Lcom/alibaba/analytics/core/device/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static PATH_AND_BIN_MONKEY:Ljava/lang/String; = "/system/bin/monkey"

.field private static PATH_AND_BIN_SETPROP:Ljava/lang/String; = "/system/bin/setprop"

.field private static mDeviceInfo:Lcom/alibaba/analytics/core/device/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static _checkIMEISI(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "Alvin3"

    .line 61
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "UTCommon"

    .line 62
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "EI"

    const/4 v2, 0x0

    .line 66
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SI"

    .line 67
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 76
    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 82
    invoke-interface {p0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    :goto_0
    return-void
.end method

.method private static _initDeviceMetadata(Landroid/content/Context;)Lcom/alibaba/analytics/core/device/DeviceInfo;
    .locals 2

    if-eqz p0, :cond_2

    .line 176
    invoke-static {p0}, Lcom/alibaba/analytics/core/device/Device;->getDeviceMetadataFromPPC(Landroid/content/Context;)Lcom/alibaba/analytics/core/device/DeviceInfo;

    move-result-object v0

    .line 178
    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setUtdid(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lcom/alibaba/analytics/core/device/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-static {p0}, Lcom/alibaba/analytics/utils/PhoneInfoUtils2;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setImei(Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/analytics/core/device/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-static {p0}, Lcom/alibaba/analytics/utils/PhoneInfoUtils2;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setImsi(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getDevice(Landroid/content/Context;)Lcom/alibaba/analytics/core/device/DeviceInfo;
    .locals 8

    const-class v0, Lcom/alibaba/analytics/core/device/Device;

    monitor-enter v0

    .line 192
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/device/Device;->mDeviceInfo:Lcom/alibaba/analytics/core/device/DeviceInfo;

    if-eqz v1, :cond_0

    .line 193
    sget-object p0, Lcom/alibaba/analytics/core/device/Device;->mDeviceInfo:Lcom/alibaba/analytics/core/device/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_9

    .line 196
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/analytics/core/device/Device;->_initDeviceMetadata(Landroid/content/Context;)Lcom/alibaba/analytics/core/device/DeviceInfo;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_8

    :try_start_2
    const-string v3, "phone"

    .line 199
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    .line 201
    monitor-exit v0

    return-object v1

    .line 203
    :cond_1
    :try_start_3
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setDeviceModel(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 208
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 209
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setVersionCode(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2, v5}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setAppVersion(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_5
    const-string v4, "Unknown"

    .line 213
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setVersionCode(Ljava/lang/String;)V

    const-string v4, "Unknown"

    .line 214
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setAppVersion(Ljava/lang/String;)V

    .line 216
    :goto_0
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setBrand(Ljava/lang/String;)V

    const-string v4, "Android"

    .line 217
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setOsName(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/alibaba/analytics/core/device/Device;->isYunOSSystem()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "aliyunos"

    .line 219
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setOsName(Ljava/lang/String;)V

    .line 221
    :cond_2
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setOsVersion(Ljava/lang/String;)V

    .line 222
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 223
    invoke-static {v5, v4}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 226
    iget-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v5, :cond_5

    .line 228
    iget-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 229
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-virtual {v2, v5}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setCountry(Ljava/lang/String;)V

    .line 230
    iget-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 231
    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setLanguage(Ljava/lang/String;)V

    .line 232
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 234
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const v6, 0x36ee80

    div-int/2addr v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setTimezone(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "8"

    .line 239
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setTimezone(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v4, "8"

    .line 242
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setTimezone(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v4, "Unknown"

    .line 245
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setCountry(Ljava/lang/String;)V

    const-string v4, "Unknown"

    .line 246
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setLanguage(Ljava/lang/String;)V

    const-string v4, "8"

    .line 247
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setTimezone(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 250
    :goto_1
    :try_start_6
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v5, "window"

    .line 252
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 253
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 254
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 255
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 256
    invoke-virtual {v2, v5}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setScreenWidth(I)V

    .line 257
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setScreenHeight(I)V

    if-le v5, v4, :cond_6

    xor-int/2addr v5, v4

    xor-int/2addr v4, v5

    xor-int/2addr v5, v4

    .line 263
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setResolution(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_7
    const-string v4, "Unknown"

    .line 265
    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setResolution(Ljava/lang/String;)V

    .line 268
    :goto_2
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setAccess(Ljava/lang/String;)V

    .line 269
    invoke-static {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setAccessSubType(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-static {p0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string p0, ""

    .line 276
    :cond_7
    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setCarrier(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/alibaba/analytics/utils/SystemUtils;->getCpuInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setCpu(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 279
    :catch_2
    monitor-exit v0

    return-object v1

    .line 282
    :cond_8
    :goto_3
    :try_start_8
    sput-object v2, Lcom/alibaba/analytics/core/device/Device;->mDeviceInfo:Lcom/alibaba/analytics/core/device/DeviceInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 283
    monitor-exit v0

    return-object v2

    .line 285
    :cond_9
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getDeviceMetadataFromPPC(Landroid/content/Context;)Lcom/alibaba/analytics/core/device/DeviceInfo;
    .locals 8

    if-eqz p0, :cond_1

    .line 92
    invoke-static {p0}, Lcom/alibaba/analytics/core/device/Device;->_checkIMEISI(Landroid/content/Context;)V

    .line 96
    invoke-static {p0}, Lcom/alibaba/analytics/core/device/HardConfig;->getNewDevicePersistentConfig(Landroid/content/Context;)Lcom/alibaba/analytics/core/device/PersistentConfiguration;

    move-result-object v0

    const-string v1, "SI"

    const-string v2, "EI"

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/device/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/device/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v5}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 102
    invoke-static {v5}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 107
    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/analytics/utils/Base64_2;->decode([B)[B

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 108
    :try_start_1
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/analytics/utils/Base64_2;->decode([B)[B

    move-result-object v0

    invoke-direct {v7, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 109
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/analytics/utils/Base64_2;->decode([B)[B

    move-result-object v5

    invoke-direct {v0, v5, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v7, v3

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v7, v3

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v6, v3

    move-object v7, v6

    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v6, v3

    move-object v7, v6

    .line 112
    :goto_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_2
    move-object v0, v3

    .line 117
    :goto_3
    invoke-static {v6}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v7}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    new-instance p0, Lcom/alibaba/analytics/core/device/DeviceInfo;

    invoke-direct {p0}, Lcom/alibaba/analytics/core/device/DeviceInfo;-><init>()V

    .line 120
    invoke-virtual {p0, v0}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v6}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setImei(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v7}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setImsi(Ljava/lang/String;)V

    return-object p0

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/alibaba/analytics/core/device/HardConfig;->getDevicePersistentConfig(Landroid/content/Context;)Lcom/alibaba/analytics/core/device/PersistentConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/device/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/device/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "DID"

    .line 134
    invoke-virtual {v0, v5}, Lcom/alibaba/analytics/core/device/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    :try_start_3
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/analytics/utils/Base64_2;->decode([B)[B

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 144
    :try_start_4
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/analytics/utils/Base64_2;->decode([B)[B

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v3, v6

    goto :goto_6

    :catch_6
    move-exception v4

    goto :goto_4

    :catch_7
    move-exception v4

    goto :goto_5

    :catch_8
    move-exception v4

    move-object v5, v3

    .line 149
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_9
    move-exception v4

    move-object v5, v3

    .line 147
    :goto_5
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 152
    :goto_6
    new-instance v4, Lcom/alibaba/analytics/core/device/DeviceInfo;

    invoke-direct {v4}, Lcom/alibaba/analytics/core/device/DeviceInfo;-><init>()V

    .line 153
    invoke-virtual {v4, v0}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v4, v2}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setImei(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v4, v1}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setImsi(Ljava/lang/String;)V

    .line 157
    invoke-static {p0, v5, v3}, Lcom/alibaba/analytics/core/device/Device;->saveDeviceMetadataToNewPPC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 162
    :cond_1
    new-instance v0, Lcom/alibaba/analytics/core/device/DeviceInfo;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/device/DeviceInfo;-><init>()V

    .line 163
    invoke-static {p0}, Lcom/alibaba/analytics/utils/PhoneInfoUtils2;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {p0}, Lcom/alibaba/analytics/utils/PhoneInfoUtils2;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setImei(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setImsi(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/device/DeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 170
    invoke-static {p0, v1, v2}, Lcom/alibaba/analytics/core/device/Device;->saveDeviceMetadataToNewPPC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isYunOSSystem()Z
    .locals 2

    const-string v0, "java.vm.name"

    .line 289
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lemur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ro.yunos.version"

    .line 291
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static saveDeviceMetadataToNewPPC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    if-eqz p0, :cond_0

    .line 37
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-static {p0}, Lcom/alibaba/analytics/core/device/HardConfig;->getNewDevicePersistentConfig(Landroid/content/Context;)Lcom/alibaba/analytics/core/device/PersistentConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/analytics/utils/Base64_2;->encodeBase64String([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :try_start_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/analytics/utils/Base64_2;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v1

    .line 48
    :goto_0
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 50
    :goto_1
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {v1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "EI"

    .line 51
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/analytics/core/device/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SI"

    .line 52
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/analytics/core/device/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/device/PersistentConfiguration;->commit()Z

    :cond_0
    return-void
.end method
