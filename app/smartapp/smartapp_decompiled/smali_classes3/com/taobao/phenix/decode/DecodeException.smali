.class public Lcom/taobao/phenix/decode/DecodeException;
.super Ljava/lang/Throwable;
.source "DecodeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/decode/DecodeException$DecodedError;
    }
.end annotation


# instance fields
.field private mDataFromDisk:Z

.field private mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field private misLocalUri:Z


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/Throwable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    .line 38
    iput-object p1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    return-void
.end method


# virtual methods
.method public dataFromDisk(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDataFromDisk:Z

    return-void
.end method

.method public getDecodedError()Lcom/taobao/phenix/decode/DecodeException$DecodedError;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/taobao/phenix/decode/DecodeException;->mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    return-object v0
.end method

.method public isDataFromDisk()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/taobao/phenix/decode/DecodeException;->mDataFromDisk:Z

    return v0
.end method

.method public isLocalUri()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/taobao/phenix/decode/DecodeException;->misLocalUri:Z

    return v0
.end method

.method public setLocalUri(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/taobao/phenix/decode/DecodeException;->misLocalUri:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecodeException:type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " localUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/phenix/decode/DecodeException;->misLocalUri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " fromDisk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDataFromDisk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/phenix/decode/DecodeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
