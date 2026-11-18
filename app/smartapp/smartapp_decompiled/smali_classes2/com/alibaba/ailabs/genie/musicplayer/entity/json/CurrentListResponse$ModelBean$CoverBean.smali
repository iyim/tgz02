.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;
.super Ljava/lang/Object;
.source "CurrentListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverBean"
.end annotation


# instance fields
.field private canResize:Z

.field private img:Ljava/lang/String;

.field private large:Ljava/lang/Object;

.field private mediam:Ljava/lang/Object;

.field private medium:Ljava/lang/Object;

.field private small:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getImg()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getLarge()Ljava/lang/Object;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->large:Ljava/lang/Object;

    return-object v0
.end method

.method public getMediam()Ljava/lang/Object;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->mediam:Ljava/lang/Object;

    return-object v0
.end method

.method public getMedium()Ljava/lang/Object;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->medium:Ljava/lang/Object;

    return-object v0
.end method

.method public getSmall()Ljava/lang/Object;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->small:Ljava/lang/Object;

    return-object v0
.end method

.method public isCanResize()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->canResize:Z

    return v0
.end method

.method public setCanResize(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->canResize:Z

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setLarge(Ljava/lang/Object;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->large:Ljava/lang/Object;

    return-void
.end method

.method public setMediam(Ljava/lang/Object;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->mediam:Ljava/lang/Object;

    return-void
.end method

.method public setMedium(Ljava/lang/Object;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->medium:Ljava/lang/Object;

    return-void
.end method

.method public setSmall(Ljava/lang/Object;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean$CoverBean;->small:Ljava/lang/Object;

    return-void
.end method
