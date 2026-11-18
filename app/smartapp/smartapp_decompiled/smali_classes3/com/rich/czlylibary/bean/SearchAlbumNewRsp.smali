.class public Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;
.super Ljava/lang/Object;


# instance fields
.field private correct:[Ljava/lang/String;

.field private data:Lcom/rich/czlylibary/bean/SearchAlbumNewData;

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

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;->correct:[Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/rich/czlylibary/bean/SearchAlbumNewData;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;->data:Lcom/rich/czlylibary/bean/SearchAlbumNewData;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getRc()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;->rc:I

    return v0
.end method

.method public getSemantic()[Lcom/rich/czlylibary/bean/SemanticResult;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;->semantic:[Lcom/rich/czlylibary/bean/SemanticResult;

    return-object v0
.end method

.method public setCorrect([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;->correct:[Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/rich/czlylibary/bean/SearchAlbumNewData;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;->data:Lcom/rich/czlylibary/bean/SearchAlbumNewData;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;->error:Ljava/lang/String;

    return-void
.end method

.method public setRc(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;->rc:I

    return-void
.end method

.method public setSemantic([Lcom/rich/czlylibary/bean/SemanticResult;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchAlbumNewRsp;->semantic:[Lcom/rich/czlylibary/bean/SemanticResult;

    return-void
.end method
