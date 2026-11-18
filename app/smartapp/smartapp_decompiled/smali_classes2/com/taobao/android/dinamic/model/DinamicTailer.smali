.class public Lcom/taobao/android/dinamic/model/DinamicTailer;
.super Ljava/lang/Object;
.source "DinamicTailer.java"


# instance fields
.field private checksum:[B

.field private complierVersion:Ljava/lang/String;

.field private magicWord:Ljava/lang/String;

.field private offset:J

.field private reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getChecksum()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicTailer;->checksum:[B

    return-object v0
.end method

.method public getComplierVersion()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicTailer;->complierVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMagicWord()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicTailer;->magicWord:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/taobao/android/dinamic/model/DinamicTailer;->offset:J

    return-wide v0
.end method

.method public getReserved()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/taobao/android/dinamic/model/DinamicTailer;->reserved:[B

    return-object v0
.end method

.method public setChecksum([B)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicTailer;->checksum:[B

    return-void
.end method

.method public setComplierVersion(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicTailer;->complierVersion:Ljava/lang/String;

    return-void
.end method

.method public setMagicWord(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicTailer;->magicWord:Ljava/lang/String;

    return-void
.end method

.method public setOffset(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/taobao/android/dinamic/model/DinamicTailer;->offset:J

    return-void
.end method

.method public setReserved([B)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/taobao/android/dinamic/model/DinamicTailer;->reserved:[B

    return-void
.end method
