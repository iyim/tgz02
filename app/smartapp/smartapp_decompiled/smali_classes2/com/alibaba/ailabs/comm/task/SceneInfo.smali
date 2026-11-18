.class public Lcom/alibaba/ailabs/comm/task/SceneInfo;
.super Ljava/lang/Object;
.source "SceneInfo.java"


# instance fields
.field private sceneType:Ljava/lang/String;

.field private taskType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSceneType()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneInfo;->sceneType:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/alibaba/ailabs/comm/task/SceneInfo;->taskType:I

    return v0
.end method

.method public setSceneType(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneInfo;->sceneType:Ljava/lang/String;

    return-void
.end method

.method public setTaskType(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/alibaba/ailabs/comm/task/SceneInfo;->taskType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneInfo{sceneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneInfo;->sceneType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taskType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/comm/task/SceneInfo;->taskType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
