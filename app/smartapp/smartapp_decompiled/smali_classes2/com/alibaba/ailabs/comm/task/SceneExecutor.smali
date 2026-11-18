.class public Lcom/alibaba/ailabs/comm/task/SceneExecutor;
.super Ljava/lang/Object;
.source "SceneExecutor.java"

# interfaces
.implements Lcom/alibaba/ailabs/comm/task/listener/IScene;


# static fields
.field public static final TAG:Ljava/lang/String; = "SceneExecutor"


# instance fields
.field private importanceConfig:Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;

.field private mContext:Landroid/content/Context;

.field private final mDetector:Lcom/alibaba/ailabs/comm/task/SceneDetector;

.field private mEnableScene:Z

.field private mEnableTask:Z

.field private final mForbiddenApp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGetPkgInfoListener:Lcom/alibaba/ailabs/comm/task/listener/IGetPkgInfo;

.field private mHandler:Landroid/os/Handler;

.field private final mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

.field private mIsScreenOff:Z

.field private mIsScreenSaver:Z

.field private mKillConfig:Lcom/alibaba/ailabs/comm/task/ex/KillConfig;

.field private final mLocalClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alibaba/ailabs/comm/task/client/SceneLocal;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageRemoteClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/comm/task/client/PackageRemote;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/comm/task/client/SceneRemote;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/listener/IScene;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneListener:Lcom/alibaba/ailabs/comm/task/listener/IScene;

.field private mScreeSaverUpdataTime:J

.field private final mTaskExeInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/ailabs/comm/task/ExecuteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpPakageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/alibaba/ailabs/comm/task/SceneDetector;

    invoke-direct {v0}, Lcom/alibaba/ailabs/comm/task/SceneDetector;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mDetector:Lcom/alibaba/ailabs/comm/task/SceneDetector;

    .line 35
    new-instance v0, Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/comm/task/SceneInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mSceneList:Ljava/util/List;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mRemoteClients:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mLocalClients:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mForbiddenApp:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTaskExeInfo:Ljava/util/Map;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mEnableTask:Z

    .line 61
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mEnableScene:Z

    .line 63
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenOff:Z

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenSaver:Z

    .line 67
    new-instance v1, Lcom/alibaba/ailabs/comm/task/PackageInfo;

    invoke-direct {v1}, Lcom/alibaba/ailabs/comm/task/PackageInfo;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    .line 68
    new-instance v1, Lcom/alibaba/ailabs/comm/task/PackageInfo;

    invoke-direct {v1}, Lcom/alibaba/ailabs/comm/task/PackageInfo;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTmpPakageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    .line 69
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageRemoteClients:Ljava/util/Map;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageName:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    const-string v1, "normal"

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->setSceneType(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->setTaskType(I)V

    return-void
.end method

.method private getVirtualPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mGetPkgInfoListener:Lcom/alibaba/ailabs/comm/task/listener/IGetPkgInfo;

    if-eqz v1, :cond_0

    .line 309
    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/comm/task/listener/IGetPkgInfo;->onGetVirtualPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object p2, v0

    :cond_1
    return-object p2
.end method

.method private notifySceneChange(Ljava/lang/String;IILjava/lang/String;)V
    .locals 9

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySceneChange  sceneType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",taskType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mRemoteClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mRemoteClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;

    .line 448
    invoke-virtual {v3}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->getFlag()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scene remote client = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 451
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->onScene(Ljava/lang/String;IIILjava/lang/String;)Z

    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mLocalClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mLocalClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;

    .line 458
    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->getFlag()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scene local client = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->onScene(Ljava/lang/String;IILjava/lang/String;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private notifyTaskChange(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 9

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyTaskChange  sceneType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",taskType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killTaskType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mRemoteClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mRemoteClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;

    .line 394
    invoke-virtual {v3}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->getFlag()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {v3}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->getTaskType()I

    move-result v2

    if-ne v2, p4, :cond_0

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task remote client = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p5

    .line 398
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->onScene(Ljava/lang/String;IIILjava/lang/String;)Z

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mLocalClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mLocalClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;

    .line 407
    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->getFlag()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 408
    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->getTaskType()I

    move-result v3

    if-ne p4, v3, :cond_2

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task local client = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v2, p1, p2, p3, p5}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->onScene(Ljava/lang/String;IILjava/lang/String;)Z

    goto :goto_1

    .line 417
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mDetector:Lcom/alibaba/ailabs/comm/task/SceneDetector;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->getTaskApp()Ljava/util/Map;

    move-result-object p1

    .line 421
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 423
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p4, :cond_4

    .line 425
    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->isForceKill(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 426
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "task kill packageName = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->killProcessByPackagename(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 429
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "task forbidden kill packageName = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 434
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTaskExeInfo:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;

    if-eqz p1, :cond_7

    .line 436
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/comm/task/ExecuteInfo;->execute(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method private onInterceptSceneEvent(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    .line 530
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getSceneList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 534
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 535
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/comm/task/listener/IScene;

    if-eqz v2, :cond_1

    .line 537
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/alibaba/ailabs/comm/task/listener/IScene;->onScene(Ljava/lang/String;IILjava/lang/String;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onPackageChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 321
    iget-object p4, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTmpPakageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    iput-object p1, p4, Lcom/alibaba/ailabs/comm/task/PackageInfo;->realPackageName:Ljava/lang/String;

    .line 326
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 327
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTmpPakageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    iput-object p3, p1, Lcom/alibaba/ailabs/comm/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    goto :goto_0

    .line 328
    :cond_0
    iget-object p3, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 329
    iget-object p3, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTmpPakageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->getVirtualPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/alibaba/ailabs/comm/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    goto :goto_0

    .line 331
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTmpPakageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    iput-object p1, p2, Lcom/alibaba/ailabs/comm/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    .line 339
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTmpPakageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/comm/task/PackageInfo;->toReplace(Lcom/alibaba/ailabs/comm/task/PackageInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 340
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    .line 341
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTmpPakageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    iput-object p2, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    .line 342
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTmpPakageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    .line 344
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageInfo:Lcom/alibaba/ailabs/comm/task/PackageInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->notifyPackageChange(Lcom/alibaba/ailabs/comm/task/PackageInfo;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addExecuteInfo(ILcom/alibaba/ailabs/comm/task/ExecuteInfo;)V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTaskExeInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addLocal(IILcom/alibaba/ailabs/comm/task/listener/IScene;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 606
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;-><init>(IILcom/alibaba/ailabs/comm/task/listener/IScene;)V

    .line 607
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mLocalClients:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add local client  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SceneExecutor"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addNotKillTaskApp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mForbiddenApp:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addPackageRemote(Lcom/alibaba/ailabs/comm/task/client/PackageRemote;)V
    .locals 5

    .line 573
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageRemoteClients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;

    const-string v2, "SceneExecutor"

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->unlinkToDeath()V

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop package prevClient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->linkToDeath()V

    .line 581
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageRemoteClients:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start package client = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addRemote(Lcom/alibaba/ailabs/comm/task/client/SceneRemote;)V
    .locals 5

    .line 543
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mRemoteClients:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;

    const-string v2, "SceneExecutor"

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->unlinkToDeath()V

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop prevClient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->linkToDeath()V

    .line 551
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mRemoteClients:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start client = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addSceneListener(Lcom/alibaba/ailabs/comm/task/listener/IScene;)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mSceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clearListener()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mSceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public exitAllMediaPlayer()V
    .locals 7

    .line 627
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/utils/Utils;->getForegroundPageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getSceneType()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getTaskType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->notifyTaskChange(Ljava/lang/String;IIILjava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getSceneType()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getTaskType()I

    move-result v3

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->notifyTaskChange(Ljava/lang/String;IIILjava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mKillConfig:Lcom/alibaba/ailabs/comm/task/ex/KillConfig;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v4, v1, v2, v0, v3}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskManager;->forceKillProcess(Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/ailabs/comm/task/ex/KillConfig;Ljava/util/List;Z)V

    :cond_0
    const-string v0, "SceneExecutor"

    const-string v1, "execute all media exit"

    .line 639
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDetector()Lcom/alibaba/ailabs/comm/task/SceneDetector;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mDetector:Lcom/alibaba/ailabs/comm/task/SceneDetector;

    return-object v0
.end method

.method public getImportanceConfig()Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->importanceConfig:Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;

    return-object v0
.end method

.method public getSceneInfo()Lcom/alibaba/ailabs/comm/task/SceneInfo;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    return-object v0
.end method

.method public getSceneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/task/listener/IScene;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mSceneList:Ljava/util/List;

    return-object v0
.end method

.method public isEnableScene()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mEnableScene:Z

    return v0
.end method

.method public isEnableTask()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mEnableTask:Z

    return v0
.end method

.method public isForceKill(Ljava/lang/String;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mForbiddenApp:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public loadPath(Ljava/lang/String;Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/alibaba/ailabs/comm/task/TaskParser;->onParser(Landroid/content/Context;Lcom/alibaba/ailabs/comm/task/SceneExecutor;Ljava/lang/String;Z)Z

    return-void
.end method

.method public notifyPackageChange(Lcom/alibaba/ailabs/comm/task/PackageInfo;)V
    .locals 6

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyChangePackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SceneExecutor"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageRemoteClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageRemoteClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {v3, p1}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->onChangePackage(Lcom/alibaba/ailabs/comm/task/PackageInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityChange(Ljava/lang/String;ZZZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityChange pageInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isScreenChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isScreenSaverChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QUICK"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v4, "/"

    .line 188
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 189
    array-length v6, v4

    const/4 v7, 0x2

    if-lt v6, v7, :cond_f

    const/4 v6, 0x0

    aget-object v8, v4, v6

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    aget-object v9, v4, v8

    if-nez v9, :cond_1

    goto/16 :goto_3

    :cond_1
    if-nez p4, :cond_4

    .line 195
    iget-object v9, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    if-eqz v9, :cond_3

    .line 197
    invoke-virtual {v9}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 198
    iget-object v9, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mKillConfig:Lcom/alibaba/ailabs/comm/task/ex/KillConfig;

    if-eqz v9, :cond_2

    aget-object v10, v4, v8

    invoke-virtual {v9, v10}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->matchShortActivity(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 199
    :goto_0
    iget-object v10, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mHandler:Landroid/os/Handler;

    aget-object v11, v4, v6

    aget-object v12, v4, v8

    iget-object v13, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    iget-object v14, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->importanceConfig:Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;

    iget-object v15, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mKillConfig:Lcom/alibaba/ailabs/comm/task/ex/KillConfig;

    move-object/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskManager;->killProcessV2(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;Lcom/alibaba/ailabs/comm/task/ex/KillConfig;Ljava/util/List;Z)V

    .line 200
    iget-object v10, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mKillConfig:Lcom/alibaba/ailabs/comm/task/ex/KillConfig;

    xor-int/2addr v9, v8

    invoke-static {v1, v10, v11, v5, v9}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskManager;->forceKillProcess(Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/ailabs/comm/task/ex/KillConfig;Ljava/util/List;Z)V

    goto :goto_1

    :cond_3
    const-string v9, "killOtherMusic is error am is null"

    .line 202
    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_1
    iget-object v5, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/alibaba/ailabs/comm/task/ex/NewTaskManager;->onHomeTask(Landroid/content/Context;[Ljava/lang/String;)V

    .line 213
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->isEnableScene()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->isEnableTask()Z

    move-result v5

    if-nez v5, :cond_5

    return-void

    .line 219
    :cond_5
    iget-object v5, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getSceneType()Ljava/lang/String;

    move-result-object v5

    .line 220
    iget-object v9, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {v9}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getTaskType()I

    move-result v9

    .line 222
    iget-object v10, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageName:Ljava/lang/String;

    aget-object v11, v4, v6

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    .line 226
    iget-object v11, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mDetector:Lcom/alibaba/ailabs/comm/task/SceneDetector;

    iget-object v12, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    aget-object v13, v4, v6

    aget-object v14, v4, v8

    invoke-virtual {v11, v12, v10, v13, v14}, Lcom/alibaba/ailabs/comm/task/SceneDetector;->onSceneDetect(Lcom/alibaba/ailabs/comm/task/SceneInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-boolean v10, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenSaver:Z

    if-eqz v10, :cond_6

    if-nez v2, :cond_6

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 233
    iget-wide v12, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mScreeSaverUpdataTime:J

    const-wide/16 v14, 0x2710

    add-long/2addr v12, v14

    cmp-long v14, v10, v12

    if-lez v14, :cond_6

    const/4 v2, 0x1

    :cond_6
    const-string v10, ", prev screen status = "

    const-string v11, "screen status = "

    const-string v12, "SceneExecutor"

    if-eqz v2, :cond_7

    .line 239
    iget-boolean v13, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenSaver:Z

    .line 240
    iget-object v14, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/alibaba/ailabs/comm/utils/Utils;->isScreenSaver(Landroid/content/Context;)Z

    move-result v14

    .line 242
    iput-boolean v14, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenSaver:Z

    .line 244
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",isScreenSaverChanged  = "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_7
    iget-boolean v3, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenSaver:Z

    if-eqz v3, :cond_8

    .line 250
    iget-object v3, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    const-string v13, "screen_saver"

    invoke-virtual {v3, v13}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->setSceneType(Ljava/lang/String;)V

    .line 256
    :cond_8
    iget-boolean v3, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenOff:Z

    if-nez v3, :cond_9

    if-eqz v2, :cond_b

    .line 257
    :cond_9
    iget-object v3, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/ailabs/comm/utils/Utils;->isScreenOn(Landroid/content/Context;)Z

    move-result v3

    .line 258
    iget-boolean v13, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenOff:Z

    xor-int/lit8 v14, v3, 0x1

    .line 261
    iput-boolean v14, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenOff:Z

    .line 262
    iget-boolean v14, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenOff:Z

    if-eqz v14, :cond_a

    .line 263
    iget-object v14, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    const-string v15, "screen_off"

    invoke-virtual {v14, v15}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->setSceneType(Ljava/lang/String;)V

    .line 266
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isScreenChanged  = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityChange,prevTaskType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",taskType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    .line 273
    invoke-virtual {v3}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getTaskType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",prevSceneType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",sceneType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    .line 274
    invoke-virtual {v3}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getSceneType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",pageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getSceneType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v7, 0x0

    .line 283
    :goto_2
    iget-object v2, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getTaskType()I

    move-result v2

    if-eq v9, v2, :cond_d

    or-int/lit8 v7, v7, 0x1

    :cond_d
    if-eqz v7, :cond_e

    .line 291
    iget-object v2, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getSceneType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mInfo:Lcom/alibaba/ailabs/comm/task/SceneInfo;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/comm/task/SceneInfo;->getTaskType()I

    move-result v3

    invoke-virtual {v0, v2, v3, v7, v1}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onScene(Ljava/lang/String;IILjava/lang/String;)Z

    .line 295
    :cond_e
    aget-object v1, v4, v6

    aget-object v2, v4, v8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onPackageChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_3
    return-void
.end method

.method public onContainerChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContainerChange,packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pageInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 362
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    .line 366
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 367
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_0

    .line 371
    :cond_1
    aget-object v2, p1, v0

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_2

    move-object p3, v2

    move-object p4, p3

    .line 381
    :cond_2
    aget-object p2, p1, v0

    aget-object p1, p1, v1

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onPackageChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onParser(Ljava/lang/String;)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YZB onParser data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/alibaba/ailabs/comm/task/TaskParser;->onParser(Landroid/content/Context;Lcom/alibaba/ailabs/comm/task/SceneExecutor;Ljava/lang/String;)Z

    return-void
.end method

.method public onScene(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 7

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sceneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " taskType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onInterceptSceneEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableScene="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->isEnableScene()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isEnableTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->isEnableTask()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->isEnableScene()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->notifySceneChange(Ljava/lang/String;IILjava/lang/String;)V

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->isEnableTask()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_4

    if-eq p2, v6, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 509
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->notifyTaskChange(Ljava/lang/String;IIILjava/lang/String;)V

    const/4 v4, 0x2

    .line 510
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->notifyTaskChange(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 504
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->notifyTaskChange(Ljava/lang/String;IIILjava/lang/String;)V

    const/4 v4, 0x1

    .line 505
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->notifyTaskChange(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 498
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->notifyTaskChange(Ljava/lang/String;IIILjava/lang/String;)V

    const/4 v4, 0x2

    .line 499
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->notifyTaskChange(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_4
    :goto_0
    return v6
.end method

.method public removeLocal(IILcom/alibaba/ailabs/comm/task/listener/IScene;)V
    .locals 4

    .line 614
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mLocalClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 617
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;

    .line 619
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->isSame(IILcom/alibaba/ailabs/comm/task/listener/IScene;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove local client  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/task/client/SceneLocal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SceneExecutor"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removePackageRemote(Ljava/lang/String;Z)V
    .locals 4

    .line 588
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageRemoteClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;

    if-eqz v0, :cond_1

    const-string v1, ", client  = "

    const-string v2, "SceneExecutor"

    if-eqz p2, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop package fail isDied = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 595
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mPackageRemoteClients:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->unlinkToDeath()V

    .line 598
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop package isDied = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/client/PackageRemote;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public removeRemote(Ljava/lang/String;Z)V
    .locals 4

    .line 558
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mRemoteClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;

    if-eqz v0, :cond_1

    const-string v1, ", client  = "

    const-string v2, "SceneExecutor"

    if-eqz p2, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop fail isDied = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 565
    :cond_0
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mRemoteClients:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->unlinkToDeath()V

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop isDied = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/client/SceneRemote;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public removeSceneListener(Lcom/alibaba/ailabs/comm/task/listener/IScene;)Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mSceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mForbiddenApp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 649
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mTaskExeInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setEnableScene(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mEnableScene:Z

    return-void
.end method

.method public setEnableTask(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mEnableTask:Z

    return-void
.end method

.method public setExecutor(Lcom/alibaba/ailabs/comm/task/listener/IScene;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mSceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setImportanceConfig(Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->importanceConfig:Lcom/alibaba/ailabs/comm/task/ex/ImportanceConfig;

    return-void
.end method

.method public setScreenSaver(Ljava/lang/String;Z)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prev screen status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenSaver:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-boolean p2, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mIsScreenSaver:Z

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mScreeSaverUpdataTime:J

    const/4 p2, 0x0

    .line 171
    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onActivityChange(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public setVirtualPkgListener(Lcom/alibaba/ailabs/comm/task/listener/IGetPkgInfo;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mGetPkgInfoListener:Lcom/alibaba/ailabs/comm/task/listener/IGetPkgInfo;

    return-void
.end method

.method public updateMusicListPackage(Ljava/lang/String;)V
    .locals 1

    .line 102
    :try_start_0
    const-class v0, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mKillConfig:Lcom/alibaba/ailabs/comm/task/ex/KillConfig;

    .line 103
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mKillConfig:Lcom/alibaba/ailabs/comm/task/ex/KillConfig;

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->mKillConfig:Lcom/alibaba/ailabs/comm/task/ex/KillConfig;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/task/ex/KillConfig;->printConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
