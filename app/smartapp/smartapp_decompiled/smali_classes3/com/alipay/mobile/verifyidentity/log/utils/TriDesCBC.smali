.class public Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;
.super Ljava/lang/Object;
.source "TriDesCBC.java"


# static fields
.field private static final a:Ljava/lang/String; = "TriDesCBC"

.field private static b:Ljava/lang/String; = "DESede/CBC/PKCS5Padding"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
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

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 43
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;->decrypt(Ljava/lang/String;[B)[B

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 46
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    :cond_1
    return-object p1
.end method

.method public static decrypt(Ljava/lang/String;[B)[B
    .locals 3

    .line 69
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v1, "DESede"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 71
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {p0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 72
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;->b:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 73
    invoke-virtual {v1, v2, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 74
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    sget-object p1, Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;->encrypt(Ljava/lang/String;[B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 34
    new-instance v0, Ljava/lang/String;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :cond_1
    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;[B)[B
    .locals 3

    .line 54
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v1, "DESede"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 56
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {p0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 57
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;->b:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 58
    invoke-virtual {v1, v2, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    sget-object p1, Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
