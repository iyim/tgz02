.class public Lcom/rich/czlylibary/bean/SearchAllNewRsp;
.super Ljava/lang/Object;


# instance fields
.field private data:Lcom/rich/czlylibary/bean/SearchAllNewData;

.field private error:Ljava/lang/String;

.field private rc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/rich/czlylibary/bean/SearchAllNewData;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchAllNewRsp;->data:Lcom/rich/czlylibary/bean/SearchAllNewData;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchAllNewRsp;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getRc()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchAllNewRsp;->rc:I

    return v0
.end method

.method public setData(Lcom/rich/czlylibary/bean/SearchAllNewData;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchAllNewRsp;->data:Lcom/rich/czlylibary/bean/SearchAllNewData;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchAllNewRsp;->error:Ljava/lang/String;

    return-void
.end method

.method public setRc(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchAllNewRsp;->rc:I

    return-void
.end method
