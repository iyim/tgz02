.class public Lcom/alibaba/ailabs/comm/task/ex/KillConfig;
.super Ljava/lang/Object;
.source "KillConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;
    }
.end annotation


# instance fields
.field private packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->packages:Ljava/util/List;

    return-object v0
.end method

.method public getScenekillProcessList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getStickyProcesss()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public matchShortActivity(Ljava/lang/String;)Z
    .locals 2

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    if-nez v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getShortTimeApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getShortTimeApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getShortTimeApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public matchStickyProcess(Ljava/lang/String;)Z
    .locals 3

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getStickyProcesss()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getStickyProcesss()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getStickyProcesss()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getStickyProcesss()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public printConfig()V
    .locals 5

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scenekillList is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUICK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getShortTimeApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getShortTimeApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getShortTimeApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getStickyProcesss()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getStickyProcesss()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;->getStickyProcesss()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->packages:Ljava/util/List;

    return-void
.end method

.method public setScenekillList(Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->scenekillList:Lcom/alibaba/ailabs/comm/task/ex/KillConfig$SceneConfig;

    return-void
.end method
