.class public final Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final LINE_SEP:Ljava/lang/String;

.field public static final MIME_MapTable:[[Ljava/lang/String;

.field private static sBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x42

    .line 39
    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, ".3gp"

    const-string v2, "video/3gpp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".apk"

    const-string v2, "application/vnd.android.package-archive"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ".asf"

    const-string v2, "video/x-ms-asf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, ".avi"

    const-string v2, "video/x-msvideo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "application/octet-stream"

    const-string v2, ".bin"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string v2, ".bmp"

    const-string v3, "image/bmp"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "text/plain"

    const-string v3, ".c"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-string v3, ".class"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const-string v3, ".conf"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const-string v3, ".cpp"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const-string v3, ".doc"

    const-string v4, "application/msword"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const-string v3, ".docx"

    const-string v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const-string v3, ".xls"

    const-string v4, "application/vnd.ms-excel"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v0, v4

    const-string v3, ".xlsx"

    const-string v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v0, v4

    const-string v3, ".exe"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string v1, ".gif"

    const-string v3, "image/gif"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, ".gtar"

    const-string v3, "application/x-gtar"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string v1, ".gz"

    const-string v4, "application/x-gzip"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    const-string v1, ".h"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    const-string v1, "text/html"

    const-string v4, ".htm"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    aput-object v4, v0, v5

    const-string v4, ".html"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    const-string v1, ".jar"

    const-string v4, "application/java-archive"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    const-string v1, ".java"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x16

    aput-object v1, v0, v4

    const-string v1, "image/jpeg"

    const-string v4, ".jpeg"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x17

    aput-object v4, v0, v5

    const-string v4, ".jpg"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x18

    aput-object v1, v0, v4

    const-string v1, ".js"

    const-string v4, "application/x-javascript"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x19

    aput-object v1, v0, v4

    const-string v1, ".log"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    const-string v1, ".m3u"

    const-string v4, "audio/x-mpegurl"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    const-string v1, "audio/mp4a-latm"

    const-string v4, ".m4a"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1c

    aput-object v4, v0, v5

    const-string v4, ".m4b"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1d

    aput-object v4, v0, v5

    const-string v4, ".m4p"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1e

    aput-object v1, v0, v4

    const-string v1, ".m4u"

    const-string v4, "video/vnd.mpegurl"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1f

    aput-object v1, v0, v4

    const-string v1, ".m4v"

    const-string v4, "video/x-m4v"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x20

    aput-object v1, v0, v4

    const-string v1, ".mov"

    const-string v4, "video/quicktime"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x21

    aput-object v1, v0, v4

    const-string v1, "audio/x-mpeg"

    const-string v4, ".mp2"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x22

    aput-object v4, v0, v5

    const-string v4, ".mp3"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x23

    aput-object v1, v0, v4

    const-string v1, "video/mp4"

    const-string v4, ".mp4"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    aput-object v4, v0, v5

    const-string v4, ".mpc"

    const-string v5, "application/vnd.mpohun.certificate"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x25

    aput-object v4, v0, v5

    const-string v4, "video/mpeg"

    const-string v5, ".mpe"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x26

    aput-object v5, v0, v6

    const-string v5, ".mpeg"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x27

    aput-object v5, v0, v6

    const-string v5, ".mpg"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    aput-object v4, v0, v5

    const-string v4, ".mpg4"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x29

    aput-object v1, v0, v4

    const-string v1, ".mpga"

    const-string v4, "audio/mpeg"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2a

    aput-object v1, v0, v4

    const-string v1, ".msg"

    const-string v4, "application/vnd.ms-outlook"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2b

    aput-object v1, v0, v4

    const-string v1, ".ogg"

    const-string v4, "audio/ogg"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2c

    aput-object v1, v0, v4

    const-string v1, ".pdf"

    const-string v4, "application/pdf"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2d

    aput-object v1, v0, v4

    const-string v1, ".png"

    const-string v4, "image/png"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2e

    aput-object v1, v0, v4

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v4, ".pps"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    aput-object v4, v0, v5

    const-string v4, ".ppt"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x30

    aput-object v1, v0, v4

    const-string v1, ".pptx"

    const-string v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x31

    aput-object v1, v0, v4

    const-string v1, ".prop"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x32

    aput-object v1, v0, v4

    const-string v1, ".rc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x33

    aput-object v1, v0, v4

    const-string v1, ".rmvb"

    const-string v4, "audio/x-pn-realaudio"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x34

    aput-object v1, v0, v4

    const-string v1, ".rtf"

    const-string v4, "application/rtf"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x35

    aput-object v1, v0, v4

    const-string v1, ".sh"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x36

    aput-object v1, v0, v4

    const-string v1, ".tar"

    const-string v4, "application/x-tar"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x37

    aput-object v1, v0, v4

    const-string v1, ".tgz"

    const-string v4, "application/x-compressed"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x38

    aput-object v1, v0, v4

    const-string v1, ".txt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x39

    aput-object v1, v0, v4

    const-string v1, ".wav"

    const-string v4, "audio/x-wav"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3a

    aput-object v1, v0, v4

    const-string v1, ".wma"

    const-string v4, "audio/x-ms-wma"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3b

    aput-object v1, v0, v4

    const-string v1, ".wmv"

    const-string v4, "audio/x-ms-wmv"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3c

    aput-object v1, v0, v4

    const-string v1, ".wps"

    const-string v4, "application/vnd.ms-works"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3d

    aput-object v1, v0, v4

    const-string v1, ".xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, ".z"

    const-string v2, "application/x-compress"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, ".zip"

    const-string v2, "application/x-zip-compressed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, ""

    const-string v2, "*/*"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->MIME_MapTable:[[Ljava/lang/String;

    const-string v0, "line.separator"

    .line 68
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->LINE_SEP:Ljava/lang/String;

    .line 69
    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->HEX_DIGITS:[C

    const/16 v0, 0x2000

    .line 71
    sput v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->sBufferSize:I

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static byte2FitMemorySize(J)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "shouldn\'t be less than zero!"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x400

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-gez v4, :cond_1

    .line 1852
    new-array v0, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%.3fB"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v0, 0x100000

    cmp-long v4, p0, v0

    if-gez v4, :cond_2

    .line 1854
    new-array v0, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%.3fKB"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v0, 0x40000000

    cmp-long v4, p0, v0

    if-gez v4, :cond_3

    .line 1856
    new-array v0, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%.3fMB"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1858
    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%.3fGB"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static bytes2HexString([B)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1837
    :cond_0
    array-length v1, p0

    if-gtz v1, :cond_1

    return-object v0

    :cond_1
    shl-int/lit8 v0, v1, 0x1

    .line 1839
    new-array v0, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 1841
    sget-object v5, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->HEX_DIGITS:[C

    aget-byte v6, p0, v2

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v0, v3

    add-int/lit8 v3, v4, 0x1

    .line 1842
    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1844
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static copyDir(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    .line 954
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static copyDir(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 966
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;Z)Z

    move-result p0

    return p0
.end method

.method public static copyDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 931
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyDir(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static copyDir(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z
    .locals 0

    .line 943
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyDir(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1001
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1013
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;Z)Z

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1925
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 1928
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1930
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1933
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1935
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1938
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1940
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1943
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1945
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1951
    :goto_1
    :try_start_2
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    .line 1952
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 1953
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 p2, 0x1

    .line 1963
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1964
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 1966
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return p2

    :catch_3
    move-exception p0

    .line 1959
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_4
    move-exception p0

    .line 1956
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_3
    :goto_3
    return v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 977
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z
    .locals 0

    .line 990
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z

    move-result p0

    return p0
.end method

.method private static copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;Z)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1122
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1125
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 1126
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    .line 1127
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;->onReplace()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return v3

    .line 1128
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteAllInDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 1135
    :cond_5
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_6

    return v0

    .line 1136
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 1137
    array-length v1, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_9

    aget-object v5, p1, v4

    .line 1138
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1140
    invoke-static {v5, v6, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;Z)Z

    move-result v5

    if-nez v5, :cond_8

    return v0

    .line 1141
    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1142
    invoke-static {v5, v6, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;Z)Z

    move-result v5

    if-nez v5, :cond_8

    return v0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_a

    .line 1145
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteDir(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    const/4 v0, 0x1

    :cond_b
    :goto_2
    return v0
.end method

.method private static copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 1

    .line 1110
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$1;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;Z)Z

    move-result p0

    return p0
.end method

.method private static copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto :goto_1

    .line 1161
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1163
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1164
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    .line 1165
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;->onReplace()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 1166
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_5

    return v0

    .line 1173
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_6

    return v0

    .line 1175
    :cond_6
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p3, :cond_7

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    return v0

    :catch_0
    move-exception p0

    .line 1177
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_9
    :goto_1
    return v0
.end method

.method private static copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 1

    .line 1149
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$2;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$2;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;Z)Z

    move-result p0

    return p0
.end method

.method public static createFileByDeleteOldFile(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 913
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 914
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 916
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 918
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static createFileByDeleteOldFile(Ljava/lang/String;)Z
    .locals 0

    .line 901
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createFileByDeleteOldFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static createOrExistsDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 863
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static createOrExistsDir(Ljava/lang/String;)Z
    .locals 0

    .line 853
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static createOrExistsFile(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 884
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 885
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 887
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 889
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static createOrExistsFile(Ljava/lang/String;)Z
    .locals 0

    .line 873
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createOrExistsFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static deleteAllInDir(Ljava/io/File;)Z
    .locals 1

    .line 1254
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$3;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$3;-><init>()V

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result p0

    return p0
.end method

.method public static deleteAllInDir(Ljava/lang/String;)Z
    .locals 0

    .line 1244
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteAllInDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1201
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1203
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1204
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1205
    array-length v2, v1

    if-eqz v2, :cond_5

    .line 1206
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 1207
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1208
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    .line 1209
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1210
    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1214
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static deleteDir(Ljava/lang/String;)Z
    .locals 0

    .line 1189
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1234
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 0

    .line 1224
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static deleteFilesInDir(Ljava/io/File;)Z
    .locals 1

    .line 1279
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$4;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$4;-><init>()V

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result p0

    return p0
.end method

.method public static deleteFilesInDir(Ljava/lang/String;)Z
    .locals 0

    .line 1269
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteFilesInDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1308
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 1310
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1311
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 1312
    array-length v1, p0

    if-eqz v1, :cond_5

    .line 1313
    array-length v1, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p0, v3

    .line 1314
    invoke-interface {p1, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1315
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1316
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    .line 1317
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1318
    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public static deleteFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Z
    .locals 0

    .line 1295
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->deleteFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result p0

    return p0
.end method

.method public static getDirLength(Ljava/io/File;)J
    .locals 6

    .line 1616
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1618
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1619
    array-length v2, p0

    if-eqz v2, :cond_2

    .line 1620
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 1621
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1622
    invoke-static {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getDirLength(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1

    .line 1624
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_1
    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public static getDirLength(Ljava/lang/String;)J
    .locals 2

    .line 1606
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getDirLength(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDirName(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1738
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1748
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 1749
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 1750
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getDirSize(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 1573
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getDirLength(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1574
    :cond_0
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->byte2FitMemorySize(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDirSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1563
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getDirSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 751
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1481
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1482
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr p0, v0

    .line 1488
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1491
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 1484
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 1488
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 1491
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 p0, 0x0

    :goto_2
    const v0, 0xefbb    # 8.5999E-41f

    if-eq p0, v0, :cond_3

    const v0, 0xfeff

    if-eq p0, v0, :cond_2

    const v0, 0xfffe

    if-eq p0, v0, :cond_1

    const-string p0, "GBK"

    return-object p0

    :cond_1
    const-string p0, "Unicode"

    return-object p0

    :cond_2
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_3
    const-string p0, "UTF-8"

    return-object p0

    :goto_3
    if-eqz v0, :cond_4

    .line 1488
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 1491
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1493
    :cond_4
    :goto_4
    throw p0
.end method

.method public static getFileCharsetSimple(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1468
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1818
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1828
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x2e

    .line 1829
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1830
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-lt v2, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1832
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getFileLastModified(Ljava/io/File;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1458
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLastModified(Ljava/lang/String;)J
    .locals 2

    .line 1447
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileLastModified(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLength(Ljava/io/File;)J
    .locals 2

    .line 1662
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1663
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLength(Ljava/lang/String;)J
    .locals 3

    const-string v0, "[a-zA-z]+://[^\\s]*"

    .line 1638
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1641
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    .line 1642
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1644
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1645
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception v0

    .line 1649
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1652
    :cond_1
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileLength(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLines(Ljava/io/File;)I
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1526
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    .line 1527
    :try_start_1
    new-array v1, p0, [B

    .line 1529
    sget-object v3, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->LINE_SEP:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 1530
    :goto_0
    invoke-virtual {v2, v1, v5, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v4, :cond_5

    move v6, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 1532
    :try_start_2
    aget-byte v7, v1, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v2

    move v0, v6

    goto :goto_4

    :cond_1
    move v0, v6

    goto :goto_0

    .line 1536
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v2, v1, v5, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v3, v4, :cond_5

    move v6, v0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    .line 1538
    :try_start_4
    aget-byte v7, v1, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v8, 0xd

    if-ne v7, v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_2

    .line 1547
    :cond_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    .line 1550
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_6

    :catch_3
    move-exception p0

    .line 1543
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_6

    .line 1547
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    :goto_5
    return v0

    :goto_6
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 1550
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1552
    :cond_7
    :goto_7
    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8
.end method

.method public static getFileLines(Ljava/lang/String;)I
    .locals 0

    .line 1513
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileLines(Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static getFileMD5(Ljava/io/File;)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1707
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "MD5"

    .line 1708
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 1709
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 p0, 0x40000

    .line 1710
    :try_start_1
    new-array p0, p0, [B

    .line 1712
    :cond_1
    invoke-virtual {v2, p0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_1

    .line 1714
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p0

    .line 1715
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1721
    :try_start_2
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1724
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    :goto_1
    move-object v2, v0

    .line 1717
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 1721
    :try_start_4
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    .line 1724
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_3

    .line 1721
    :try_start_5
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    .line 1724
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1726
    :cond_3
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static getFileMD5(Ljava/lang/String;)[B
    .locals 0

    .line 1694
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileMD5(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 1684
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileMD5(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1673
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 1674
    :goto_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1761
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1771
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1772
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1773
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1784
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1794
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 1795
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1796
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1798
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    if-eq v0, v2, :cond_4

    if-le v1, v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1803
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1801
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileSize(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 1595
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileLength(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1596
    :cond_0
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->byte2FitMemorySize(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getFileSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1584
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileLength(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1585
    :cond_0
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->byte2FitMemorySize(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getMIMEType(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 1900
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 1902
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "*/*"

    if-gez v0, :cond_0

    return-object v1

    .line 1907
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-ne p0, v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    .line 1910
    :goto_0
    sget-object v3, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->MIME_MapTable:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 1911
    aget-object v3, v3, v1

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->MIME_MapTable:[[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private static is2Bytes(Ljava/io/InputStream;)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 718
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    :try_start_1
    sget v2, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->sBufferSize:I

    new-array v2, v2, [B

    .line 721
    :goto_0
    sget v3, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->sBufferSize:I

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 722
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 730
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 732
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 736
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 739
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v0

    :catch_2
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v1, v0

    .line 726
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 730
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 732
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    if-eqz v1, :cond_2

    .line 736
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 739
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    return-object v0

    :catchall_1
    move-exception v0

    .line 730
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    .line 732
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    if-eqz v1, :cond_3

    .line 736
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception p0

    .line 739
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 741
    :cond_3
    :goto_8
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public static isDir(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 823
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDir(Ljava/lang/String;)Z
    .locals 0

    .line 813
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static isFile(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 843
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 0

    .line 833
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static isFileExists(Ljava/io/File;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 771
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 0

    .line 761
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isFileExists(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1864
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1865
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static listFilesInDir(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1345
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDir(Ljava/io/File;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1367
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$5;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$5;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDir(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1334
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->listFilesInDir(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDir(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1356
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1396
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1422
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1423
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1424
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1425
    array-length v1, p0

    if-eqz v1, :cond_3

    .line 1426
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 1427
    invoke-interface {p1, v3}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1428
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    .line 1430
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 1432
    invoke-static {v3, p1, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1384
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FileFilter;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1409
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static moveDir(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1047
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static moveDir(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1059
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;Z)Z

    move-result p0

    return p0
.end method

.method public static moveDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1024
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->moveDir(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static moveDir(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z
    .locals 0

    .line 1036
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->moveDir(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z

    move-result p0

    return p0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1094
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1106
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;Z)Z

    move-result p0

    return p0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1070
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z
    .locals 0

    .line 1083
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->moveFile(Ljava/io/File;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil$OnReplaceListener;)Z

    move-result p0

    return p0
.end method

.method public static openFileBySystemApp(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 1880
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 1881
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 1883
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1885
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1887
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1889
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static readFile2BytesByChannel(Ljava/io/File;)[B
    .locals 4

    .line 641
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 644
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 647
    :cond_1
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 649
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_2

    .line 656
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 659
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v1

    .line 651
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    .line 656
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 659
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v1

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz p0, :cond_4

    .line 656
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 659
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 661
    :cond_4
    :goto_4
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static readFile2BytesByChannel(Ljava/lang/String;)[B
    .locals 0

    .line 631
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2BytesByChannel(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFile2BytesByMap(Ljava/io/File;)[B
    .locals 9

    .line 681
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 684
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v0, v2

    .line 686
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 687
    new-array v3, v0, [B

    const/4 v4, 0x0

    .line 688
    invoke-virtual {v2, v3, v4, v0}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 696
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 699
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v1

    .line 691
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_2

    .line 696
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 699
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v1

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz p0, :cond_3

    .line 696
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 699
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 701
    :cond_3
    :goto_4
    throw v0
.end method

.method public static readFile2BytesByMap(Ljava/lang/String;)[B
    .locals 0

    .line 671
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2BytesByMap(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFile2BytesByStream(Ljava/io/File;)[B
    .locals 2

    .line 615
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 617
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->is2Bytes(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 619
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method public static readFile2BytesByStream(Ljava/lang/String;)[B
    .locals 0

    .line 605
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2BytesByStream(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFile2List(Ljava/io/File;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 451
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2List(Ljava/io/File;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 500
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 513
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-le p1, p2, :cond_1

    return-object v1

    .line 519
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    invoke-static {p3}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isSpace(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 521
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 523
    :cond_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p3, v2

    .line 525
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    if-le v3, p2, :cond_3

    goto :goto_1

    :cond_3
    if-gt p1, v3, :cond_4

    if-gt v3, p2, :cond_4

    .line 527
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 537
    :cond_5
    :goto_1
    :try_start_2
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 540
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v0

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p3, v1

    .line 532
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p3, :cond_6

    .line 537
    :try_start_4
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 540
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_4
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, p3

    :goto_5
    if-eqz v1, :cond_7

    .line 537
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    .line 540
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 542
    :cond_7
    :goto_6
    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7
.end method

.method public static readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 462
    invoke-static {p0, v0, v1, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2List(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2List(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2List(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 488
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2List(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 441
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2String(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 573
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 584
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2BytesByStream(Ljava/io/File;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 586
    :cond_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 590
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 592
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static readFile2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 552
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readFile2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 563
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rename(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 796
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 798
    :cond_1
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 800
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    .line 801
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 782
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->rename(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setBufferSize(I)V
    .locals 0

    .line 711
    sput p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->sBufferSize:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static writeFileFromBytesByChannel(Ljava/io/File;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 265
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 267
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p0, 0x1

    if-eqz p3, :cond_1

    .line 268
    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 276
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 271
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 276
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_4

    .line 276
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    :cond_4
    :goto_3
    throw p0
.end method

.method public static writeFileFromBytesByChannel(Ljava/lang/String;[BZ)Z
    .locals 1

    .line 222
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromBytesByChannel(Ljava/lang/String;[BZZ)Z
    .locals 0

    .line 236
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromBytesByChannel(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromBytesByMap(Ljava/io/File;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 333
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 336
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 337
    :try_start_1
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    array-length p2, p1

    int-to-long v7, p2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2

    .line 338
    invoke-virtual {p2, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_1

    .line 339
    invoke-virtual {p2}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x1

    if-eqz p0, :cond_2

    .line 347
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 350
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 342
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    .line 347
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 350
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return v0

    :goto_3
    if-eqz p0, :cond_4

    .line 347
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 350
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 352
    :cond_4
    :goto_4
    throw p1

    :cond_5
    :goto_5
    return v0
.end method

.method public static writeFileFromBytesByMap(Ljava/lang/String;[BZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromBytesByMap(Ljava/lang/String;[BZZ)Z
    .locals 0

    .line 307
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromBytesByMap(Ljava/io/File;[BZZ)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[B)Z
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromBytesByStream(Ljava/io/File;[BZ)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/io/File;[BZ)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 192
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 195
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 204
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 199
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 204
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 207
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_2

    .line 204
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    :cond_2
    :goto_4
    throw p0

    :cond_3
    :goto_5
    return v0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[B)Z
    .locals 1

    .line 157
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromBytesByStream(Ljava/io/File;[BZ)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromBytesByStream(Ljava/lang/String;[BZ)Z
    .locals 0

    .line 169
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromBytesByStream(Ljava/io/File;[BZ)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .locals 4

    .line 120
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_9

    :cond_0
    const/4 v0, 0x0

    .line 123
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    sget p0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->sBufferSize:I

    new-array p0, p0, [B

    .line 126
    :goto_0
    sget p2, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->sBufferSize:I

    invoke-virtual {p1, p0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 127
    invoke-virtual {v2, p0, v1, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 135
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return p0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    .line 131
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    if-eqz v0, :cond_2

    .line 141
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    return v1

    .line 135
    :goto_6
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    if-eqz v0, :cond_3

    .line 141
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    :cond_3
    :goto_8
    throw p0

    :cond_4
    :goto_9
    return v1
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1

    .line 85
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 390
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_5

    .line 403
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 406
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 407
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 415
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 418
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 410
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 415
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 418
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_3

    .line 415
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 418
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 420
    :cond_3
    :goto_4
    throw p0

    :cond_4
    :goto_5
    return v0
.end method

.method public static writeFileFromString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 363
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 375
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/file/FileUtil;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
