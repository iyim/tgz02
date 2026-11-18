.class public Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;
.super Ljava/lang/Object;
.source "DXNotificationCenter.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/notification/DXSignalProduce$SignalReceiver;


# instance fields
.field failedTemplateItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field finishedTemplateItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field hasRegiserToSignalProduce:Z

.field listener:Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;

.field periodCount:I

.field periodTime:I

.field receiverCount:I

.field templateUpdateRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;",
            ">;"
        }
    .end annotation
.end field

.field updateRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/DXEngineConfig;)V
    .locals 1
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->hasRegiserToSignalProduce:Z

    .line 45
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXEngineConfig;->getPeriodTime()I

    move-result p1

    iput p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->periodTime:I

    .line 48
    iget p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->periodTime:I

    sget v0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->PERIOD_TIME:I

    if-ge p1, v0, :cond_0

    .line 49
    sget p1, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->PERIOD_TIME:I

    goto :goto_0

    .line 51
    :cond_0
    iget p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->periodTime:I

    .line 53
    :goto_0
    sget v0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->PERIOD_TIME:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->periodCount:I

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->finishedTemplateItems:Ljava/util/List;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->failedTemplateItems:Ljava/util/List;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->templateUpdateRequestList:Ljava/util/List;

    return-void
.end method

.method private addRequest(Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 174
    iget-object v0, p1, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->item:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->templateUpdateRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private needSendNotification()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->finishedTemplateItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->failedTemplateItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->templateUpdateRequestList:Ljava/util/List;

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->finishedTemplateItems:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->failedTemplateItems:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->templateUpdateRequestList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReceiver()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->listener:Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->receiverCount:I

    iget v1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->periodCount:I

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->sendNotification()V

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->receiverCount:I

    return-void

    .line 187
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->receiverCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->receiverCount:I

    return-void
.end method

.method public declared-synchronized postNotification(Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 131
    :try_start_0
    iget-object v0, p1, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->item:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->addRequest(Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 132
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized postNotification(Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 146
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;->getItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->finishedTemplateItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;->getItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;->getItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->failedTemplateItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/template/download/DXDownloadResult;->getItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postNotification(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 163
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->finishedTemplateItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 166
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->failedTemplateItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    .line 170
    :cond_1
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public registerNotificationListener(Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->listener:Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;

    .line 67
    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->hasRegiserToSignalProduce:Z

    if-nez p1, :cond_0

    .line 68
    invoke-static {}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->getInstance()Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->registerNotificationCenter(Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;)V

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->hasRegiserToSignalProduce:Z

    :cond_0
    return-void
.end method

.method declared-synchronized sendNotification()V
    .locals 4

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->needSendNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/taobao/android/dinamicx/notification/DXNotificationResult;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->finishedTemplateItems:Ljava/util/List;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->failedTemplateItems:Ljava/util/List;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->templateUpdateRequestList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/notification/DXNotificationResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 107
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->clear()V

    .line 108
    new-instance v1, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter$1;

    invoke-direct {v1, p0, v0}, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter$1;-><init>(Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;Lcom/taobao/android/dinamicx/notification/DXNotificationResult;)V

    invoke-static {v1}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unRegisterNotificationListener(Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->hasRegiserToSignalProduce:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->listener:Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;

    .line 84
    :cond_0
    invoke-static {}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->getInstance()Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->unregisterNotificationCenter(Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;)V

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->hasRegiserToSignalProduce:Z

    :cond_1
    return-void
.end method
