.class public final Lcom/alipay/security/mobile/module/commonutils/crypto/HotpExUtil;
.super Ljava/lang/Object;
.source "HotpExUtil.java"


# static fields
.field public static final HOTPEX_HASH_LEN:I = 0x14

.field public static final MAX_CODE_LEN:I = 0x8

.field public static final salt1:[B

.field public static final salt2:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648"

    .line 23
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/HotpExUtil;->salt1:[B

    const-string v0, "C9582A82777392CAA65AD7F5228150E3F966C09D6A00288B5C6E0CFB441E111B713B4E0822A8C830"

    .line 25
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/HotpExUtil;->salt2:[B

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static process([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x14

    .line 40
    new-array v1, v0, [B

    .line 41
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/ByteUtil;->initWithByte([BBII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    new-array v0, v0, [B

    .line 47
    array-length v2, v0

    invoke-static {v0, v3, v3, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/ByteUtil;->initWithByte([BBII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    sget-object v2, Lcom/alipay/security/mobile/module/commonutils/crypto/HotpExUtil;->salt1:[B

    invoke-static {p0, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/CryptoUtil;->digestWithHmacSha1([B[B)[B

    move-result-object v2

    .line 53
    array-length v4, v2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    sget-object v2, Lcom/alipay/security/mobile/module/commonutils/crypto/HotpExUtil;->salt2:[B

    invoke-static {p0, v2}, Lcom/alipay/security/mobile/module/commonutils/crypto/CryptoUtil;->digestWithHmacSha1([B[B)[B

    move-result-object p0

    .line 56
    array-length v2, p0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x8

    .line 58
    new-array p0, p0, [B

    const/16 v2, 0x13

    .line 61
    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0xf

    .line 62
    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    const/4 v6, 0x3

    aput-byte v5, p0, v6

    add-int/lit8 v5, v4, 0x1

    .line 63
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v7, 0x2

    aput-byte v5, p0, v7

    add-int/lit8 v5, v4, 0x2

    .line 64
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v7, 0x1

    aput-byte v5, p0, v7

    add-int/2addr v4, v6

    .line 65
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    .line 67
    aget-byte v1, v0, v2

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    .line 68
    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    const/4 v2, 0x5

    add-int/lit8 v3, v1, 0x1

    .line 69
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    const/4 v2, 0x6

    add-int/lit8 v3, v1, 0x2

    .line 70
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    const/4 v2, 0x7

    add-int/2addr v1, v6

    .line 71
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "failed to init hash2."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "failed to init hash1."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static process([BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/crypto/HotpExUtil;->process([B)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-gtz p1, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x8

    if-lt p1, v0, :cond_2

    return-object p0

    .line 93
    :cond_2
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 96
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
