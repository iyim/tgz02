.class public Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# static fields
.field public static final REQUEST_LOCATE_INTERVAL:J = 0x493e0L

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1


# instance fields
.field private bssid:Ljava/lang/String;

.field private cellId:Ljava/lang/String;

.field private volatile cellRssi:I

.field private context:Landroid/content/Context;

.field private isWifiActive:Ljava/lang/String;

.field private lac:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field private wifiStrength:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->cellRssi:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getLocationInfo(Landroid/content/Context;)Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;
    .locals 1

    .line 57
    new-instance v0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;-><init>()V

    .line 58
    iput-object p0, v0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->context:Landroid/content/Context;

    .line 60
    invoke-static {p0, v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setCellInfos(Landroid/content/Context;Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;)V

    .line 61
    invoke-static {p0, v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setLocationInfos(Landroid/content/Context;Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;)V

    .line 62
    invoke-static {p0, v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setWifiInfos(Landroid/content/Context;Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;)V

    return-object v0
.end method

.method private static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    .line 435
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    return v2

    .line 438
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 441
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method private static getWifiConfigurationFromSSID(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "wifi"

    .line 454
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_1

    return-object v0

    .line 458
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 463
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 465
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private static setCellInfos(Landroid/content/Context;Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;)V
    .locals 10

    const-string v0, "phone"

    .line 206
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 209
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "e"

    const-string v7, ""

    if-ne v2, v3, :cond_3

    .line 222
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_2

    .line 225
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8

    .line 226
    :try_start_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 230
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_1

    :cond_1
    move-object v1, v7

    .line 232
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8

    .line 233
    :try_start_4
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_7

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v4, v7

    :goto_2
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v7

    move-object v4, v2

    goto :goto_3

    :cond_2
    move-object v1, v7

    move-object v3, v1

    move-object v4, v3

    goto/16 :goto_7

    :catch_3
    move-exception v1

    move-object v2, v7

    move-object v3, v2

    move-object v4, v3

    .line 236
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v6, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    move-object v1, v2

    goto/16 :goto_7

    .line 240
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_5

    .line 243
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 245
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 247
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8

    .line 249
    :try_start_7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v2, v7

    move-object v4, v2

    goto :goto_6

    :cond_4
    move-object v1, v7

    move-object v3, v1

    .line 252
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 253
    :try_start_9
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    move-object v2, v7

    move-object v7, v4

    move-object v4, v1

    move-object v1, v3

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v9, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_6

    :catch_6
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_6

    :cond_5
    move-object v1, v7

    move-object v2, v1

    move-object v4, v2

    :goto_5
    move-object v3, v2

    goto :goto_7

    :catch_7
    move-exception v1

    move-object v2, v7

    move-object v3, v2

    move-object v4, v3

    .line 256
    :goto_6
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v6, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    move-object v3, v7

    move-object v7, v2

    .line 259
    :goto_7
    invoke-virtual {p1, v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setMcc(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1, v4}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setMnc(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, v7}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setCellId(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v3}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setLac(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    .line 266
    :catch_8
    :try_start_b
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_6

    return-void

    .line 270
    :cond_6
    new-instance v0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo$1;

    invoke-direct {v0, p1, p0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo$1;-><init>(Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;Landroid/telephony/TelephonyManager;)V

    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    return-void
.end method

.method private static setLocationInfos(Landroid/content/Context;Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;)V
    .locals 12

    const-string v0, "network"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "location"

    .line 141
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 145
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    if-eqz v3, :cond_0

    .line 147
    :try_start_1
    new-instance v11, Lcom/alipay/security/mobile/module/deviceinfo/listener/SecLocationListener;

    invoke-direct {v11}, Lcom/alipay/security/mobile/module/deviceinfo/listener/SecLocationListener;-><init>()V

    const-string v4, "network"

    const-wide/32 v5, 0x493e0

    const/4 v7, 0x0

    .line 148
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v3, v2

    move-object v8, v11

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 152
    invoke-virtual {v2, v11}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 155
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setLatitude(Ljava/lang/String;)V

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setLongitude(Ljava/lang/String;)V

    :cond_0
    const-string v0, "phone"

    .line 166
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    .line 168
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz p0, :cond_1

    .line 173
    invoke-virtual {p1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-double v1, v1

    const-wide v3, 0x40cc200000000000L    # 14400.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    :try_start_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setLatitude(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    int-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    :try_start_3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setLongitude(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static setWifiInfos(Landroid/content/Context;Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;)V
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "connectivity"

    .line 287
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    .line 289
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setIsWifiActive(Ljava/lang/String;)V

    const-string v1, "wifi"

    .line 293
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 295
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 297
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setBssid(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setSsid(Ljava/lang/String;)V

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setWifiStrength(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCellConnectivity()Z
    .locals 1

    .line 312
    iget v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->cellRssi:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCellId()Ljava/lang/String;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->cellId:Ljava/lang/String;

    return-object v0
.end method

.method public getCellRssi()D
    .locals 2

    .line 321
    iget v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->cellRssi:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "."

    :try_start_0
    const-string v1, "wifi"

    .line 383
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 386
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v2, p1, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getIsWifiActive()Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->isWifiActive:Ljava/lang/String;

    return-object v0
.end method

.method public getLac()Ljava/lang/String;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->lac:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiListNearby()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget-object v1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "wifi"

    .line 335
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    return-object v0

    .line 340
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 345
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 346
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 347
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_1
    const-string v6, "wifiMac"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v6, "ssid"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "rssi"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getWifiStrength()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->wifiStrength:Ljava/lang/String;

    return-object v0
.end method

.method public isGPSOpen()Z
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "location"

    .line 365
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v1, "gps"

    .line 371
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWifiEncrypted()Z
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "wifi"

    .line 406
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    return v1

    .line 410
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 414
    :cond_2
    iget-object v2, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getWifiConfigurationFromSSID(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    .line 418
    :cond_3
    invoke-static {v0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->bssid:Ljava/lang/String;

    return-void
.end method

.method public setCellId(Ljava/lang/String;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->cellId:Ljava/lang/String;

    return-void
.end method

.method public setCellRssi(I)V
    .locals 0

    .line 663
    iput p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->cellRssi:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setIsWifiActive(Ljava/lang/String;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->isWifiActive:Ljava/lang/String;

    return-void
.end method

.method public setLac(Ljava/lang/String;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->lac:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->mcc:Ljava/lang/String;

    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->mnc:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setWifiStrength(Ljava/lang/String;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->wifiStrength:Ljava/lang/String;

    return-void
.end method
