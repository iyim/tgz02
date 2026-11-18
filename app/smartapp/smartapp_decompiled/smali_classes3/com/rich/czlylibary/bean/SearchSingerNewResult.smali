.class public Lcom/rich/czlylibary/bean/SearchSingerNewResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private searchSinger:Lcom/rich/czlylibary/bean/SearchSingerNewRsp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSearchSinger()Lcom/rich/czlylibary/bean/SearchSingerNewRsp;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSingerNewResult;->searchSinger:Lcom/rich/czlylibary/bean/SearchSingerNewRsp;

    return-object v0
.end method

.method public setSearchSinger(Lcom/rich/czlylibary/bean/SearchSingerNewRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSingerNewResult;->searchSinger:Lcom/rich/czlylibary/bean/SearchSingerNewRsp;

    return-void
.end method
