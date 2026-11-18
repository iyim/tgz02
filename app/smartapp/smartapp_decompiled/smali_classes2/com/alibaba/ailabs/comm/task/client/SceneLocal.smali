.class public Lcom/alibaba/ailabs/comm/task/client/SceneLocal;
.super Ljava/lang/Object;
.source "SceneLocal.java"

# interfaces
.implements Lcom/alibaba/ailabs/comm/task/listener/IScene;


# instance fields
.field private flag:I

.field private iScene:Lcom/alibaba/ailabs/comm/task/listener/IScene;

.field private taskType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->flag:I

    .line 34
    iput p2, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->taskType:I

    return-void
.end method

.method public constructor <init>(IILcom/alibaba/ailabs/comm/task/listener/IScene;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->taskType:I

    .line 12
    iput p2, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->flag:I

    .line 13
    iput-object p3, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->iScene:Lcom/alibaba/ailabs/comm/task/listener/IScene;

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->flag:I

    return v0
.end method

.method public getTaskType()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->taskType:I

    return v0
.end method

.method public isSame(IILcom/alibaba/ailabs/comm/task/listener/IScene;)Z
    .locals 1

    .line 51
    iget v0, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->taskType:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->flag:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->iScene:Lcom/alibaba/ailabs/comm/task/listener/IScene;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onScene(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->iScene:Lcom/alibaba/ailabs/comm/task/listener/IScene;

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/comm/task/listener/IScene;->onScene(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFlag(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->flag:I

    return-void
.end method

.method public setTaskType(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->taskType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneLocal{flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->taskType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->iScene:Lcom/alibaba/ailabs/comm/task/listener/IScene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
