.class public Lcom/rich/czlylibary/bean/MVInfo;
.super Ljava/lang/Object;


# instance fields
.field private composerName:Ljava/lang/String;

.field private contentDesc:Ljava/lang/String;

.field private contentId:Ljava/lang/String;

.field private copyrightId:Ljava/lang/String;

.field private lyricsWriterName:Ljava/lang/String;

.field private mvFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MVFile;",
            ">;"
        }
    .end annotation
.end field

.field private singerID:Ljava/lang/String;

.field private singerName:Ljava/lang/String;

.field private songName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getComposerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MVInfo;->composerName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MVInfo;->contentDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MVInfo;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyrightId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MVInfo;->copyrightId:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricsWriterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MVInfo;->lyricsWriterName:Ljava/lang/String;

    return-object v0
.end method

.method public getMvFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MVFile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MVInfo;->mvFiles:Ljava/util/List;

    return-object v0
.end method

.method public getSingerID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MVInfo;->singerID:Ljava/lang/String;

    return-object v0
.end method

.method public getSingerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MVInfo;->singerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MVInfo;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public setComposerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MVInfo;->composerName:Ljava/lang/String;

    return-void
.end method

.method public setContentDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MVInfo;->contentDesc:Ljava/lang/String;

    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MVInfo;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setCopyrightId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MVInfo;->copyrightId:Ljava/lang/String;

    return-void
.end method

.method public setLyricsWriterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MVInfo;->lyricsWriterName:Ljava/lang/String;

    return-void
.end method

.method public setMvFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/MVFile;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MVInfo;->mvFiles:Ljava/util/List;

    return-void
.end method

.method public setSingerID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MVInfo;->singerID:Ljava/lang/String;

    return-void
.end method

.method public setSingerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MVInfo;->singerName:Ljava/lang/String;

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MVInfo;->songName:Ljava/lang/String;

    return-void
.end method
