.class public Lcom/aliyun/oss/common/utils/CRC64;
.super Ljava/lang/Object;
.source "CRC64.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field private static final GF2_DIM:I = 0x40

.field private static final POLY:J = -0x3693a86a2878f0beL

.field private static final table:[J


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x100

    .line 39
    new-array v1, v0, [J

    sput-object v1, Lcom/aliyun/oss/common/utils/CRC64;->table:[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    int-to-long v3, v2

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    const-wide/16 v6, 0x1

    and-long v8, v4, v6

    const/4 v10, 0x1

    cmp-long v11, v8, v6

    if-nez v11, :cond_0

    ushr-long/2addr v4, v10

    const-wide v6, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long/2addr v4, v6

    goto :goto_2

    :cond_0
    ushr-long/2addr v4, v10

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 50
    :cond_1
    sget-object v3, Lcom/aliyun/oss/common/utils/CRC64;->table:[J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/aliyun/oss/common/utils/CRC64;->update([BI)V

    return-void
.end method

.method public static combine(JJJ)J
    .locals 14

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    return-wide p0

    :cond_0
    const/16 v2, 0x40

    .line 232
    new-array v3, v2, [J

    .line 233
    new-array v4, v2, [J

    const/4 v5, 0x0

    const-wide v6, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    move-wide v9, v6

    const/4 v8, 0x1

    :goto_0
    if-ge v8, v2, :cond_1

    .line 240
    aput-wide v9, v4, v8

    shl-long/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 245
    :cond_1
    invoke-static {v3, v4}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 248
    invoke-static {v4, v3}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    move-wide v10, p0

    move-wide/from16 v8, p4

    .line 254
    :cond_2
    invoke-static {v3, v4}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    and-long v12, v8, v6

    cmp-long v2, v12, v6

    if-nez v2, :cond_3

    .line 256
    invoke-static {v3, v10, v11}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v10

    :cond_3
    ushr-long/2addr v8, v5

    cmp-long v2, v8, v0

    if-nez v2, :cond_4

    goto :goto_1

    .line 264
    :cond_4
    invoke-static {v4, v3}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    and-long v12, v8, v6

    cmp-long v2, v12, v6

    if-nez v2, :cond_5

    .line 266
    invoke-static {v4, v10, v11}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v10

    :cond_5
    ushr-long/2addr v8, v5

    cmp-long v2, v8, v0

    if-nez v2, :cond_2

    :goto_1
    xor-long v0, v10, p2

    return-wide v0
.end method

.method public static combine(Lcom/aliyun/oss/common/utils/CRC64;Lcom/aliyun/oss/common/utils/CRC64;J)Lcom/aliyun/oss/common/utils/CRC64;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 168
    new-instance p1, Lcom/aliyun/oss/common/utils/CRC64;

    invoke-virtual {p0}, Lcom/aliyun/oss/common/utils/CRC64;->getValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/aliyun/oss/common/utils/CRC64;-><init>(J)V

    return-object p1

    :cond_0
    const/16 v2, 0x40

    .line 172
    new-array v3, v2, [J

    .line 173
    new-array v4, v2, [J

    const/4 v5, 0x0

    const-wide v6, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    move-wide v9, v6

    const/4 v8, 0x1

    :goto_0
    if-ge v8, v2, :cond_1

    .line 180
    aput-wide v9, v4, v8

    shl-long/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {v3, v4}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 188
    invoke-static {v4, v3}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    .line 192
    invoke-virtual {p0}, Lcom/aliyun/oss/common/utils/CRC64;->getValue()J

    move-result-wide v8

    .line 193
    invoke-virtual {p1}, Lcom/aliyun/oss/common/utils/CRC64;->getValue()J

    move-result-wide p0

    .line 196
    :cond_2
    invoke-static {v3, v4}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    and-long v10, p2, v6

    cmp-long v2, v10, v6

    if-nez v2, :cond_3

    .line 198
    invoke-static {v3, v8, v9}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v8

    :cond_3
    ushr-long/2addr p2, v5

    cmp-long v2, p2, v0

    if-nez v2, :cond_4

    goto :goto_1

    .line 206
    :cond_4
    invoke-static {v4, v3}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixSquare([J[J)V

    and-long v10, p2, v6

    cmp-long v2, v10, v6

    if-nez v2, :cond_5

    .line 208
    invoke-static {v4, v8, v9}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v8

    :cond_5
    ushr-long/2addr p2, v5

    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    :goto_1
    xor-long/2addr p0, v8

    .line 216
    new-instance p2, Lcom/aliyun/oss/common/utils/CRC64;

    invoke-direct {p2, p0, p1}, Lcom/aliyun/oss/common/utils/CRC64;-><init>(J)V

    return-object p2
.end method

.method public static fromBytes([B)Lcom/aliyun/oss/common/utils/CRC64;
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    .line 74
    aget-byte v3, p0, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    xor-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance p0, Lcom/aliyun/oss/common/utils/CRC64;

    invoke-direct {p0, v0, v1}, Lcom/aliyun/oss/common/utils/CRC64;-><init>(J)V

    return-object p0
.end method

.method private static gf2MatrixSquare([J[J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 156
    aget-wide v1, p1, v0

    invoke-static {p1, v1, v2}, Lcom/aliyun/oss/common/utils/CRC64;->gf2MatrixTimes([JJ)J

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static gf2MatrixTimes([JJ)J
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v2, v0

    const/4 v4, 0x0

    :goto_0
    cmp-long v5, p1, v0

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x1

    and-long v7, p1, v5

    cmp-long v9, v7, v5

    if-nez v9, :cond_0

    .line 146
    aget-wide v5, p0, v4

    xor-long/2addr v2, v5

    :cond_0
    const/4 v5, 0x1

    ushr-long/2addr p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method


# virtual methods
.method public getBytes()[B
    .locals 7

    const/16 v0, 0x8

    .line 83
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    rsub-int/lit8 v3, v2, 0x7

    .line 85
    iget-wide v4, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    mul-int/lit8 v6, v2, 0x8

    ushr-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getValue()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 135
    iput-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    return-void
.end method

.method public update(B)V
    .locals 8

    .line 116
    iget-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    .line 117
    sget-object v0, Lcom/aliyun/oss/common/utils/CRC64;->table:[J

    iget-wide v4, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    int-to-long v6, p1

    xor-long/2addr v6, v4

    long-to-int p1, v6

    and-int/lit16 p1, p1, 0xff

    aget-wide v6, v0, p1

    const/16 p1, 0x8

    ushr-long v0, v4, p1

    xor-long/2addr v0, v6

    iput-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    .line 118
    iget-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    return-void
.end method

.method public update(I)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/common/utils/CRC64;->update(B)V

    return-void
.end method

.method public update([BI)V
    .locals 8

    .line 103
    iget-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    .line 105
    sget-object v1, Lcom/aliyun/oss/common/utils/CRC64;->table:[J

    iget-wide v4, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    aget-byte v6, p1, v0

    int-to-long v6, v6

    xor-long/2addr v6, v4

    long-to-int v7, v6

    and-int/lit16 v6, v7, 0xff

    aget-wide v6, v1, v6

    const/16 v1, 0x8

    ushr-long/2addr v4, v1

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 109
    :cond_0
    iget-wide p1, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    xor-long/2addr p1, v2

    iput-wide p1, p0, Lcom/aliyun/oss/common/utils/CRC64;->value:J

    return-void
.end method

.method public update([BII)V
    .locals 1

    :goto_0
    if-lez p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 129
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/aliyun/oss/common/utils/CRC64;->update(B)V

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method
