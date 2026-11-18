.class public Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;
.super Ljava/lang/Object;
.source "MimeTypeCheckUtil.java"


# static fields
.field public static final APNG_ACTL_BYTES:[B

.field public static final APNG_ACTL_OFFSET:I = 0x25

.field private static final BMP_HEADER:[B

.field public static final BMP_HEADER_LENGTH:I = 0x2

.field private static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field private static final GIF_HEADER_87A:[B

.field private static final GIF_HEADER_89A:[B

.field public static final GIF_HEADER_LENGTH:I = 0x6

.field public static final JPEG_HEADER_LENGTH:I = 0x2

.field public static final PNG_HEADER:[B

.field public static final PNG_HEADER_LENGTH:I = 0x29

.field public static final WEBP_A_HEADER_LENGTH:I = 0x15

.field public static final WEBP_HEADER_LENGTH:I = 0x15

.field private static final WEBP_NAME_BYTES:[B

.field private static final WEBP_RIFF_BYTES:[B

.field private static final WEBP_VP8X_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 17
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->PNG_HEADER:[B

    const/4 v0, 0x4

    .line 18
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->APNG_ACTL_BYTES:[B

    const-string v0, "RIFF"

    .line 21
    invoke-static {v0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->WEBP_RIFF_BYTES:[B

    const-string v0, "WEBP"

    .line 22
    invoke-static {v0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->WEBP_NAME_BYTES:[B

    const-string v0, "VP8X"

    .line 23
    invoke-static {v0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->WEBP_VP8X_BYTES:[B

    const-string v0, "GIF87a"

    .line 24
    invoke-static {v0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->GIF_HEADER_87A:[B

    const-string v0, "GIF89a"

    .line 25
    invoke-static {v0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->GIF_HEADER_89A:[B

    const-string v0, "BM"

    .line 26
    invoke-static {v0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->BMP_HEADER:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x61t
        0x63t
        0x54t
        0x4ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static asciiBytes(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "ASCII"

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Pexode"

    const-string v1, "check image format asciiBytes error=%s"

    invoke-static {p0, v1, v0}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBmpHeader([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 71
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->BMP_HEADER:[B

    .line 72
    invoke-static {p0, v0, v1}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->matchBytePattern([BI[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isGifHeader([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 51
    array-length v1, p0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->GIF_HEADER_87A:[B

    .line 52
    invoke-static {p0, v0, v1}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->matchBytePattern([BI[B)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->GIF_HEADER_89A:[B

    invoke-static {p0, v0, v1}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->matchBytePattern([BI[B)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isJpegHeader([B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 30
    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    const v2, 0xffd8

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPngAHeader([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 64
    array-length v1, p0

    const/16 v2, 0x29

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->PNG_HEADER:[B

    .line 65
    invoke-static {p0, v0, v1}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->matchBytePattern([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    sget-object v2, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->APNG_ACTL_BYTES:[B

    .line 66
    invoke-static {p0, v1, v2}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->matchBytePattern([BI[B)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    aget-byte p0, p0, v1

    const/4 v1, 0x3

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPngHeader([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 57
    array-length v1, p0

    const/16 v2, 0x29

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->PNG_HEADER:[B

    .line 58
    invoke-static {p0, v0, v1}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->matchBytePattern([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    sget-object v2, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->APNG_ACTL_BYTES:[B

    .line 59
    invoke-static {p0, v1, v2}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->matchBytePattern([BI[B)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    aget-byte p0, p0, v1

    const/4 v1, 0x3

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isWebPAHeader([B)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->isWebPSimpleHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->isWebPAlphaHeader([B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWebPAlphaHeader([B)Z
    .locals 2

    .line 39
    array-length v0, p0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v0, 0xc

    sget-object v1, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->WEBP_VP8X_BYTES:[B

    invoke-static {p0, v0, v1}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->matchBytePattern([BI[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    aget-byte p0, p0, v0

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWebPHeader([B)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->isWebPSimpleHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->isWebPAlphaHeader([B)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWebPSimpleHeader([B)Z
    .locals 3

    .line 35
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->WEBP_RIFF_BYTES:[B

    invoke-static {p0, v1, v0}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->matchBytePattern([BI[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    sget-object v2, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->WEBP_NAME_BYTES:[B

    invoke-static {p0, v0, v2}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->matchBytePattern([BI[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static matchBytePattern([BI[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    if-ltz p1, :cond_3

    .line 79
    array-length v1, p2

    add-int/2addr v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 83
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    add-int v2, v1, p1

    .line 84
    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method
