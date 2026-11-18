.class public Lcom/rich/czlylibary/bean/QnxCustomSheetMusicResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SongItem;",
            ">;"
        }
    .end annotation
.end field

.field private totalcount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SongItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxCustomSheetMusicResult;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTotalcount()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/QnxCustomSheetMusicResult;->totalcount:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SongItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxCustomSheetMusicResult;->list:Ljava/util/List;

    return-void
.end method

.method public setTotalcount(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/QnxCustomSheetMusicResult;->totalcount:I

    return-void
.end method
