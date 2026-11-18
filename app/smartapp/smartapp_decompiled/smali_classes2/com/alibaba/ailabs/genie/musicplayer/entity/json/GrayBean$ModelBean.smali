.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;
.super Ljava/lang/Object;
.source "GrayBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelBean"
.end annotation


# instance fields
.field private model:Z

.field private msgCode:I

.field private success:Z

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModel()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;->model:Z

    return v0
.end method

.method public getMsgCode()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;->msgCode:I

    return v0
.end method

.method public isModel()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;->model:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;->success:Z

    return v0
.end method

.method public setModel(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;->model:Z

    return-void
.end method

.method public setMsgCode(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;->msgCode:I

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/GrayBean$ModelBean;->success:Z

    return-void
.end method
