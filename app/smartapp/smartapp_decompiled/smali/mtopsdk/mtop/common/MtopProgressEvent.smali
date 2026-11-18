.class public Lmtopsdk/mtop/common/MtopProgressEvent;
.super Lmtopsdk/mtop/common/MtopEvent;
.source "MtopProgressEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field desc:Ljava/lang/String;

.field public seqNo:Ljava/lang/String;

.field size:I

.field total:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lmtopsdk/mtop/common/MtopEvent;-><init>()V

    .line 22
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->desc:Ljava/lang/String;

    .line 23
    iput p2, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->size:I

    .line 24
    iput p3, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->total:I

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 33
    iget v0, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->size:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 38
    iget v0, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->total:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "MtopProgressEvent [seqNo="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->seqNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
