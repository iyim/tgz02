.class public Lcom/rich/czlylibary/bean/SearchTagSongNewResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private searchTag:Lcom/rich/czlylibary/bean/SearchSongNewRsp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSearchTag()Lcom/rich/czlylibary/bean/SearchSongNewRsp;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchTagSongNewResult;->searchTag:Lcom/rich/czlylibary/bean/SearchSongNewRsp;

    return-object v0
.end method

.method public setSearchTag(Lcom/rich/czlylibary/bean/SearchSongNewRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchTagSongNewResult;->searchTag:Lcom/rich/czlylibary/bean/SearchSongNewRsp;

    return-void
.end method
