.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;
.super Ljava/lang/Object;
.source "FavouriteMusicBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverBean"
.end annotation


# instance fields
.field private img:Ljava/lang/String;

.field private large:Ljava/lang/Object;

.field private mediam:Ljava/lang/Object;

.field private medium:Ljava/lang/Object;

.field private small:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getImg()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getLarge()Ljava/lang/Object;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;->large:Ljava/lang/Object;

    return-object v0
.end method

.method public getMediam()Ljava/lang/Object;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;->mediam:Ljava/lang/Object;

    return-object v0
.end method

.method public getMedium()Ljava/lang/Object;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;->medium:Ljava/lang/Object;

    return-object v0
.end method

.method public getSmall()Ljava/lang/Object;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;->small:Ljava/lang/Object;

    return-object v0
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setLarge(Ljava/lang/Object;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;->large:Ljava/lang/Object;

    return-void
.end method

.method public setMediam(Ljava/lang/Object;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;->mediam:Ljava/lang/Object;

    return-void
.end method

.method public setMedium(Ljava/lang/Object;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;->medium:Ljava/lang/Object;

    return-void
.end method

.method public setSmall(Ljava/lang/Object;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AlbumItemBean$CoverBean;->small:Ljava/lang/Object;

    return-void
.end method
