.class public Lcom/rich/czlylibary/bean/SearchLyricNewResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private searchLyric:Lcom/rich/czlylibary/bean/SearchLyricNewRsp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSearchLyric()Lcom/rich/czlylibary/bean/SearchLyricNewRsp;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchLyricNewResult;->searchLyric:Lcom/rich/czlylibary/bean/SearchLyricNewRsp;

    return-object v0
.end method

.method public setSearchLyric(Lcom/rich/czlylibary/bean/SearchLyricNewRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchLyricNewResult;->searchLyric:Lcom/rich/czlylibary/bean/SearchLyricNewRsp;

    return-void
.end method
