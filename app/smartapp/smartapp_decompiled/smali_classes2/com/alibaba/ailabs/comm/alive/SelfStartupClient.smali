.class public Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;
.super Ljava/lang/Object;
.source "SelfStartupClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/alive/StartupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mIsStarted:Z

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mCtx:Landroid/content/Context;

    return-void
.end method

.method private remove(ILjava/lang/String;)V
    .locals 3

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    monitor-exit p0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    .line 45
    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mInfos:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    monitor-exit p0

    return-void

    .line 50
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mInfos:Ljava/util/List;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 2

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mInfos:Ljava/util/List;

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mInfos:Ljava/util/List;

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 62
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public start()V
    .locals 1

    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 31
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/alibaba/ailabs/comm/alive/SelfStartupClient;->mIsStarted:Z

    .line 34
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
