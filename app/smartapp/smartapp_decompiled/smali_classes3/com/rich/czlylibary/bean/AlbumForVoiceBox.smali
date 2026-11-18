.class public Lcom/rich/czlylibary/bean/AlbumForVoiceBox;
.super Ljava/lang/Object;


# instance fields
.field private copyrightID:Ljava/lang/String;

.field private dalbumID:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCopyrightID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumForVoiceBox;->copyrightID:Ljava/lang/String;

    return-object v0
.end method

.method public getDalbumID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumForVoiceBox;->dalbumID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumForVoiceBox;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/AlbumForVoiceBox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/bean/AlbumForVoiceBox;->type:I

    return v0
.end method

.method public setCopyrightID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumForVoiceBox;->copyrightID:Ljava/lang/String;

    return-void
.end method

.method public setDalbumID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumForVoiceBox;->dalbumID:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumForVoiceBox;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/AlbumForVoiceBox;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/rich/czlylibary/bean/AlbumForVoiceBox;->type:I

    return-void
.end method
