.class public Lcom/uc/base/net/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final CR:I = 0xd

.field public static final HT:I = 0x9

.field public static final LF:I = 0xa

.field public static final SP:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static StringToLong(Ljava/lang/String;)J
    .locals 2

    .line 35
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static containsChinese(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "[\\u4e00-\\u9fa5]"

    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 55
    invoke-static {p0, p1, v0}, Lcom/uc/base/net/util/Util;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 83
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 88
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    if-eq v3, v6, :cond_5

    if-ge v3, v2, :cond_5

    if-nez p2, :cond_3

    if-eq v5, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    add-int/2addr v4, v5

    if-ltz v3, :cond_4

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    add-int/2addr v5, v3

    .line 89
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_5
    if-nez p2, :cond_7

    if-eq v5, v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v3, 0x1

    :goto_5
    add-int/2addr v4, v3

    .line 98
    new-array v3, v4, [Ljava/lang/String;

    .line 100
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    if-eq v5, v6, :cond_b

    if-ge v5, v2, :cond_b

    if-nez p2, :cond_8

    if-eq v7, v5, :cond_9

    .line 104
    :cond_8
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v8

    add-int/lit8 v8, v8, 0x1

    :cond_9
    if-ltz v5, :cond_a

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    add-int/2addr v7, v5

    .line 102
    invoke-virtual {p0, p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    goto :goto_6

    :cond_b
    if-nez p2, :cond_c

    if-eq v7, v2, :cond_d

    :cond_c
    sub-int/2addr v4, v0

    .line 112
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    :cond_d
    return-object v3

    .line 78
    :cond_e
    :goto_8
    new-array p1, v0, [Ljava/lang/String;

    aput-object p0, p1, v1

    return-object p1
.end method

.method public static urlEncodeKeepAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ltz v4, :cond_3

    const/16 v5, 0x7f

    if-le v4, v5, :cond_2

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    :goto_1
    :try_start_0
    const-string v4, "%x"

    const/4 v5, 0x1

    .line 155
    new-array v6, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/math/BigInteger;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    .line 158
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_4

    const-string v6, "%"

    .line 159
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v6, v4, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    aget-char v6, v4, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
