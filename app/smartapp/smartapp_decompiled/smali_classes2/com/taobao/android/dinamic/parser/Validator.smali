.class public Lcom/taobao/android/dinamic/parser/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# static fields
.field public static final CEHCKSUMLEN:I = 0x10

.field public static final MAIGIC:Ljava/lang/String; = "444E4D58"

.field public static final MINLEN:I = 0x38

.field public static final TAILERLEN:I = 0x28


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 183
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 184
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static byteArrayToLongBE([B)J
    .locals 7

    .line 236
    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 239
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x38

    const v2, 0xffff

    and-int/2addr v0, v2

    int-to-long v3, v0

    const/4 v0, 0x1

    .line 240
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x30

    and-int/2addr v0, v2

    int-to-long v5, v0

    or-long/2addr v3, v5

    const/4 v0, 0x2

    .line 241
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x28

    and-int/2addr v0, v2

    int-to-long v5, v0

    or-long/2addr v3, v5

    const/4 v0, 0x3

    .line 242
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x20

    and-int/2addr v0, v2

    int-to-long v5, v0

    or-long/2addr v3, v5

    const/4 v0, 0x4

    .line 243
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v2

    int-to-long v5, v0

    or-long/2addr v3, v5

    const/4 v0, 0x5

    .line 244
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v2

    int-to-long v5, v0

    or-long/2addr v3, v5

    const/4 v0, 0x6

    .line 245
    aget-byte v0, p0, v0

    shl-int/2addr v0, v1

    and-int/2addr v0, v2

    int-to-long v0, v0

    or-long/2addr v0, v3

    const/4 v2, 0x7

    .line 246
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static byteArrayToLongLE([B)J
    .locals 4

    .line 211
    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 214
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    const/4 v0, 0x1

    .line 215
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    int-to-long v0, v0

    or-long/2addr v0, v2

    const/4 v2, 0x2

    .line 216
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    .line 217
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    or-long/2addr v0, v2

    const/4 v2, 0x4

    .line 218
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    or-long/2addr v0, v2

    const/4 v2, 0x5

    .line 219
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x28

    int-to-long v2, v2

    or-long/2addr v0, v2

    const/4 v2, 0x6

    .line 220
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x30

    int-to-long v2, v2

    or-long/2addr v0, v2

    const/4 v2, 0x7

    .line 221
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x38

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static byteArrayToStr([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static copyContent([BJ)[B
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    long-to-int p2, p1

    .line 85
    new-array p1, p2, [B

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static getInfo([BJ)Lcom/taobao/android/dinamic/model/DinamicInfo;
    .locals 7

    .line 104
    array-length v0, p0

    .line 106
    new-instance v1, Lcom/taobao/android/dinamic/model/DinamicInfo;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/model/DinamicInfo;-><init>()V

    const/16 v2, 0x38

    if-le v0, v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 113
    new-array v0, v0, [B

    const/16 v2, 0x8

    .line 114
    new-array v3, v2, [B

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    long-to-int p2, p1

    .line 116
    array-length p1, v0

    const/4 v4, 0x0

    invoke-static {p0, p2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    .line 117
    array-length p1, v3

    invoke-static {p0, p2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    :cond_1
    invoke-static {v0}, Lcom/taobao/android/dinamic/parser/Validator;->byteArrayToStr([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/taobao/android/dinamic/model/DinamicInfo;->setInterpreterVersion(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v3}, Lcom/taobao/android/dinamic/model/DinamicInfo;->setOption1([B)V

    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTailer([B)Lcom/taobao/android/dinamic/model/DinamicTailer;
    .locals 9
    .param p0    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    array-length v0, p0

    .line 133
    new-instance v1, Lcom/taobao/android/dinamic/model/DinamicTailer;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/model/DinamicTailer;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x38

    if-gt v0, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x28

    const/4 v3, 0x4

    .line 146
    new-array v4, v3, [B

    .line 147
    new-array v3, v3, [B

    const/16 v5, 0x8

    .line 148
    new-array v5, v5, [B

    const/16 v6, 0x10

    .line 149
    new-array v6, v6, [B

    .line 151
    array-length v7, v4

    const/4 v8, 0x0

    invoke-static {p0, v0, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    invoke-static {v4}, Lcom/taobao/android/dinamic/parser/Validator;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v7, "444E4D58"

    .line 154
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v2, v0, 0x4

    .line 156
    array-length v7, v3

    invoke-static {p0, v2, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, 0x8

    .line 157
    array-length v7, v5

    invoke-static {p0, v2, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x18

    .line 158
    array-length v2, v6

    invoke-static {p0, v0, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    invoke-virtual {v1, v4}, Lcom/taobao/android/dinamic/model/DinamicTailer;->setMagicWord(Ljava/lang/String;)V

    .line 161
    invoke-static {v3}, Lcom/taobao/android/dinamic/parser/Validator;->byteArrayToStr([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/taobao/android/dinamic/model/DinamicTailer;->setComplierVersion(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/taobao/android/dinamic/parser/Validator;->isLitter()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 164
    invoke-static {v5}, Lcom/taobao/android/dinamic/parser/Validator;->byteArrayToLongLE([B)J

    move-result-wide v2

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {v5}, Lcom/taobao/android/dinamic/parser/Validator;->byteArrayToLongBE([B)J

    move-result-wide v2

    .line 168
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/taobao/android/dinamic/model/DinamicTailer;->setOffset(J)V

    .line 169
    invoke-virtual {v1, v6}, Lcom/taobao/android/dinamic/model/DinamicTailer;->setChecksum([B)V

    return-object v1

    :cond_2
    return-object v2
.end method

.method public static isLitter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static setMask([B)V
    .locals 3

    .line 260
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v1, v0, :cond_0

    add-int/lit8 v1, v0, -0x10

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, -0x1

    .line 264
    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static validate([BLcom/taobao/android/dinamic/view/ViewResult;)[B
    .locals 2

    .line 22
    invoke-static {p0}, Lcom/taobao/android/dinamic/parser/Validator;->getTailer([B)Lcom/taobao/android/dinamic/model/DinamicTailer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicTailer;->getOffset()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/taobao/android/dinamic/parser/Validator;->getInfo([BJ)Lcom/taobao/android/dinamic/model/DinamicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Lcom/taobao/android/dinamic/model/DinamicInfo;->getOption1()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    array-length v1, v0

    if-lez v1, :cond_1

    .line 37
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3

    .line 39
    invoke-static {p0}, Lcom/taobao/android/dinamic/parser/Validator;->setMask([B)V

    .line 41
    invoke-static {p0, v0}, Lcom/taobao/android/dinamic/parser/ValidateAlgorithm;->getCheckSum([BI)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicTailer;->getChecksum()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicTailer;->getOffset()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/taobao/android/dinamic/parser/Validator;->copyContent([BJ)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method
