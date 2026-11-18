.class public Lcom/rich/czlylibary/bean/SearchSongNewRsp;
.super Ljava/lang/Object;


# instance fields
.field private correct:[Ljava/lang/String;

.field private data:Lcom/rich/czlylibary/bean/SearchSongNewData;

.field private error:Ljava/lang/String;

.field private rc:I

.field private semantic:[Lcom/rich/czlylibary/bean/SemanticResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCorrect()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->correct:[Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/rich/czlylibary/bean/SearchSongNewData;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->data:Lcom/rich/czlylibary/bean/SearchSongNewData;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getRc()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->rc:I

    return v0
.end method

.method public getSemantic()[Lcom/rich/czlylibary/bean/SemanticResult;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->semantic:[Lcom/rich/czlylibary/bean/SemanticResult;

    return-object v0
.end method

.method public setCorrect([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->correct:[Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/rich/czlylibary/bean/SearchSongNewData;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->data:Lcom/rich/czlylibary/bean/SearchSongNewData;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->error:Ljava/lang/String;

    return-void
.end method

.method public setRc(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->rc:I

    return-void
.end method

.method public setSemantic([Lcom/rich/czlylibary/bean/SemanticResult;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->semantic:[Lcom/rich/czlylibary/bean/SemanticResult;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchSongNewRsp{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rich/czlylibary/bean/SearchSongNewRsp;->data:Lcom/rich/czlylibary/bean/SearchSongNewData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
