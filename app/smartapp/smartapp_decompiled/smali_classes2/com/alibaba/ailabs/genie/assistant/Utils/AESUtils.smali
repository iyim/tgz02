.class public Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils;
.super Ljava/lang/Object;
.source "AESUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils$CryptoProvider;
    }
.end annotation


# static fields
.field private static final AES:Ljava/lang/String; = "AES"

.field private static final CBC_PKCS5_PADDING:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final SHA1PRNG:Ljava/lang/String; = "SHA1PRNG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 2

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    const-string v1, "0123456789ABCDEF"

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p1, p1, 0xf

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 119
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Decoder;->decodeToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 120
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils;->decrypt(Ljava/lang/String;[B)[B

    move-result-object p0

    .line 121
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static decrypt(Ljava/lang/String;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils;->getRawKey([B)[B

    move-result-object p0

    .line 133
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "AES/CBC/PKCS5Padding"

    .line 134
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 135
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 136
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils;->encrypt(Ljava/lang/String;[B)[B

    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils;->getRawKey([B)[B

    move-result-object p0

    .line 104
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "AES/CBC/PKCS5Padding"

    .line 105
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 106
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 107
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateKey()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 34
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x14

    .line 35
    new-array v1, v1, [B

    .line 36
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 37
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getRawKey([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES"

    .line 47
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "SHA1PRNG"

    const/16 v3, 0x17

    if-le v1, v3, :cond_0

    .line 53
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils$CryptoProvider;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils$CryptoProvider;-><init>()V

    invoke-static {v2, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v1

    goto :goto_0

    .line 54
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_1

    const-string v1, "Crypto"

    .line 55
    invoke-static {v2, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 62
    :goto_0
    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    const/16 p0, 0x80

    .line 63
    invoke-virtual {v0, p0, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 65
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 66
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 148
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 149
    aget-byte v2, p0, v1

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils;->appendHex(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
