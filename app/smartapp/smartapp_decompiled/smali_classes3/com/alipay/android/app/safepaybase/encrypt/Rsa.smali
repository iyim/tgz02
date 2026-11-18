.class public Lcom/alipay/android/app/safepaybase/encrypt/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 129
    :try_start_0
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v2, 0x2

    .line 130
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 131
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 132
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 134
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 135
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 137
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 139
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    .line 140
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 142
    :goto_0
    :try_start_1
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 143
    array-length v4, p0

    sub-int/2addr v4, v3

    if-ge v4, p1, :cond_0

    array-length v4, p0

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_0
    move v4, p1

    :goto_1
    invoke-virtual {v1, p0, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/2addr v3, p1

    goto :goto_0

    .line 148
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 156
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v2, v0

    .line 150
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 154
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 156
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    move-object p0, v0

    :goto_4
    return-object p0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_3

    .line 154
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    .line 156
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 160
    :cond_3
    :goto_6
    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    const-string v0, "RSA"

    .line 193
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    const/4 v1, 0x2

    .line 194
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 195
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 196
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    const-string v0, "SHA1WithRSA"

    .line 199
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const-string p2, "utf-8"

    .line 202
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 204
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 208
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 45
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Rsa.encrypt"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA"

    .line 47
    invoke-static {v1, p1}, Lcom/alipay/android/app/safepaybase/encrypt/Rsa;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 49
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string p1, "UTF-8"

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 54
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    .line 55
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 57
    :goto_0
    :try_start_1
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 58
    array-length v4, p0

    sub-int/2addr v4, v3

    if-ge v4, p1, :cond_0

    array-length v4, p0

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_0
    move v4, p1

    :goto_1
    invoke-virtual {v1, p0, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/2addr v3, p1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 72
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v0

    .line 66
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 70
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 72
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 76
    :cond_3
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static encryptToByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA"

    .line 88
    invoke-static {v1, p1}, Lcom/alipay/android/app/safepaybase/encrypt/Rsa;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 90
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 91
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string p1, "UTF-8"

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 95
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    .line 96
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 98
    :goto_0
    :try_start_1
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 99
    array-length v4, p0

    sub-int/2addr v4, v3

    if-ge v4, p1, :cond_0

    array-length v4, p0

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_0
    move v4, p1

    :goto_1
    invoke-virtual {v1, p0, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/2addr v3, p1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 113
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v0

    .line 107
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 111
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 113
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 117
    :cond_3
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 35
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 36
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 38
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 39
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "utf-8"

    .line 170
    :try_start_0
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v2, 0x2

    .line 171
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 172
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 173
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    const-string v1, "SHA1WithRSA"

    .line 176
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 178
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    .line 181
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    .line 183
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 185
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
