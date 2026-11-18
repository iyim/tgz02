.class public Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;
.super Ljava/lang/Object;
.source "DXCodeReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CodeReader_TMTEST"


# instance fields
.field private mCode:[B

.field private mCount:I

.field private mCurIndex:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()[B
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    return v0
.end method

.method public getPos()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->version:I

    return v0
.end method

.method public isEndOfCode()Z
    .locals 2

    .line 95
    iget v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    iget v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 100
    iput v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v0, v0, v1

    return v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readByte error mCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodeReader_TMTEST"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    iget v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    add-int/lit8 v2, v2, -0x3

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 120
    iput v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readInt error mCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodeReader_TMTEST"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public readLong()J
    .locals 8

    .line 132
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    iget v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    add-int/lit8 v2, v2, -0x7

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 133
    iput v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v1, v0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    iget v5, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget v5, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v0, v0, v5

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readLong error mCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodeReader_TMTEST"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readShort()S
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    iget v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 110
    iput v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readShort error mCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodeReader_TMTEST"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public release()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    :cond_0
    return-void
.end method

.method public seek(I)Z
    .locals 2

    .line 65
    iget v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    .line 66
    iput v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 68
    iput v1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 71
    iput p1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    :goto_0
    return v1
.end method

.method public seekBy(I)Z
    .locals 1

    .line 60
    iget v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->seek(I)Z

    move-result p1

    return p1
.end method

.method public setCode([B)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    .line 42
    iget-object p1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCode:[B

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 43
    array-length p1, p1

    iput p1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    goto :goto_0

    .line 45
    :cond_0
    iput v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCount:I

    .line 48
    :goto_0
    iput v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->mCurIndex:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->version:I

    return-void
.end method
