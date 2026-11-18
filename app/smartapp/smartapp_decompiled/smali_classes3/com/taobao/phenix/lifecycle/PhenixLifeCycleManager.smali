.class public Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;
.super Ljava/lang/Object;
.source "PhenixLifeCycleManager.java"

# interfaces
.implements Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager$Holder;
    }
.end annotation


# instance fields
.field private lifeCycles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;",
            ">;"
        }
    .end annotation
.end field

.field private readLock:Ljava/util/concurrent/locks/Lock;

.field private writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->lifeCycles:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 23
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->writeLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static instance()Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;
    .locals 1

    .line 27
    invoke-static {}, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager$Holder;->access$000()Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addLifeCycle(Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->lifeCycles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->lifeCycles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 37
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onCancel(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;

    .line 79
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;->onCancel(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;

    .line 67
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;

    .line 103
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onFinished(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;

    .line 91
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;->onFinished(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;

    .line 55
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;->onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeLifeCycle(Lcom/taobao/phenix/lifecycle/IPhenixLifeCycle;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->lifeCycles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object p1, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/taobao/phenix/lifecycle/PhenixLifeCycleManager;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
