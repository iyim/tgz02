.class public Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;
.super Ljava/lang/Object;
.source "RuntimeProfilingInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector$ICollector;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;


# instance fields
.field private mCollectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector$ICollector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 26
    sget-object v0, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->sInstance:Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->sInstance:Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;

    invoke-direct {v1}, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;-><init>()V

    sput-object v1, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->sInstance:Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->sInstance:Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;

    return-object v0
.end method


# virtual methods
.method public addCollector(Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector$ICollector;)V
    .locals 1
    .param p1    # Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector$ICollector;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->mCollectors:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->mCollectors:Ljava/util/Set;

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->mCollectors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public collectErrorInfo(Lcom/taobao/android/dinamicx/DXError;Z)V
    .locals 2
    .param p1    # Lcom/taobao/android/dinamicx/DXError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 79
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->mCollectors:Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector$ICollector;

    .line 84
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector$ICollector;->onCollectErrorInfo(Lcom/taobao/android/dinamicx/DXError;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public collectPerformanceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;D)V
    .locals 11

    move-object v0, p0

    .line 66
    iget-object v1, v0, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->mCollectors:Ljava/util/Set;

    if-nez v1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector$ICollector;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    .line 71
    :try_start_0
    invoke-interface/range {v3 .. v10}, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector$ICollector;->onCollectPerformanceInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAllCollectors()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->mCollectors:Ljava/util/Set;

    return-void
.end method

.method public removeCollector(Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector$ICollector;)Z
    .locals 1
    .param p1    # Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector$ICollector;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/RuntimeProfilingInfoCollector;->mCollectors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
