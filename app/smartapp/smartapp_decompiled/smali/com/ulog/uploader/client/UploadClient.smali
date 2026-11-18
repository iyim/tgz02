.class public Lcom/ulog/uploader/client/UploadClient;
.super Ljava/lang/Object;
.source "UploadClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ULog.UploadClient"


# instance fields
.field private final appId:Ljava/lang/String;

.field private final appSecret:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private final buildSeq:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final debug:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logDir:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final projectName:Ljava/lang/String;

.field private final rom:Ljava/lang/String;

.field private final runningUploadTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ulog/uploader/client/UploadTask;",
            ">;"
        }
    .end annotation
.end field

.field private uLogUploadCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ulog/uploader/callback/ULogUploadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final uploader:Lcom/ulog/uploader/client/IULogUploader;

.field private final utdId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/ulog/uploader/client/IULogUploader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/ulog/uploader/client/IULogUploader;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->uLogUploadCallback:Ljava/lang/ref/WeakReference;

    .line 58
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadClient;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/ulog/uploader/client/UploadClient;->projectName:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/ulog/uploader/client/UploadClient;->appVersion:Ljava/lang/String;

    const-string p1, ""

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p1

    .line 61
    :goto_0
    iput-object p5, p0, Lcom/ulog/uploader/client/UploadClient;->appId:Ljava/lang/String;

    if-eqz p6, :cond_1

    move-object p1, p6

    .line 62
    :cond_1
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadClient;->appSecret:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/ulog/uploader/client/UploadClient;->buildSeq:Ljava/lang/String;

    .line 64
    iput-object p8, p0, Lcom/ulog/uploader/client/UploadClient;->utdId:Ljava/lang/String;

    .line 65
    iput-object p9, p0, Lcom/ulog/uploader/client/UploadClient;->extraInfo:Ljava/util/Map;

    .line 66
    iput-object p3, p0, Lcom/ulog/uploader/client/UploadClient;->logDir:Ljava/lang/String;

    .line 67
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string/jumbo p2, "unknown"

    if-eqz p1, :cond_2

    move-object p1, p2

    goto :goto_1

    :cond_2
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadClient;->model:Ljava/lang/String;

    .line 68
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_2
    iput-object p2, p0, Lcom/ulog/uploader/client/UploadClient;->rom:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/ulog/uploader/client/UploadClient;->executor:Ljava/util/concurrent/Executor;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ulog/uploader/client/UploadClient;->runningUploadTasks:Ljava/util/ArrayList;

    .line 71
    iput-boolean p10, p0, Lcom/ulog/uploader/client/UploadClient;->debug:Z

    .line 72
    iput-object p11, p0, Lcom/ulog/uploader/client/UploadClient;->uploader:Lcom/ulog/uploader/client/IULogUploader;

    .line 74
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/ulog/uploader/client/UploadClient$1;

    invoke-direct {p2, p0}, Lcom/ulog/uploader/client/UploadClient$1;-><init>(Lcom/ulog/uploader/client/UploadClient;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/ulog/uploader/client/UploadClient;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/ulog/uploader/client/UploadClient;->checkPendingUploadTask()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/ulog/uploader/client/UploadClient;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/ulog/uploader/client/UploadClient;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ulog/uploader/client/UploadClient;Lcom/ulog/uploader/client/UploadTask;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/ulog/uploader/client/UploadClient;->removeTask(Lcom/ulog/uploader/client/UploadTask;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private addTask(Lcom/ulog/uploader/client/UploadTask;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->runningUploadTasks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/ulog/uploader/client/UploadClient;->runningUploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkPendingUploadTask()V
    .locals 1

    .line 157
    invoke-static {p0}, Lcom/ulog/uploader/client/UpgradeLogRetry;->getInstance(Lcom/ulog/uploader/client/UploadClient;)Lcom/ulog/uploader/client/UpgradeLogRetry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ulog/uploader/client/UpgradeLogRetry;->onULogUpLoadCheck()V

    return-void
.end method

.method private isTaskExist(Lcom/ulog/uploader/client/UploadTask;)Z
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->runningUploadTasks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/ulog/uploader/client/UploadClient;->runningUploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ulog/uploader/client/UploadTask;

    .line 229
    invoke-virtual {v2, p1}, Lcom/ulog/uploader/client/UploadTask;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 230
    monitor-exit v0

    return p1

    .line 233
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private removeTask(Lcom/ulog/uploader/client/UploadTask;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->runningUploadTasks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/ulog/uploader/client/UploadClient;->runningUploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private uploadULogInternal(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/ulog/uploader/callback/ULogUploadCallback;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 193
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->uLogUploadCallback:Ljava/lang/ref/WeakReference;

    .line 198
    :goto_0
    new-instance p3, Lcom/ulog/uploader/client/UploadTask;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/ulog/uploader/client/UploadTask;-><init>(Lcom/ulog/uploader/client/UploadClient;Ljava/lang/String;Ljava/util/Date;Ljava/lang/ref/WeakReference;IILjava/util/Map;)V

    .line 199
    new-instance p4, Lcom/ulog/uploader/client/UploadClient$2;

    invoke-direct {p4, p0}, Lcom/ulog/uploader/client/UploadClient$2;-><init>(Lcom/ulog/uploader/client/UploadClient;)V

    invoke-virtual {p3, p4}, Lcom/ulog/uploader/client/UploadTask;->setListener(Lcom/ulog/uploader/client/UploadTask$TaskListener;)V

    .line 206
    invoke-direct {p0, p3}, Lcom/ulog/uploader/client/UploadClient;->isTaskExist(Lcom/ulog/uploader/client/UploadTask;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 207
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 208
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ulog/uploader/callback/ULogUploadCallback;

    invoke-static {p2}, Lcom/ulog/uploader/utils/ULogDateUtils;->dateOfFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/ulog/uploader/callback/ULogUploadCallback;->onTaskAlreadyRunning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 213
    :cond_3
    invoke-direct {p0, p3}, Lcom/ulog/uploader/client/UploadClient;->addTask(Lcom/ulog/uploader/client/UploadTask;)V

    .line 214
    iget-object p1, p0, Lcom/ulog/uploader/client/UploadClient;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/ulog/uploader/client/UploadClient$3;

    invoke-direct {p2, p0, p3}, Lcom/ulog/uploader/client/UploadClient$3;-><init>(Lcom/ulog/uploader/client/UploadClient;Lcom/ulog/uploader/client/UploadTask;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "ULog.UploadClient"

    const-string/jumbo p2, "uploadULog, param should not be null."

    .line 187
    invoke-static {p1, p2}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addExtraInfo2File(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 258
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/uc/sdk/ulog/ULogSetup;->addExtraInfo2File(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildSeq()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->buildSeq:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultUploadCallback()Lcom/ulog/uploader/callback/ULogUploadCallback;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->uLogUploadCallback:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ulog/uploader/callback/ULogUploadCallback;

    :goto_0
    return-object v0
.end method

.method public getExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->extraInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getLogDir()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->logDir:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public getRom()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->rom:Ljava/lang/String;

    return-object v0
.end method

.method public getUploader()Lcom/ulog/uploader/client/IULogUploader;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->uploader:Lcom/ulog/uploader/client/IULogUploader;

    return-object v0
.end method

.method public getUtdId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->utdId:Ljava/lang/String;

    return-object v0
.end method

.method public onReceivedPush(Ljava/lang/String;)V
    .locals 0

    .line 223
    invoke-static {p0, p1}, Lcom/ulog/uploader/client/ULogPushProcess;->processPushMsg(Lcom/ulog/uploader/client/UploadClient;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setDefaultUploadCallback(Lcom/ulog/uploader/callback/ULogUploadCallback;)V
    .locals 1

    .line 250
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->uLogUploadCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public uploadAllULog(Ljava/util/Date;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-static {p0, p1}, Lcom/ulog/uploader/utils/UploadUtils;->getAllExistProcessLogFiles(Lcom/ulog/uploader/client/UploadClient;Ljava/util/Date;)Ljava/util/HashSet;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v1, 0x1

    .line 150
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v2, "ULog.UploadClient"

    const-string/jumbo v4, "uploadAllULog uploadULog. try to upload all process, current: %s"

    invoke-static {v2, v4, v1}, Lcom/uc/sdk/ulog/ULog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->with()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    move-object v4, p1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/ulog/uploader/ULogUploadSetup;->uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/ulog/uploader/callback/ULogUploadCallback;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ULog.UploadClient"

    if-nez v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v0, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt p4, v0, :cond_6

    if-gez p4, :cond_1

    goto :goto_2

    :cond_1
    if-gt p5, v0, :cond_5

    if-gez p5, :cond_2

    goto :goto_1

    :cond_2
    if-lt p4, p5, :cond_3

    const/4 p1, 0x2

    .line 176
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string/jumbo p2, "uploadULog, beginH >= endH, beginTime : %s,endTime : %s"

    invoke-static {v1, p2, p1}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_0

    .line 180
    :cond_4
    iget-object p3, p0, Lcom/ulog/uploader/client/UploadClient;->uLogUploadCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ulog/uploader/callback/ULogUploadCallback;

    :goto_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 181
    invoke-direct/range {v0 .. v6}, Lcom/ulog/uploader/client/UploadClient;->uploadULogInternal(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V

    return-void

    .line 172
    :cond_5
    :goto_1
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string/jumbo p2, "uploadULog, endHour: %d, is illegal."

    invoke-static {v1, p2, p1}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 167
    :cond_6
    :goto_2
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string/jumbo p2, "uploadULog, beginHour: %d, is illegal."

    invoke-static {v1, p2, p1}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_3
    const-string/jumbo p1, "uploadULog, param should not be null."

    .line 162
    invoke-static {v1, p1}, Lcom/uc/sdk/ulog/ULog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/ulog/uploader/callback/ULogUploadCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 143
    invoke-virtual/range {v0 .. v6}, Lcom/ulog/uploader/client/UploadClient;->uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V

    return-void
.end method

.method public uploadULog(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient;->uLogUploadCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ulog/uploader/callback/ULogUploadCallback;

    const/4 v5, 0x0

    const/16 v6, 0x18

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/ulog/uploader/client/UploadClient;->uploadULog(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V

    return-void
.end method
