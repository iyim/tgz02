.class public Lcom/aliyun/oss/common/utils/BinaryUtil;
.super Ljava/lang/Object;
.source "BinaryUtil.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 29
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/aliyun/oss/common/utils/BinaryUtil;->HEX_DIGITS:[C

    return-void

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMd5([B)[B
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 42
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 47
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 44
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "MD5 algorithm not found."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeMD5([B)Ljava/lang/String;
    .locals 6

    .line 51
    invoke-static {p0}, Lcom/aliyun/oss/common/utils/BinaryUtil;->calculateMd5([B)[B

    move-result-object p0

    .line 52
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 53
    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 55
    sget-object v4, Lcom/aliyun/oss/common/utils/BinaryUtil;->HEX_DIGITS:[C

    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 56
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static fromBase64String(Ljava/lang/String;)[B
    .locals 0

    .line 36
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toBase64String([B)Ljava/lang/String;
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
