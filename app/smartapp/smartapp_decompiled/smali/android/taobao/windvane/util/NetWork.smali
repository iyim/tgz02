.class public Landroid/taobao/windvane/util/NetWork;
.super Ljava/lang/Object;
.source "NetWork.java"


# static fields
.field public static final CHINA_MOBILE:I = 0x1

.field public static final CHINA_TELECOM:I = 0x3

.field public static final CHINA_UNICOM:I = 0x2

.field public static final CONN_TYPE_GPRS:Ljava/lang/String; = "gprs"

.field public static final CONN_TYPE_NONE:Ljava/lang/String; = "none"

.field public static final CONN_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final SIM_NO:I = -0x1

.field public static final SIM_OK:I = 0x0

.field public static final SIM_UNKNOW:I = -0x2

.field private static connChangerRvr:Landroid/content/BroadcastReceiver; = null

.field public static proxy:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getHttpsProxyInfo(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 3

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    :try_start_0
    const-string v0, "connectivity"

    .line 266
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 267
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 269
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_0

    .line 272
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_0

    .line 273
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p0

    .line 274
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-eqz p0, :cond_0

    .line 276
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p0, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-object v1

    :cond_1
    const-string p0, "https.proxyHost"

    .line 282
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "https.proxyPort"

    .line 283
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 288
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p0, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_2
    return-object v1
.end method

.method public static getNSP(Landroid/content/Context;)I
    .locals 9

    .line 128
    invoke-static {p0}, Landroid/taobao/windvane/util/NetWork;->getSimState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "phone"

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 130
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NSP: "

    invoke-static {v3, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v1, -0x2

    if-eqz v0, :cond_c

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8"

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    const-string v2, "CMCC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "ChinaMobile"

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string/jumbo v4, "\u4e2d\u56fd\u7535\u4fe1"

    .line 149
    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_a

    const-string v4, "ChinaTelecom"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "46003"

    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "ChinaTelcom"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "460003"

    .line 151
    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    const-string/jumbo v6, "\u4e2d\u56fd\u8054\u901a"

    .line 153
    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_9

    const-string v6, "ChinaUnicom"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "46001"

    .line 154
    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "CU-GSM"

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "CHN-CUGSM"

    .line 155
    invoke-virtual {v0, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "CHNUnicom"

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 158
    :cond_4
    invoke-static {p0}, Landroid/taobao/windvane/util/PhoneInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "46002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "46007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v7

    .line 163
    :cond_6
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v5

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v3

    :cond_9
    :goto_2
    return v7

    :cond_a
    :goto_3
    return v5

    :cond_b
    :goto_4
    return v3

    :cond_c
    :goto_5
    return v1

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public static getNetConnType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "connectivity"

    .line 303
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const-string v0, "none"

    const-string v1, "Network"

    if-nez p0, :cond_0

    const-string p0, "can not get Context.CONNECTIVITY_SERVICE"

    .line 306
    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    .line 312
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 315
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v2, :cond_2

    const-string/jumbo p0, "wifi"

    return-object p0

    :cond_1
    const-string v2, "can not get ConnectivityManager.TYPE_WIFI"

    .line 319
    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    .line 323
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 325
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    .line 326
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, p0, :cond_4

    const-string p0, "gprs"

    return-object p0

    :cond_3
    const-string p0, "can not get ConnectivityManager.TYPE_MOBILE"

    .line 330
    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public static getNetWorkSubTypeMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :try_start_0
    const-string v1, "connectivity"

    .line 341
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 342
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    goto :goto_0

    :catch_0
    move-exception p0

    .line 344
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 p0, 0x0

    :goto_0
    const-string/jumbo v2, "type"

    const-string v3, "message"

    if-nez p0, :cond_0

    .line 348
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "NONE"

    .line 349
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 353
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 354
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "WIFI"

    .line 355
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 358
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const-string v4, "2G"

    const-string v5, "3G"

    packed-switch p0, :pswitch_data_0

    const-string v4, "UNKNOWN"

    :goto_1
    move-object v5, v4

    goto :goto_2

    :pswitch_0
    const-string v1, "HSPAP"

    goto :goto_2

    :pswitch_1
    const-string v1, "EHRPD"

    goto :goto_2

    :pswitch_2
    const-string v1, "LTE"

    const-string v4, "4G"

    goto :goto_1

    :pswitch_3
    const-string v1, "EVDO_B"

    goto :goto_2

    :pswitch_4
    const-string v1, "IDEN"

    goto :goto_1

    :pswitch_5
    const-string v1, "HSPA"

    goto :goto_2

    :pswitch_6
    const-string v1, "HSUPA"

    goto :goto_2

    :pswitch_7
    const-string v1, "HSDPA"

    goto :goto_2

    :pswitch_8
    const-string v1, "1xRTT"

    goto :goto_1

    :pswitch_9
    const-string v1, "EVDO_A"

    goto :goto_2

    :pswitch_a
    const-string v1, "EVDO_0"

    goto :goto_2

    :pswitch_b
    const-string v1, "CDMA"

    goto :goto_1

    :pswitch_c
    const-string v1, "UMTS"

    goto :goto_2

    :pswitch_d
    const-string v1, "EDGE"

    goto :goto_1

    :pswitch_e
    const-string v1, "GPRS"

    goto :goto_1

    .line 423
    :goto_2
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "connectivity"

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    nop

    nop

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 95
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 96
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 1

    const-string v0, "connectivity"

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    nop

    nop

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x9

    return p0
.end method

.method public static getProxyInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "port"

    .line 218
    invoke-static {p0}, Landroid/taobao/windvane/util/NetWork;->getNetworkInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    .line 222
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current network:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getProxyInfo"

    invoke-static {v5, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "WIFI"

    .line 223
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "MOBILE UMTS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 229
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "mcc =?"

    const-string p0, "460"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 232
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_4

    const-string p1, "host"

    const-string v4, "proxy"

    .line 235
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "apn"

    .line 237
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apn:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_3

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    .line 244
    :cond_4
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    :cond_5
    if-eqz p0, :cond_7

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v3

    :goto_0
    if-eqz p0, :cond_6

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1

    :catch_1
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_7

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v3

    :cond_8
    :goto_3
    return-object v2
.end method

.method public static getSimState(Landroid/content/Context;)I
    .locals 1

    const-string v0, "phone"

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 55
    invoke-static {p0}, Landroid/taobao/windvane/util/NetWork;->getNetworkType(Landroid/content/Context;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isConnectionInexpensive()Z
    .locals 1

    .line 438
    invoke-static {}, Landroid/taobao/windvane/util/NetWork;->isWiFiActive()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/util/NetWork;->isEthernetActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEthernetActive(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 445
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/taobao/windvane/util/NetWork;->getNetworkType(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public static isWiFiActive()Z
    .locals 1

    .line 434
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/util/NetWork;->isWiFiActive(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isWiFiActive(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 459
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/taobao/windvane/util/NetWork;->getNetworkType(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public static setProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "proxySet"

    if-eqz p0, :cond_2

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 204
    sput-boolean v1, Landroid/taobao/windvane/util/NetWork;->proxy:Z

    .line 205
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "proxyHost"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "proxyPort"

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 208
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 210
    :cond_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p1

    const-string v0, "80"

    invoke-virtual {p1, p0, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 201
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p0

    const-string p1, "false"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 202
    sput-boolean p0, Landroid/taobao/windvane/util/NetWork;->proxy:Z

    :goto_1
    return-void
.end method

.method public static unRegNetWorkRev(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-static {v0, v0}, Landroid/taobao/windvane/util/NetWork;->setProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :try_start_0
    sget-object v0, Landroid/taobao/windvane/util/NetWork;->connChangerRvr:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Landroid/taobao/windvane/util/NetWork;->connChangerRvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
