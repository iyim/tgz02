.class public Lcom/rich/czlylibary/bean/SearchAllNewResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private searchAll:Lcom/rich/czlylibary/bean/SearchAllNewRsp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSearchAll()Lcom/rich/czlylibary/bean/SearchAllNewRsp;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchAllNewResult;->searchAll:Lcom/rich/czlylibary/bean/SearchAllNewRsp;

    return-object v0
.end method

.method public setSearchAll(Lcom/rich/czlylibary/bean/SearchAllNewRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchAllNewResult;->searchAll:Lcom/rich/czlylibary/bean/SearchAllNewRsp;

    return-void
.end method
