.class Lunet/org/chromium/net/AndroidNetworkLibrary;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addTestRootCertificate([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation build Lunet/org/chromium/base/annotations/CalledByNativeUnchecked;
    .end annotation

    .line 145
    invoke-static {p0}, Lunet/org/chromium/net/X509Util;->a([B)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clearTestRootCertificates()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .annotation build Lunet/org/chromium/base/annotations/CalledByNativeUnchecked;
    .end annotation

    .line 155
    invoke-static {}, Lunet/org/chromium/net/X509Util;->a()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getDnsServers(Landroid/content/Context;)[[B
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 307
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    .line 309
    filled-new-array {v0, v0}, [I

    move-result-object p0

    const-class v1, B

    invoke-static {v1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0

    .line 311
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_1

    .line 313
    filled-new-array {v0, v0}, [I

    move-result-object p0

    const-class v1, B

    invoke-static {v1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0

    .line 315
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-nez p0, :cond_2

    .line 317
    filled-new-array {v0, v0}, [I

    move-result-object p0

    const-class v1, B

    invoke-static {v1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0

    .line 319
    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p0

    .line 320
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    .line 321
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 322
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    filled-new-array {v0, v0}, [I

    move-result-object p0

    const-class v0, B

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0
.end method

.method private static getIsCaptivePortal(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return v1

    .line 229
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 232
    :cond_2
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_3

    const/16 v0, 0x11

    .line 234
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1

    :catch_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private static getIsRoaming(Landroid/content/Context;)Z
    .locals 2
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 201
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 202
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "foo."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNetworkCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    const-string v0, "phone"

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    const-string v0, "phone"

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    const-string v0, "phone"

    .line 188
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 253
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "wifiInfo"

    .line 256
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_1

    .line 258
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static haveOnlyLoopbackAddresses()Z
    .locals 4
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    return v0

    .line 101
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 104
    :try_start_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v2
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_0

    return v0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not get network interfaces: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidNetworkLibrary"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isCleartextPermitted(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 293
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    .line 294
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 295
    invoke-virtual {v0, p0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 297
    :cond_0
    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static storeKeyPair(Landroid/content/Context;[B[B)Z
    .locals 2
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 64
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PKEY"

    .line 65
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p2, "KEY"

    .line 66
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "could not store key pair: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AndroidNetworkLibrary"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Lunet/org/chromium/net/AndroidCertVerifyResult;
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, -0x1

    .line 126
    :try_start_0
    invoke-static {p0, p1, p2}, Lunet/org/chromium/net/X509Util;->a([[BLjava/lang/String;Ljava/lang/String;)Lunet/org/chromium/net/AndroidCertVerifyResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 134
    :catch_0
    new-instance p0, Lunet/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {p0, v0}, Lunet/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p0

    .line 132
    :catch_1
    new-instance p0, Lunet/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {p0, v0}, Lunet/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p0

    .line 130
    :catch_2
    new-instance p0, Lunet/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {p0, v0}, Lunet/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p0

    .line 128
    :catch_3
    new-instance p0, Lunet/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {p0, v0}, Lunet/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object p0
.end method
