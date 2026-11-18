.class public Lcom/rich/czlylibary/bean/SearchSongsForVoiceBox;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private searchVoiceBox:Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;

.field private searchVoiceBoxS:Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRspS;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSearchVoiceBox()Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSongsForVoiceBox;->searchVoiceBox:Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;

    return-object v0
.end method

.method public getSearchVoiceBoxS()Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRspS;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/SearchSongsForVoiceBox;->searchVoiceBoxS:Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRspS;

    return-object v0
.end method

.method public setSearchVoiceBox(Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSongsForVoiceBox;->searchVoiceBox:Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRsp;

    return-void
.end method

.method public setSearchVoiceBoxS(Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRspS;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/SearchSongsForVoiceBox;->searchVoiceBoxS:Lcom/rich/czlylibary/bean/SearchVoiceBoxNewRspS;

    return-void
.end method
