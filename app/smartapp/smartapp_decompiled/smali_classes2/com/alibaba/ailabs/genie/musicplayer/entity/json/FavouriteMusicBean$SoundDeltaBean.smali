.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;
.super Ljava/lang/Object;
.source "FavouriteMusicBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundDeltaBean"
.end annotation


# instance fields
.field private soundDelta:Ljava/lang/String;

.field private soundVolume:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSoundDelta()Ljava/lang/String;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;->soundDelta:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundVolume()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;->soundVolume:Ljava/lang/String;

    return-object v0
.end method

.method public setSoundDelta(Ljava/lang/String;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;->soundDelta:Ljava/lang/String;

    return-void
.end method

.method public setSoundVolume(Ljava/lang/String;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$SoundDeltaBean;->soundVolume:Ljava/lang/String;

    return-void
.end method
