.class public final Lcom/alibaba/ailabs/ipc/utils/Consts;
.super Ljava/lang/Object;
.source "Consts.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final RETRY_TIMEOUT:[J

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_BINDER:I = 0x0

.field public static final TYPE_CONTENT_PROVIDER:I = 0x1

.field public static final TYPE_LOCAL_OBJECT:I = 0x3

.field public static final TYPE_SERVICE:I = 0x2

.field public static final URI:Ljava/lang/String; = "uri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    .line 15
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/ailabs/ipc/utils/Consts;->RETRY_TIMEOUT:[J

    return-void

    :array_0
    .array-data 8
        0x32
        0x1f4
        0x4b0
        0x5dc
        0x6a4
        0x5dc
        0x7d0
        0xbb8
        0x1388
        0x1f40
        0x3a98
        0xc350
        0x15f90
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getNextRetryCount(I)I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p0, v0

    .line 21
    sget-object v1, Lcom/alibaba/ailabs/ipc/utils/Consts;->RETRY_TIMEOUT:[J

    array-length v1, v1

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, -0x2

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static getRetryTimeout(I)J
    .locals 7

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/ipc/utils/Consts;->RETRY_TIMEOUT:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-le p0, v0, :cond_1

    move p0, v0

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/ipc/utils/Consts;->RETRY_TIMEOUT:[J

    add-int/lit8 v2, p0, -0x1

    aget-wide v3, v0, v2

    add-int/2addr p0, v1

    aget-wide v5, v0, p0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 41
    aget-wide v3, v0, p0

    .line 42
    aget-wide v1, v0, v2

    goto :goto_1

    .line 44
    :cond_2
    aget-wide v3, v0, v2

    .line 45
    aget-wide v1, v0, p0

    .line 49
    :goto_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    sub-long/2addr v1, v3

    long-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v0

    long-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v0

    double-to-long v0, v5

    return-wide v0
.end method
