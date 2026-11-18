.class public Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;
.super Ljava/io/FilterOutputStream;
.source "Base64Encoder.java"


# static fields
.field private static final chars:[C


# instance fields
.field private carryOver:I

.field private charCount:I

.field private isWrapBreak:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 10
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->chars:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->isWrapBreak:Z

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;-><init>(Ljava/io/OutputStream;)V

    .line 38
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->isWrapBreak:Z

    return-void
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 140
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->encode([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BZ)Ljava/lang/String;
    .locals 5

    .line 154
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    int-to-double v1, v1

    const-wide v3, 0x3ff6666666666666L    # 1.4

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 155
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;-><init>(Ljava/io/OutputStream;Z)V

    .line 157
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 164
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 159
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 164
    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v0, 0x3

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 118
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    .line 119
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v3, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->chars:[C

    aget-char v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 122
    :cond_0
    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 123
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->carryOver:I

    shl-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    .line 124
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v3, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->chars:[C

    aget-char v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 127
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x100

    .line 60
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-nez v1, :cond_1

    shr-int/lit8 v0, p1, 0x2

    and-int/lit8 p1, p1, 0x3

    .line 62
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->carryOver:I

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->chars:[C

    aget-char v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 67
    :cond_1
    rem-int/lit8 v1, v0, 0x3

    if-ne v1, v2, :cond_2

    .line 68
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    and-int/lit8 p1, p1, 0xf

    .line 69
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->carryOver:I

    .line 70
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->chars:[C

    aget-char v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 74
    :cond_2
    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 75
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->carryOver:I

    shl-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x6

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    .line 76
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v3, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->chars:[C

    aget-char v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 p1, p1, 0x3f

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->chars:[C

    aget-char p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->carryOver:I

    .line 81
    :cond_3
    :goto_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->charCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->charCount:I

    .line 84
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->isWrapBreak:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->charCount:I

    rem-int/lit8 p1, p1, 0x39

    if-nez p1, :cond_4

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_4
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 104
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/Base64Encoder;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
