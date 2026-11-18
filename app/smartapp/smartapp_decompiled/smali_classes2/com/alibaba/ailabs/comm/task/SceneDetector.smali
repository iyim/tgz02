.class public Lcom/alibaba/ailabs/comm/task/SceneDetector;
.super Ljava/lang/Object;
.source "SceneDetector.java"

# interfaces
.implements Lcom/alibaba/ailabs/comm/task/listener/ISceneDetect;


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneDetector"


# instance fields
.field private mNewTaskConfig:Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;

.field private final mScene:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuperTaskApp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskApp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskPage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mTaskApp:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mTaskPage:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mSuperTaskApp:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mScene:Ljava/util/Map;

    return-void
.end method

.method private addTaskInfo(Ljava/util/Map;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 45
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addScene(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mScene:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public addSuperTaskPage(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mSuperTaskApp:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->addTaskInfo(Ljava/util/Map;ILjava/util/List;)V

    return-void
.end method

.method public addTaskApp(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mTaskApp:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->addTaskInfo(Ljava/util/Map;ILjava/util/List;)V

    return-void
.end method

.method public addTaskPage(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mTaskPage:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->addTaskInfo(Ljava/util/Map;ILjava/util/List;)V

    return-void
.end method

.method public getNewTaskConfig()Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mNewTaskConfig:Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;

    return-object v0
.end method

.method public getTaskApp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mTaskApp:Ljava/util/Map;

    return-object v0
.end method

.method public getTaskType(Ljava/lang/String;)I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mTaskApp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSceneDetect(Lcom/alibaba/ailabs/comm/task/SceneInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSceneDetect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isSelfApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mScene:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "normal"

    .line 82
    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->setSceneType(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mTaskPage:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 93
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mSuperTaskApp:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    :cond_2
    if-nez v0, :cond_3

    .line 103
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mTaskApp:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    :cond_3
    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->setTaskType(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mTaskApp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mTaskPage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mSuperTaskApp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mScene:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setNewTaskConfig(Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneDetector;->mNewTaskConfig:Lcom/alibaba/ailabs/comm/task/ex/NewTaskConfig;

    return-void
.end method
