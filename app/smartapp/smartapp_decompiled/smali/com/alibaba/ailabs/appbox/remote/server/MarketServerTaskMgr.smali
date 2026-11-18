.class public Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;
.super Ljava/lang/Object;
.source "MarketServerTaskMgr.java"


# static fields
.field private static final MSG_KILLPROCESS:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "MarketTaskMgr-tag"

.field private static final ourInstance:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;


# instance fields
.field private downloadListenerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/downloader/request/DownloadListener;",
            ">;>;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private mInstallExecutor:Ljava/util/concurrent/ExecutorService;

.field private taskCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->ourInstance:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->taskCount:I

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$1;-><init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->handler:Landroid/os/Handler;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->downloadListenerHashMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->downloadListenerHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private declared-synchronized addTask()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "MarketTaskMgr-tag"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTask has MSG_KILLPROCESS  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->handler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    iget v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->taskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->taskCount:I

    const-string v0, "MarketTaskMgr-tag"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTask task is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->taskCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDownloadListener(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lcom/taobao/downloader/request/DownloadListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 410
    new-instance v0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;-><init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;
    .locals 1

    .line 96
    sget-object v0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->ourInstance:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    return-object v0
.end method

.method private isStorageEnough(Ljava/lang/String;I)Z
    .locals 0

    .line 245
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isSdCardFreeEnough(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private toDownload(Ljava/lang/String;Lcom/taobao/downloader/request/DownloadRequest;)V
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "realy to start download - >  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTaskMgr-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/taobao/downloader/Downloader;->getInstance()Lcom/taobao/downloader/Downloader;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;-><init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/taobao/downloader/Downloader;->download(Lcom/taobao/downloader/request/DownloadRequest;Lcom/taobao/downloader/request/DownloadListener;)I

    return-void
.end method


# virtual methods
.method public addToDownloadTask(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->downloadFile(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public downloadFile(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadFile add task "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketTaskMgr-tag"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance p1, Lcom/taobao/downloader/request/DownloadRequest;

    invoke-direct {p1, p2}, Lcom/taobao/downloader/request/DownloadRequest;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/taobao/downloader/request/Param;

    invoke-direct {v1}, Lcom/taobao/downloader/request/Param;-><init>()V

    .line 214
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->getDownloadDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    const-string/jumbo v2, "title"

    .line 215
    iput-object v2, v1, Lcom/taobao/downloader/request/Param;->title:Ljava/lang/String;

    .line 216
    iput-object v1, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    .line 217
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->downloadListenerHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->downloadListenerHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadListenerHashMap.get(url) != null , only add - >  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->getDownloadListener(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lcom/taobao/downloader/request/DownloadListener;

    move-result-object p1

    .line 231
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->downloadListenerHashMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->addTask()V

    return-void

    .line 218
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadListenerHashMap.get(url) == null , create and add - >  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->getDownloadListener(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lcom/taobao/downloader/request/DownloadListener;

    move-result-object p3

    .line 221
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->downloadListenerHashMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->addTask()V

    .line 226
    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->toDownload(Ljava/lang/String;Lcom/taobao/downloader/request/DownloadRequest;)V

    return-void
.end method

.method public installInRemoteByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 7

    .line 103
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->addTask()V

    .line 104
    new-instance p1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;-><init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 186
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->mInstallExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_0

    .line 187
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->mInstallExecutor:Ljava/util/concurrent/ExecutorService;

    .line 189
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->mInstallExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized remove()V
    .locals 4

    monitor-enter p0

    .line 79
    :try_start_0
    iget v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->taskCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->taskCount:I

    const-string v0, "MarketTaskMgr-tag"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove task is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->taskCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->taskCount:I

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uninstallInRemoteByPkgName(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 480
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->addTask()V

    .line 481
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0x2714

    const-string v5, "MarketApkDeleteListener"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 483
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v8

    const/16 v1, -0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "onUninstallSuccess"

    invoke-static {v5, v1, v0}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getJson(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v2, v3, v0, v4}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->exeClientMethodByJson(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->remove()V

    return-void

    :cond_0
    const/4 v9, 0x3

    .line 490
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 492
    array-length v11, v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    aget-object v13, v10, v12

    .line 493
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "deletePackage"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "BoxPackageManager"

    .line 494
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find method"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v8

    new-instance v14, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v15, p0

    :try_start_1
    invoke-direct {v14, v15, v1, v2, v3}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;-><init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    aput-object v14, v4, v7

    .line 509
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v6

    .line 495
    invoke-virtual {v13, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object/from16 v15, p0

    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/16 v4, 0x2714

    goto :goto_0

    :cond_2
    move-object/from16 v15, p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v15, p0

    .line 513
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "throw Exception "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/16 v0, -0x7d2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    const-string v0, "onUninstallFailed"

    .line 514
    invoke-static {v5, v0, v4}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getJson(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2714

    .line 516
    invoke-static {v2, v3, v0, v1}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->exeClientMethodByJson(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->remove()V

    :goto_3
    return-void
.end method
