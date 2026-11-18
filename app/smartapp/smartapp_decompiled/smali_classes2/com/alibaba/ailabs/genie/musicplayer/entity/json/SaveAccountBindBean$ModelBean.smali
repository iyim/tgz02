.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;
.super Ljava/lang/Object;
.source "SaveAccountBindBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelBean"
.end annotation


# instance fields
.field private model:Z

.field private msgCode:I

.field private success:Z

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->success:Z

    .line 21
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->model:Z

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->msgCode:I

    return-void
.end method


# virtual methods
.method public getModel()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->model:Z

    return v0
.end method

.method public getMsgCode()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->msgCode:I

    return v0
.end method

.method public isModel()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->model:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->success:Z

    return v0
.end method

.method public setModel(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->model:Z

    return-void
.end method

.method public setMsgCode(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->msgCode:I

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->success:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelBean{success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->model:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", msgCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/SaveAccountBindBean$ModelBean;->msgCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
