.class public Lcom/alibaba/motu/tbrest/request/BizRequest;
.super Ljava/lang/Object;
.source "BizRequest.java"


# static fields
.field private static final FLAGS_GET_CONFIG:B = 0x20t

.field private static final FLAGS_GZIP:B = 0x1t

.field private static final FLAGS_GZIP_FLUSH_DIC:B = 0x2t

.field private static final FLAGS_KEEP_ALIVE:B = 0x8t

.field private static final FLAGS_NO_GZIP:B = 0x0t

.field private static final FLAGS_REAL_TIME_DEBUG:B = 0x10t

.field private static final HEAD_LENGTH:I = 0x8

.field private static final PAYLOAD_MAX_LENGTH:I = 0x1000000

.field private static mReceivedDataLen:J = 0x0L

.field static mResponseAdditionalData:Ljava/lang/String; = null

.field static needConfigByResponse:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getHead(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 127
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/motu/tbrest/SendService;->appKey:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/motu/tbrest/SendService;->appVersion:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const/4 v3, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 137
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "Unknown"

    .line 142
    :goto_0
    invoke-static {}, Lcom/alibaba/motu/tbrest/SendService;->getInstance()Lcom/alibaba/motu/tbrest/SendService;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/motu/tbrest/SendService;->channel:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v5

    .line 146
    :goto_1
    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x6

    .line 150
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object p0, v5, v0

    const/4 p0, 0x5

    const-string v0, "6.5.1.3"

    aput-object v0, v5, p0

    const-string p0, "ak=%s&av=%s&avsys=%s&c=%s&d=%s&sv=%s"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send url :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPackRequest(Landroid/content/Context;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 43
    invoke-static {p0, p1, v0}, Lcom/alibaba/motu/tbrest/request/BizRequest;->getPackRequest(Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method static getPackRequest(Landroid/content/Context;Ljava/util/Map;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {p0, p1}, Lcom/alibaba/motu/tbrest/request/BizRequest;->getPayload(Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/GzipUtils;->gzip([B)[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 59
    array-length p1, p0

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    array-length v0, p0

    invoke-static {v0}, Lcom/alibaba/motu/tbrest/utils/ByteUtils;->intToBytes3(I)[B

    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 p2, 0x9

    int-to-byte p2, p2

    .line 73
    sget-boolean v0, Lcom/alibaba/motu/tbrest/request/BizRequest;->needConfigByResponse:Z

    if-eqz v0, :cond_1

    or-int/lit8 p2, p2, 0x20

    int-to-byte p2, p2

    .line 76
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p2, 0x0

    .line 78
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 79
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 80
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 82
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 84
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getPackRequestByRealtime(Landroid/content/Context;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 47
    invoke-static {p0, p1, v0}, Lcom/alibaba/motu/tbrest/request/BizRequest;->getPackRequest(Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static getPayload(Landroid/content/Context;Ljava/util/Map;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/request/BizRequest;->getHead(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Lcom/alibaba/motu/tbrest/utils/ByteUtils;->intToBytes2(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {v1}, Lcom/alibaba/motu/tbrest/utils/ByteUtils;->intToBytes2(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_0
    if-eqz p1, :cond_2

    .line 101
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 102
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 104
    invoke-static {v3}, Lcom/alibaba/motu/tbrest/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    .line 108
    invoke-static {v3}, Lcom/alibaba/motu/tbrest/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object v3

    .line 109
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 112
    :cond_1
    invoke-static {v1}, Lcom/alibaba/motu/tbrest/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 119
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method static parseResult([B)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p0, :cond_6

    .line 159
    array-length v1, p0

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 163
    :cond_0
    array-length v1, p0

    int-to-long v3, v1

    sput-wide v3, Lcom/alibaba/motu/tbrest/request/BizRequest;->mReceivedDataLen:J

    const/4 v1, 0x3

    const/4 v3, 0x1

    .line 164
    invoke-static {p0, v3, v1}, Lcom/alibaba/motu/tbrest/utils/ByteUtils;->bytesToInt([BII)I

    move-result v1

    const/16 v4, 0x8

    add-int/2addr v1, v4

    .line 165
    array-length v5, p0

    if-eq v1, v5, :cond_1

    const-string p0, "recv len error"

    .line 168
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const/4 v0, 0x5

    .line 170
    aget-byte v0, p0, v0

    and-int/2addr v0, v3

    const/4 v1, 0x0

    if-ne v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x4

    .line 175
    invoke-static {p0, v4, v0}, Lcom/alibaba/motu/tbrest/utils/ByteUtils;->bytesToInt([BII)I

    move-result v0

    .line 176
    array-length v4, p0

    sub-int/2addr v4, v2

    if-ltz v4, :cond_3

    array-length v4, p0

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-lez v4, :cond_5

    if-eqz v3, :cond_4

    .line 179
    new-array v3, v4, [B

    .line 180
    invoke-static {p0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    invoke-static {v3}, Lcom/alibaba/motu/tbrest/utils/GzipUtils;->unGzip([B)[B

    move-result-object p0

    .line 182
    new-instance v2, Ljava/lang/String;

    array-length v3, p0

    invoke-direct {v2, p0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    sput-object v2, Lcom/alibaba/motu/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_3

    .line 184
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    sput-object v1, Lcom/alibaba/motu/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    .line 187
    sput-object p0, Lcom/alibaba/motu/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_3

    :cond_6
    :goto_2
    const-string p0, "recv errCode UNKNOWN_ERROR"

    .line 161
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 192
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errCode:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    return v0
.end method
