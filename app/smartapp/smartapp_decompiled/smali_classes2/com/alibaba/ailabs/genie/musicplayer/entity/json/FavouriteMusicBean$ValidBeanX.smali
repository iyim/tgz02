.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;
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
    name = "ValidBeanX"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;->name:Ljava/lang/String;

    return-void
.end method
