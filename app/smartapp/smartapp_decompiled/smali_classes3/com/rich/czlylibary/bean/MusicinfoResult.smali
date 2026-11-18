.class public Lcom/rich/czlylibary/bean/MusicinfoResult;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private musicInfo:Lcom/rich/czlylibary/bean/MusicInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMusicInfo()Lcom/rich/czlylibary/bean/MusicInfo;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MusicinfoResult;->musicInfo:Lcom/rich/czlylibary/bean/MusicInfo;

    return-object v0
.end method

.method public setMusicInfo(Lcom/rich/czlylibary/bean/MusicInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MusicinfoResult;->musicInfo:Lcom/rich/czlylibary/bean/MusicInfo;

    return-void
.end method
