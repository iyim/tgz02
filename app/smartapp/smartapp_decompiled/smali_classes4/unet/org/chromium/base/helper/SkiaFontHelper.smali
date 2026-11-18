.class public Lunet/org/chromium/base/helper/SkiaFontHelper;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Z = false

.field private static b:[C

.field private static c:[C

.field private static d:[C

.field private static e:[C

.field private static f:[C

.field private static g:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 13
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lunet/org/chromium/base/helper/SkiaFontHelper;->b:[C

    .line 14
    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Lunet/org/chromium/base/helper/SkiaFontHelper;->c:[C

    .line 15
    new-array v1, v0, [C

    fill-array-data v1, :array_2

    sput-object v1, Lunet/org/chromium/base/helper/SkiaFontHelper;->d:[C

    const/4 v1, 0x4

    .line 16
    new-array v1, v1, [C

    fill-array-data v1, :array_3

    sput-object v1, Lunet/org/chromium/base/helper/SkiaFontHelper;->e:[C

    const/4 v1, 0x5

    .line 17
    new-array v1, v1, [C

    fill-array-data v1, :array_4

    sput-object v1, Lunet/org/chromium/base/helper/SkiaFontHelper;->f:[C

    .line 18
    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lunet/org/chromium/base/helper/SkiaFontHelper;->g:[C

    return-void

    :array_0
    .array-data 2
        0x61s
        0x4e00s
    .end array-data

    :array_1
    .array-data 2
        0x61s
        0x3041s
    .end array-data

    :array_2
    .array-data 2
        0x61s
        -0x5400s
    .end array-data

    :array_3
    .array-data 2
        0x61s
        0x901s
        0xb82s
        0xc05s
    .end array-data

    :array_4
    .array-data 2
        0x61s
        0x636s
        0x759s
        -0x4afs
        -0x18fs
    .end array-data

    nop

    :array_5
    .array-data 2
        0x61s
        -0x54fds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
