.class public Lcom/rich/czlylibary/bean/SearchSuggestNewResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private searchSuggest:Lcom/rich/czlylibary/bean/SearchSuggestNewRsp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSearchSuggest()Lcom/rich/czlylibary/bean/SearchSuggestNewRsp;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSuggestNewResult;->searchSuggest:Lcom/rich/czlylibary/bean/SearchSuggestNewRsp;

    return-object v0
.end method

.method public setSearchSuggest(Lcom/rich/czlylibary/bean/SearchSuggestNewRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSuggestNewResult;->searchSuggest:Lcom/rich/czlylibary/bean/SearchSuggestNewRsp;

    return-void
.end method
