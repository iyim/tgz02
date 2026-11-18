.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;
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
    name = "SoundQualityBean"
.end annotation


# instance fields
.field private isVip:Z

.field private qualityCode:Ljava/lang/String;

.field private qualityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getQualityCode()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->qualityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getQualityName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->qualityName:Ljava/lang/String;

    return-object v0
.end method

.method public isVip()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->isVip:Z

    return v0
.end method

.method public setQualityCode(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->qualityCode:Ljava/lang/String;

    return-void
.end method

.method public setQualityName(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->qualityName:Ljava/lang/String;

    return-void
.end method

.method public setVip(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SoundQualityBean;->isVip:Z

    return-void
.end method
