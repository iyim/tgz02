.class public Lcom/taobao/orange/impl/HmacSign;
.super Ljava/lang/Object;
.source "HmacSign.java"

# interfaces
.implements Lcom/taobao/orange/inner/ISign;


# static fields
.field private static final DIGITS:[C

.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field private static final TAG:Ljava/lang/String; = "HmacSign"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 21
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/orange/impl/HmacSign;->DIGITS:[C

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private encodeHex([B)[C
    .locals 7

    .line 52
    array-length v0, p1

    shl-int/lit8 v1, v0, 0x1

    .line 53
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 56
    sget-object v5, Lcom/taobao/orange/impl/HmacSign;->DIGITS:[C

    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v3

    add-int/lit8 v3, v4, 0x1

    .line 57
    aget-byte v6, p1, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private hmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "utf-8"

    const-string v1, "HmacSHA1"

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 38
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v4, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lcom/taobao/orange/impl/HmacSign;->encodeHex([B)[C

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 46
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    return-object p2

    :cond_1
    return-object v3

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 42
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "HmacSign"

    const-string v1, "hmacSha1"

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v3
.end method


# virtual methods
.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-direct {p0, p4, p3}, Lcom/taobao/orange/impl/HmacSign;->hmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
