.class public Lcom/alibaba/analytics/utils/ZipDictUtils;
.super Ljava/lang/Object;
.source "ZipDictUtils.java"


# static fields
.field private static final MAX_SIZE_DICT:I = 0x8000

.field private static final MAX_SIZE_HEAD:I = 0x400

.field private static final MAX_SIZE_LOG:I = 0x100

.field private static mDictIndex:I

.field private static mDictLength:I

.field private static mZipDictMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/utils/ZipDictUtils;->mZipDictMap:Ljava/util/HashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static declared-synchronized checkEnableKey(Ljava/lang/String;Z)Z
    .locals 3

    const-class v0, Lcom/alibaba/analytics/utils/ZipDictUtils;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 70
    monitor-exit v0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    .line 74
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x400

    if-le p1, v1, :cond_2

    .line 75
    monitor-exit v0

    return v2

    .line 78
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v1, 0x100

    if-le p1, v1, :cond_2

    .line 79
    monitor-exit v0

    return v2

    .line 83
    :cond_2
    :try_start_3
    sget p1, Lcom/alibaba/analytics/utils/ZipDictUtils;->mDictLength:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr p1, p0

    const p0, 0x8000

    if-le p1, p0, :cond_3

    .line 84
    monitor-exit v0

    return v2

    :cond_3
    const/4 p0, 0x1

    .line 87
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/alibaba/analytics/utils/ZipDictUtils;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/utils/ZipDictUtils;->mZipDictMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 98
    sput v1, Lcom/alibaba/analytics/utils/ZipDictUtils;->mDictLength:I

    .line 99
    sput v1, Lcom/alibaba/analytics/utils/ZipDictUtils;->mDictIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getBytes(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/alibaba/analytics/utils/ZipDictUtils;

    monitor-enter v0

    const/4 v1, 0x0

    .line 27
    :try_start_0
    invoke-static {p0, v1}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getBytes(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getBytes(Ljava/lang/String;Z)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/alibaba/analytics/utils/ZipDictUtils;

    monitor-enter v0

    .line 31
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    invoke-static {p0, p1}, Lcom/alibaba/analytics/utils/ZipDictUtils;->checkEnableKey(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    sget-object p1, Lcom/alibaba/analytics/utils/ZipDictUtils;->mZipDictMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    .line 36
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    if-ltz v2, :cond_0

    const/4 p0, 0x1

    .line 41
    :try_start_2
    invoke-static {p0, v2}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getLengthBytes(II)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/alibaba/analytics/utils/ZipDictUtils;->put(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {p1, v2}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getLengthBytes(II)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x3

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 50
    invoke-static {v2, p0}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getLengthBytes(II)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v2, p1}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getLengthBytes(II)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 57
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 62
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getHeadBytes(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/alibaba/analytics/utils/ZipDictUtils;

    monitor-enter v0

    const/4 v1, 0x1

    .line 23
    :try_start_0
    invoke-static {p0, v1}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getBytes(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getLengthBytes(I)[B
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-static {v0, p0}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getLengthBytes(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static getLengthBytes(II)[B
    .locals 5

    rsub-int/lit8 p0, p0, 0x8

    const/4 v0, 0x1

    shl-int p0, v0, p0

    int-to-byte v1, p0

    sub-int/2addr p0, v0

    if-ge p1, p0, :cond_0

    or-int p0, p1, v1

    .line 112
    invoke-static {p0}, Lcom/alibaba/analytics/utils/ByteUtils;->intToBytes1(I)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x5

    .line 114
    new-array v2, v2, [B

    or-int/2addr v1, p0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    sub-int/2addr p1, p0

    const/4 p0, 0x1

    :goto_0
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 119
    rem-int/lit16 v4, p1, 0x80

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 120
    aput-byte v1, v2, p0

    .line 121
    div-int/lit16 p1, p1, 0x80

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    .line 124
    aput-byte p1, v2, p0

    add-int/2addr p0, v0

    .line 126
    invoke-static {v2, v3, p0}, Lcom/alibaba/analytics/utils/ByteUtils;->subBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized put(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/alibaba/analytics/utils/ZipDictUtils;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/utils/ZipDictUtils;->mZipDictMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/alibaba/analytics/utils/ZipDictUtils;->mDictIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget v1, Lcom/alibaba/analytics/utils/ZipDictUtils;->mDictLength:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    sput v1, Lcom/alibaba/analytics/utils/ZipDictUtils;->mDictLength:I

    .line 93
    sget p0, Lcom/alibaba/analytics/utils/ZipDictUtils;->mDictIndex:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/alibaba/analytics/utils/ZipDictUtils;->mDictIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
