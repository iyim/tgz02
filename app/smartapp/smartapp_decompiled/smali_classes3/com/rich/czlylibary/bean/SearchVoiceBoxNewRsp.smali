.class public Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;
.super Ljava/lang/Object;


# instance fields
.field correct:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field data:Lcom/rich/czlylibary/bean/SearchVoiceBoxNewData;

.field error:Ljava/lang/String;

.field rc:I

.field semantic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SemanticResultForVoiceBox;",
            ">;"
        }
    .end annotation
.end field

.field tipStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCorrect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->correct:Ljava/util/List;

    return-object v0
.end method

.method public getData()Lcom/rich/czlylibary/bean/SearchVoiceBoxNewData;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->data:Lcom/rich/czlylibary/bean/SearchVoiceBoxNewData;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getRc()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->rc:I

    return v0
.end method

.method public getSemantic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SemanticResultForVoiceBox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->semantic:Ljava/util/List;

    return-object v0
.end method

.method public getTipStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->tipStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setCorrect(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->correct:Ljava/util/List;

    return-void
.end method

.method public setData(Lcom/rich/czlylibary/bean/SearchVoiceBoxNewData;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->data:Lcom/rich/czlylibary/bean/SearchVoiceBoxNewData;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->error:Ljava/lang/String;

    return-void
.end method

.method public setRc(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->rc:I

    return-void
.end method

.method public setSemantic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SemanticResultForVoiceBox;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->semantic:Ljava/util/List;

    return-void
.end method

.method public setTipStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;->tipStatus:Ljava/lang/String;

    return-void
.end method
