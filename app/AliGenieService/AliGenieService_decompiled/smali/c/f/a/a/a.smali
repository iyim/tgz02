.class public Lc/f/a/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B

.field public static final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lc/f/a/a/a;->a:[B

    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lc/f/a/a/a;->b:[B

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lc/f/a/a/a;->c:[B

    sget-object v1, Lc/f/a/a/a;->b:[B

    array-length v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x4

    sget-object v0, Lc/f/a/a/a;->c:[B

    array-length v0, v0

    add-int/2addr v1, v0

    sput v1, Lc/f/a/a/a;->d:I

    return-void

    nop

    :array_0
    .array-data 1
        0x3ct
        0x4et
        0x5et
        0x6ct
        0x77t
        0x6ft
        0x1t
        0x1ct
        0x2ft
        0x3at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3ct
        0x53t
        0x3dt
    .end array-data

    :array_2
    .array-data 1
        0x2ft
        0x53t
        0x3et
    .end array-data
.end method
