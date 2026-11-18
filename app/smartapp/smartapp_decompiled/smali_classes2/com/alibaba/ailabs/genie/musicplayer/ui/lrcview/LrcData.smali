.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;
.super Ljava/lang/Object;
.source "LrcData.java"


# instance fields
.field private mCurrentLrcRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSongId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->mSongId:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->mCurrentLrcRows:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->mCurrentLrcRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->mSongId:Ljava/lang/String;

    return-void
.end method

.method public getCurrentLrcRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->mCurrentLrcRows:Ljava/util/List;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->mSongId:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentLrcRows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->mCurrentLrcRows:Ljava/util/List;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcData;->mSongId:Ljava/lang/String;

    return-void
.end method
