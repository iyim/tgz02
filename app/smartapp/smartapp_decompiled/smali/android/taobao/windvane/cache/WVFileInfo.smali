.class public Landroid/taobao/windvane/cache/WVFileInfo;
.super Ljava/lang/Object;
.source "WVFileInfo.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_NULL:Ljava/lang/String; = ""

.field private static final DEFAULT_TIME_ZERO:Ljava/lang/String; = "0000000000000"

.field public static final DIVISION:C = '~'

.field private static final PARTITION:C = '_'


# instance fields
.field public encoding:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public expireTime:J

.field public fileName:Ljava/lang/String;

.field public lastModified:J

.field public mimeType:Ljava/lang/String;

.field public pos:J

.field public sha256ToHex:Ljava/lang/String;

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/taobao/windvane/cache/WVFileInfo;)I
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 64
    :cond_0
    iget-wide v0, p0, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    iget-wide v2, p1, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public composeFileInfoStr()[B
    .locals 9

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-wide v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    const-string v3, "0000000000000"

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_0
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    const/16 v2, 0x7e

    const/16 v6, 0x5f

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :goto_1
    iget-wide v7, p0, Landroid/taobao/windvane/cache/WVFileInfo;->lastModified:J

    cmp-long v1, v7, v4

    if-lez v1, :cond_2

    .line 87
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_2
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 94
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :goto_3
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    const-string v3, ""

    if-nez v1, :cond_4

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 99
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :goto_4
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    if-eqz v1, :cond_5

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 104
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :goto_5
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->sha256ToHex:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 109
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :goto_6
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    if-eqz v1, :cond_7

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 114
    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :goto_7
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 119
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :goto_8
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    if-eqz v1, :cond_9

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :goto_9
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->etag:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 129
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :goto_a
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    if-eqz v1, :cond_b

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 134
    :cond_b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :goto_b
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->encoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "utf-8"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 139
    :cond_c
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_c
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeFileInfoStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileInfo"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_d
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public convertToFileInfo()Landroid/taobao/windvane/cache/WVFileInfo;
    .locals 3

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/taobao/windvane/cache/WVFileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Landroid/taobao/windvane/cache/WVFileInfo;

    invoke-direct {v0}, Landroid/taobao/windvane/cache/WVFileInfo;-><init>()V

    .line 48
    iget-wide v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    iput-wide v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    .line 49
    iget-wide v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->lastModified:J

    iput-wide v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->lastModified:J

    .line 50
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->sha256ToHex:Ljava/lang/String;

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->sha256ToHex:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->etag:Ljava/lang/String;

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->etag:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->encoding:Ljava/lang/String;

    iput-object v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->encoding:Ljava/lang/String;

    .line 55
    iget-wide v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J

    iput-wide v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->pos:J

    .line 56
    iget-boolean v1, p0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    iput-boolean v1, v0, Landroid/taobao/windvane/cache/WVFileInfo;->valid:Z

    return-object v0
.end method
