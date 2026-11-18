.class public final Lcom/alibaba/ailabs/tg/utils/XxteaUtils;
.super Ljava/lang/Object;
.source "XxteaUtils.java"


# static fields
.field private static final DELTA:I = -0x61c88647


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static MX(IIIII[I)I
    .locals 3

    ushr-int/lit8 v0, p2, 0x5

    shl-int/lit8 v1, p1, 0x2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x3

    shl-int/lit8 v2, p2, 0x4

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    xor-int/2addr p0, p1

    and-int/lit8 p1, p3, 0x3

    xor-int/2addr p1, p4

    .line 10
    aget p1, p5, p1

    xor-int/2addr p1, p2

    add-int/2addr p0, p1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static final decrypt([BLjava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->decrypt([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final decrypt([B[B)[B
    .locals 1

    .line 74
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 78
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->toIntArray([BZ)[I

    move-result-object p0

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->fixKey([B)[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->toIntArray([BZ)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->decrypt([I[I)[I

    move-result-object p0

    const/4 p1, 0x1

    .line 77
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->toByteArray([IZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static decrypt([I[I)[I
    .locals 13

    .line 160
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const/16 v1, 0x34

    add-int/lit8 v2, v0, 0x1

    .line 165
    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x6

    const/4 v2, 0x0

    .line 166
    aget v3, p0, v2

    const v4, -0x61c88647

    mul-int v1, v1, v4

    :goto_0
    if-eqz v1, :cond_2

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit8 v11, v5, 0x3

    move v6, v3

    move v3, v0

    :goto_1
    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    .line 171
    aget v7, p0, v5

    .line 172
    aget v12, p0, v3

    move v5, v1

    move v8, v3

    move v9, v11

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->MX(IIIII[I)I

    move-result v5

    sub-int v6, v12, v5

    aput v6, p0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 174
    :cond_1
    aget v7, p0, v0

    .line 175
    aget v12, p0, v2

    move v5, v1

    move v8, v3

    move v9, v11

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->MX(IIIII[I)I

    move-result v3

    sub-int v3, v12, v3

    aput v3, p0, v2

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static final decryptBase64String(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 94
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncodeUtils;->base64Decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final decryptBase64String(Ljava/lang/String;[B)[B
    .locals 0

    .line 90
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncodeUtils;->base64Decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->decrypt([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static final decryptBase64StringToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncodeUtils;->base64Decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public static final decryptBase64StringToString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncodeUtils;->base64Decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->decrypt([B[B)[B

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public static final decryptToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public static final decryptToString([B[B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->decrypt([B[B)[B

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public static final encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    .line 43
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->encrypt([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final encrypt(Ljava/lang/String;[B)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->encrypt([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final encrypt([BLjava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->encrypt([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final encrypt([B[B)[B
    .locals 1

    .line 18
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 22
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->toIntArray([BZ)[I

    move-result-object p0

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->fixKey([B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->toIntArray([BZ)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->encrypt([I[I)[I

    move-result-object p0

    .line 21
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->toByteArray([IZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static encrypt([I[I)[I
    .locals 14

    .line 138
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const/16 v1, 0x34

    add-int/lit8 v2, v0, 0x1

    .line 143
    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x6

    .line 144
    aget v2, p0, v0

    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_2

    const v1, -0x61c88647

    add-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x2

    and-int/lit8 v2, v2, 0x3

    move v8, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    add-int/lit8 v12, v4, 0x1

    .line 150
    aget v7, p0, v12

    .line 151
    aget v13, p0, v4

    move v6, v1

    move v9, v4

    move v10, v2

    move-object v11, p1

    invoke-static/range {v6 .. v11}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->MX(IIIII[I)I

    move-result v6

    add-int v8, v13, v6

    aput v8, p0, v4

    move v4, v12

    goto :goto_1

    .line 153
    :cond_1
    aget v7, p0, v3

    .line 154
    aget v12, p0, v0

    move v6, v1

    move v9, v4

    move v10, v2

    move-object v11, p1

    invoke-static/range {v6 .. v11}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->MX(IIIII[I)I

    move-result v2

    add-int v4, v12, v2

    aput v4, p0, v0

    move v2, v1

    move v1, v5

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static final encryptToBase64String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncodeUtils;->base64Encode2String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final encryptToBase64String(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->encrypt(Ljava/lang/String;[B)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncodeUtils;->base64Encode2String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final encryptToBase64String([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->encrypt([BLjava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncodeUtils;->base64Encode2String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final encryptToBase64String([B[B)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/tg/utils/XxteaUtils;->encrypt([B[B)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/EncodeUtils;->base64Encode2String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static fixKey([B)[B
    .locals 4

    .line 182
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    return-object p0

    .line 183
    :cond_0
    new-array v0, v1, [B

    .line 184
    array-length v2, p0

    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    .line 185
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0
.end method

.method private static toByteArray([IZ)[B
    .locals 4

    .line 212
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    if-eqz p1, :cond_1

    .line 215
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p1, p0, p1

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v1, v0, -0x3

    if-lt p1, v1, :cond_0

    if-le p1, v0, :cond_2

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    move p1, v0

    .line 222
    :cond_2
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    ushr-int/lit8 v2, v1, 0x2

    .line 225
    aget v2, p0, v2

    and-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x3

    ushr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static toIntArray([BZ)[I
    .locals 6

    .line 193
    array-length v0, p0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    if-eqz p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 199
    new-array p1, p1, [I

    .line 200
    array-length v1, p0

    aput v1, p1, v0

    goto :goto_1

    .line 202
    :cond_1
    new-array p1, v0, [I

    .line 204
    :goto_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    ushr-int/lit8 v2, v1, 0x2

    .line 206
    aget v3, p1, v2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v1, 0x3

    shl-int/lit8 v5, v5, 0x3

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object p1
.end method
