.class public Lcom/uc/base/net/util/Punycode;
.super Ljava/lang/Object;
.source "Punycode.java"


# static fields
.field static final BASE:I = 0x24

.field static final DAMP:I = 0x2bc

.field static final DELIMITER:C = '-'

.field static final INITIAL_BIAS:I = 0x48

.field static final INITIAL_N:I = 0x80

.field static final SKEW:I = 0x26

.field static final TMAX:I = 0x1a

.field static final TMIN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static adapt(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 208
    div-int/lit16 p0, p0, 0x2bc

    goto :goto_0

    .line 210
    :cond_0
    div-int/lit8 p0, p0, 0x2

    .line 212
    :goto_0
    div-int p1, p0, p1

    add-int/2addr p0, p1

    const/4 p1, 0x0

    :goto_1
    const/16 p2, 0x1c7

    if-le p0, p2, :cond_1

    .line 215
    div-int/lit8 p0, p0, 0x23

    add-int/lit8 p1, p1, 0x24

    goto :goto_1

    :cond_1
    mul-int/lit8 p2, p0, 0x24

    add-int/lit8 p0, p0, 0x26

    .line 218
    div-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method public static codepoint2digit(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int/lit8 v0, p0, -0x30

    const/16 v1, 0x1a

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x61

    if-ge p0, v1, :cond_1

    return p0

    .line 245
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "BAD_INPUT"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const-string v3, "BAD_INPUT"

    const/4 v5, 0x1

    const/16 v6, 0x80

    const/16 v7, 0x48

    if-lez v2, :cond_2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_1

    .line 158
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 159
    invoke-static {v9}, Lcom/uc/base/net/util/Punycode;->isBasic(C)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 162
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/2addr v2, v5

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x0

    const/16 v8, 0x80

    .line 168
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_a

    const/16 v9, 0x24

    move v10, v6

    const/4 v11, 0x1

    const/16 v12, 0x24

    .line 172
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v2, v13, :cond_9

    add-int/lit8 v13, v2, 0x1

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 176
    invoke-static {v2}, Lcom/uc/base/net/util/Punycode;->codepoint2digit(I)I

    move-result v2

    const v14, 0x7fffffff

    sub-int v15, v14, v10

    .line 177
    div-int/2addr v15, v11

    const-string v4, "OVERFLOW"

    if-gt v2, v15, :cond_8

    mul-int v15, v2, v11

    add-int/2addr v10, v15

    if-gt v12, v7, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v15, v7, 0x1a

    if-lt v12, v15, :cond_4

    const/16 v15, 0x1a

    goto :goto_4

    :cond_4
    sub-int v15, v12, v7

    :goto_4
    if-ge v2, v15, :cond_7

    sub-int v2, v10, v6

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v7, v5

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    invoke-static {v2, v7, v6}, Lcom/uc/base/net/util/Punycode;->adapt(IIZ)I

    move-result v7

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v5

    div-int v2, v10, v2

    sub-int/2addr v14, v8

    if-gt v2, v14, :cond_6

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v5

    div-int v2, v10, v2

    add-int/2addr v8, v2

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v5

    rem-int/2addr v10, v2

    int-to-char v2, v8

    .line 200
    invoke-virtual {v1, v10, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v10, 0x1

    move v2, v13

    goto :goto_2

    .line 196
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    rsub-int/lit8 v2, v15, 0x24

    mul-int v11, v11, v2

    add-int/lit8 v12, v12, 0x24

    move v2, v13

    goto :goto_3

    .line 178
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static digit2codepoint(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x61

    return p0

    :cond_0
    const/16 v1, 0x24

    if-ge p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x30

    return p0

    .line 233
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "BAD_INPUT"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz v0, :cond_10

    .line 70
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v1, 0x80

    const/16 v2, 0x48

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 78
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 80
    invoke-static {v7}, Lcom/uc/base/net/util/Punycode;->isBasic(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-lez v6, :cond_3

    const/16 v5, 0x2d

    .line 87
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    move v1, v6

    const/16 v2, 0x80

    const/4 v5, 0x0

    const/16 v7, 0x48

    .line 90
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_f

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const v10, 0x7fffffff

    .line 93
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 94
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v2, :cond_4

    if-ge v11, v10, :cond_4

    move v10, v11

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    sub-int v2, v10, v2

    sub-int/2addr v8, v5

    add-int/lit8 v9, v1, 0x1

    .line 99
    div-int/2addr v8, v9

    const-string v11, "OVERFLOW"

    if-gt v2, v8, :cond_e

    mul-int v2, v2, v9

    add-int/2addr v5, v2

    move v2, v1

    const/4 v1, 0x0

    .line 104
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_d

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ge v8, v10, :cond_7

    add-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    goto :goto_4

    .line 109
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    if-ne v8, v10, :cond_c

    const/16 v8, 0x24

    move v12, v5

    const/16 v9, 0x24

    :goto_5
    const/4 v13, 0x1

    if-gt v9, v7, :cond_8

    const/4 v14, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v14, v7, 0x1a

    if-lt v9, v14, :cond_9

    const/16 v14, 0x1a

    goto :goto_6

    :cond_9
    sub-int v14, v9, v7

    :goto_6
    if-ge v12, v14, :cond_b

    .line 130
    invoke-static {v12}, Lcom/uc/base/net/util/Punycode;->digit2codepoint(I)I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, 0x1

    if-ne v2, v6, :cond_a

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    .line 131
    :goto_7
    invoke-static {v5, v7, v13}, Lcom/uc/base/net/util/Punycode;->adapt(IIZ)I

    move-result v2

    const/4 v5, 0x0

    move/from16 v16, v7

    move v7, v2

    move/from16 v2, v16

    goto :goto_8

    :cond_b
    sub-int/2addr v12, v14

    rsub-int/lit8 v13, v14, 0x24

    .line 126
    rem-int v15, v12, v13

    add-int/2addr v14, v15

    invoke-static {v14}, Lcom/uc/base/net/util/Punycode;->digit2codepoint(I)I

    move-result v14

    int-to-char v14, v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    div-int/2addr v12, v13

    add-int/lit8 v9, v9, 0x24

    goto :goto_5

    :cond_c
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v10, 0x1

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    goto/16 :goto_1

    .line 100
    :cond_e
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    :goto_9
    return-object v0
.end method

.method public static getPunyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "."

    .line 36
    invoke-static {p0, v0}, Lcom/uc/base/net/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p0

    .line 39
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 41
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 42
    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/uc/base/net/util/Punycode;->notJustHasAsciiCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xn--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-static {v5}, Lcom/uc/base/net/util/Punycode;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 45
    :cond_1
    aget-object v4, v1, v3

    .line 47
    :goto_1
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 53
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBasic(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static notJustHasAsciiCode(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    if-ge v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
