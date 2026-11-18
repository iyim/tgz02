.class public Lcom/rich/czlylibary/bean/MiguSheetMusicInfo;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private playlist:Lcom/rich/czlylibary/bean/MiguAppPlayListItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPlaylist()Lcom/rich/czlylibary/bean/MiguAppPlayListItem;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MiguSheetMusicInfo;->playlist:Lcom/rich/czlylibary/bean/MiguAppPlayListItem;

    return-object v0
.end method

.method public setPlaylist(Lcom/rich/czlylibary/bean/MiguAppPlayListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MiguSheetMusicInfo;->playlist:Lcom/rich/czlylibary/bean/MiguAppPlayListItem;

    return-void
.end method
