.class public Lcom/rich/czlylibary/bean/RecommendSongInfo;
.super Ljava/lang/Object;


# instance fields
.field private id:Ljava/lang/String;

.field private track:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendSongInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/RecommendSongInfo;->track:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendSongInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/RecommendSongInfo;->track:Ljava/lang/String;

    return-void
.end method
