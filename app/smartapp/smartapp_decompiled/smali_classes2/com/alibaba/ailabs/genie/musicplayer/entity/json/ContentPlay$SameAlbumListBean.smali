.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;
.super Ljava/lang/Object;
.source "ContentPlay.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SameAlbumListBean"
.end annotation


# instance fields
.field public cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

.field private id:I

.field private itemId:Ljava/lang/String;

.field private playFrom:Ljava/lang/String;

.field private position:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pos"
    .end annotation
.end field

.field private rawId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 743
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->id:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayFrom()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->playFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 711
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->position:I

    return v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCover(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 747
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->id:I

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setPlayFrom(Ljava/lang/String;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->playFrom:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 715
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->position:I

    return-void
.end method

.method public setRawId(Ljava/lang/String;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->rawId:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SameAlbumListBean{cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->cover:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rawId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->rawId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playFrom=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->playFrom:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", itemId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
