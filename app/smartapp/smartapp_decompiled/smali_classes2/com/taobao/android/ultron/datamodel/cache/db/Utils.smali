.class public Lcom/taobao/android/ultron/datamodel/cache/db/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INITIALCRC:J = -0x1L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    .line 9
    new-array v1, v0, [J

    sput-object v1, Lcom/taobao/android/ultron/datamodel/cache/db/Utils;->sCrcTable:[J

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

    long-to-int v6, v4

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    const-wide v8, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    goto :goto_2

    :cond_0
    const-wide/16 v8, 0x0

    :goto_2
    shr-long/2addr v4, v7

    xor-long/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 20
    :cond_1
    sget-object v3, Lcom/taobao/android/ultron/datamodel/cache/db/Utils;->sCrcTable:[J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static assertTrue(Z)V
    .locals 0

    if-eqz p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static crc64Long(Ljava/lang/String;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/taobao/android/ultron/datamodel/cache/db/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/android/ultron/datamodel/cache/db/Utils;->crc64Long([B)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static crc64Long([B)J
    .locals 7

    .line 39
    array-length v0, p0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 40
    sget-object v4, Lcom/taobao/android/ultron/datamodel/cache/db/Utils;->sCrcTable:[J

    long-to-int v5, v1

    aget-byte v6, p0, v3

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v5, v4, v5

    const/16 v4, 0x8

    shr-long/2addr v1, v4

    xor-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 7

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 49
    aput-byte v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    .line 50
    aput-byte v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
