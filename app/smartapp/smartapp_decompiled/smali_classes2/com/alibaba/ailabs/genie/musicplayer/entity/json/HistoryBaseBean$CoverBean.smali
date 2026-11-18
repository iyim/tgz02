.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;
.super Ljava/lang/Object;
.source "HistoryBaseBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverBean"
.end annotation


# instance fields
.field private img:Ljava/lang/String;

.field private large:Ljava/lang/String;

.field private mediam:Ljava/lang/Object;

.field private medium:Ljava/lang/String;

.field private small:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getImg()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getLarge()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;->large:Ljava/lang/String;

    return-object v0
.end method

.method public getMediam()Ljava/lang/Object;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;->mediam:Ljava/lang/Object;

    return-object v0
.end method

.method public getMedium()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;->medium:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;->small:Ljava/lang/String;

    return-object v0
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setLarge(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;->large:Ljava/lang/String;

    return-void
.end method

.method public setMediam(Ljava/lang/Object;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;->mediam:Ljava/lang/Object;

    return-void
.end method

.method public setMedium(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;->medium:Ljava/lang/String;

    return-void
.end method

.method public setSmall(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryBaseBean$CoverBean;->small:Ljava/lang/String;

    return-void
.end method
