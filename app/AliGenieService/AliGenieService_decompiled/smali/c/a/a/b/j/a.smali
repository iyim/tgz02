.class public final Lc/a/a/b/j/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lc/a/a/b/j/a;->a:[J

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

.method public static a(I)I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p0, v0

    sget-object v1, Lc/a/a/b/j/a;->a:[J

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

.method public static b(I)J
    .locals 7

    sget-object v0, Lc/a/a/b/j/a;->a:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    :goto_0
    sget-object v0, Lc/a/a/b/j/a;->a:[J

    add-int/lit8 v2, p0, -0x1

    aget-wide v3, v0, v2

    add-int/2addr p0, v1

    aget-wide v5, v0, p0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    aget-wide v3, v0, p0

    aget-wide v1, v0, v2

    goto :goto_1

    :cond_2
    aget-wide v3, v0, v2

    aget-wide v1, v0, p0

    :goto_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    sub-long/2addr v1, v3

    long-to-double v0, v1

    mul-double/2addr v5, v0

    long-to-double v0, v3

    add-double/2addr v5, v0

    double-to-long v0, v5

    return-wide v0
.end method
