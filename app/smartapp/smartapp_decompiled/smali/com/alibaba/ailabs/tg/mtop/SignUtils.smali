.class public Lcom/alibaba/ailabs/tg/mtop/SignUtils;
.super Ljava/lang/Object;
.source "SignUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x10

    .line 70
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 73
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    .line 75
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 76
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static getMd5Fingerprint(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/mtop/SignUtils;->getMd5FingerprintFromPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMd5FingerprintFromPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/mtop/SignUtils;->getSignatureFromPackage(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/mtop/SignUtils;->getMd5FingerprintFromSign([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMd5FingerprintFromSign([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "X.509"

    .line 38
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 40
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/mtop/SignUtils;->getThumbPrint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSecurityGuardAuthCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/mtop/SignUtils;->getMd5Fingerprint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/mtop/SignAuthMaps;->getSignAuthCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSignatureFromPackage(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 50
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p1, 0x0

    .line 51
    aget-object p0, p0, p1

    .line 52
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getThumbPrint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 61
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 64
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 65
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/mtop/SignUtils;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
