.class public Lcom/rich/czlylibary/bean/SearchLyricNewData;
.super Ljava/lang/Object;


# instance fields
.field private isFromCache:I

.field private result:[Lcom/rich/czlylibary/bean/SongNew;

.field private resultType:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getIsFromCache()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchLyricNewData;->isFromCache:I

    return v0
.end method

.method public getResult()[Lcom/rich/czlylibary/bean/SongNew;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchLyricNewData;->result:[Lcom/rich/czlylibary/bean/SongNew;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchLyricNewData;->resultType:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/SearchLyricNewData;->total:I

    return v0
.end method

.method public setIsFromCache(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchLyricNewData;->isFromCache:I

    return-void
.end method

.method public setResult([Lcom/rich/czlylibary/bean/SongNew;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchLyricNewData;->result:[Lcom/rich/czlylibary/bean/SongNew;

    return-void
.end method

.method public setResultType(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchLyricNewData;->resultType:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/SearchLyricNewData;->total:I

    return-void
.end method
