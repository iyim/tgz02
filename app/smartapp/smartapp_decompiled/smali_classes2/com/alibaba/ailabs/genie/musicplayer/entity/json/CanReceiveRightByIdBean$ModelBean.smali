.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;
.super Ljava/lang/Object;
.source "CanReceiveRightByIdBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field private canReceive:Z

.field private rightCode:Ljava/lang/String;

.field private rightImage:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getRightCode()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->rightCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRightImage()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->rightImage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCanReceive()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->canReceive:Z

    return v0
.end method

.method public setCanReceive(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->canReceive:Z

    return-void
.end method

.method public setRightCode(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->rightCode:Ljava/lang/String;

    return-void
.end method

.method public setRightImage(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->rightImage:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->title:Ljava/lang/String;

    return-void
.end method
