.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;
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
    name = "CoverBean"
.end annotation


# instance fields
.field private img:Ljava/lang/String;

.field private large:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getImg()Ljava/lang/String;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getLarge()Ljava/lang/String;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->large:Ljava/lang/String;

    return-object v0
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setLarge(Ljava/lang/String;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->large:Ljava/lang/String;

    return-void
.end method
