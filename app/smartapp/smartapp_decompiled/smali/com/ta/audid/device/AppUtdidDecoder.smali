.class public Lcom/ta/audid/device/AppUtdidDecoder;
.super Ljava/lang/Object;
.source "AppUtdidDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static decode(Ljava/lang/String;)Lcom/ta/audid/device/UtdidObj;
    .locals 8

    .line 17
    new-instance v0, Lcom/ta/audid/device/UtdidObj;

    invoke-direct {v0}, Lcom/ta/audid/device/UtdidObj;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    .line 21
    :try_start_0
    invoke-static {p0, v2}, Lcom/ta/utdid2/android/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    array-length v2, p0

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    const/16 v2, 0xe

    .line 27
    new-array v3, v2, [B

    const/4 v4, 0x4

    .line 28
    new-array v5, v4, [B

    .line 30
    new-array v6, v4, [B

    .line 31
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    invoke-static {p0, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v7, 0x8

    .line 33
    aget-byte v7, p0, v7

    .line 34
    invoke-static {p0, v2, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :try_start_1
    invoke-static {v3}, Lcom/ta/utdid2/device/UTUtdid;->calcHmac([B)Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object p0

    .line 38
    invoke-static {v6, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 39
    invoke-virtual {v0, p0}, Lcom/ta/audid/device/UtdidObj;->setValid(Z)V

    .line 40
    invoke-static {v5}, Lcom/ta/audid/utils/ByteUtils;->getLongByByte4([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ta/audid/device/UtdidObj;->setTimestamp(J)V

    .line 41
    invoke-virtual {v0, v7}, Lcom/ta/audid/device/UtdidObj;->setVersion(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 23
    :catch_0
    invoke-virtual {v0, v1}, Lcom/ta/audid/device/UtdidObj;->setValid(Z)V

    return-object v0

    .line 49
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ta/audid/device/UtdidObj;->setValid(Z)V

    :catch_1
    :cond_1
    return-object v0
.end method
