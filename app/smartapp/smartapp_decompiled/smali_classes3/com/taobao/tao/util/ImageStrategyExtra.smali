.class public Lcom/taobao/tao/util/ImageStrategyExtra;
.super Ljava/lang/Object;
.source "ImageStrategyExtra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;
    }
.end annotation


# static fields
.field private static sCdnRuleRegex:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 5

    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 128
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 129
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "0"

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseUrlInfo(Ljava/lang/String;)Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;
    .locals 4

    .line 17
    new-instance v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;

    invoke-direct {v0}, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;-><init>()V

    const-string v1, "#"

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->suffix:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->base:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "?"

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->suffix:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->base:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 25
    iput-object v1, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->suffix:Ljava/lang/String;

    .line 26
    iput-object p0, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->base:Ljava/lang/String;

    .line 28
    :goto_0
    iget-object p0, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->base:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-lez p0, :cond_2

    .line 29
    iget-object v1, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->base:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-le p0, v1, :cond_2

    .line 30
    iget-object v1, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->base:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->ext:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public static parseImageUrl(Ljava/lang/String;)Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0}, Lcom/taobao/tao/util/ImageStrategyExtra;->parseImageUrl(Ljava/lang/String;Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;)Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;

    move-result-object p0

    return-object p0
.end method

.method static parseImageUrl(Ljava/lang/String;Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;)Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;
    .locals 8

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;

    invoke-direct {p1}, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;-><init>()V

    :cond_0
    const/16 v0, 0x2e

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    return-object v1

    .line 51
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->ext:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/taobao/tao/util/ImageStrategyExtra;->sCdnRuleRegex:Ljava/util/regex/Pattern;

    if-nez v0, :cond_2

    const-string v0, "_(?:(?:(?:\\.webp)|(?:\\.heic))|((?:(?:(\\d+)x(\\d+)(xz)?(co0)?(c[xy]\\d+i\\d)?)|([Qq]\\d{2})|(s\\d{2,3})){1,3}(?:\\.jpg)?(?:_(?:(?:\\.webp)|(?:\\.heic)))?))(?:END_IMAGE_URL)?$"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/tao/util/ImageStrategyExtra;->sCdnRuleRegex:Ljava/util/regex/Pattern;

    .line 66
    :cond_2
    sget-object v0, Lcom/taobao/tao/util/ImageStrategyExtra;->sCdnRuleRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/16 v2, 0x2f

    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v2, 0x0

    if-gez p0, :cond_3

    const/4 p0, 0x0

    .line 68
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v1

    .line 72
    :cond_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p0

    const/4 v3, 0x6

    if-ge p0, v3, :cond_5

    return-object v1

    :cond_5
    const/4 p0, 0x2

    const/4 v1, 0x1

    .line 79
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x3

    .line 80
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 81
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    .line 82
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, p1, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->existCo:Z

    .line 83
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p1, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->existCi:Z

    const/4 v3, 0x7

    .line 84
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    .line 85
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->width:I

    .line 89
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->height:I

    .line 92
    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 93
    iput-object v5, p1, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->cj:Ljava/lang/String;

    .line 95
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 96
    iput-object v3, p1, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->quality:Ljava/lang/String;

    .line 98
    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 99
    iput-object v6, p1, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->sharpen:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 103
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "STRATEGY.ALL"

    const-string v2, "ImageStrategyExtra parseImageUrl convert number error:%s"

    invoke-static {p0, v2, v1}, Lcom/taobao/tao/image/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_2
    const-string p0, ""

    .line 106
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/taobao/tao/util/ImageStrategyExtra$ImageUrlInfo;->base:Ljava/lang/String;

    return-object p1
.end method

.method public static signutf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 116
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "utf-8"

    .line 117
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/tao/util/ImageStrategyExtra;->byte2hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "sign error !"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
