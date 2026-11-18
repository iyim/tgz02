.class public Lanetwork/channel/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/download/DownloadManager$DownloadListener;,
        Lanetwork/channel/download/DownloadManager$DownloadTask;,
        Lanetwork/channel/download/DownloadManager$ClassHolder;
    }
.end annotation


# static fields
.field static final DOWNLOAD_FOLDER:Ljava/lang/String; = "downloads"

.field public static final ERROR_DOWNLOAD_CANCELLED:I = -0x69

.field public static final ERROR_EXCEPTION_HAPPEN:I = -0x68

.field public static final ERROR_FILE_FOLDER_INVALID:I = -0x65

.field public static final ERROR_FILE_RENAME_FAILED:I = -0x6a

.field public static final ERROR_IO_EXCEPTION:I = -0x67

.field public static final ERROR_REQUEST_FAIL:I = -0x66

.field public static final ERROR_URL_INVALID:I = -0x64

.field public static final TAG:Ljava/lang/String; = "anet.DownloadManager"


# instance fields
.field context:Landroid/content/Context;

.field executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field taskIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

.field taskMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lanetwork/channel/download/DownloadManager$DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 9

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager;->taskIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x1e

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lanetwork/channel/download/DownloadManager;->context:Landroid/content/Context;

    .line 62
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager;->context:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 64
    invoke-direct {p0}, Lanetwork/channel/download/DownloadManager;->prepareDownloadFolder()V

    return-void
.end method

.method synthetic constructor <init>(Lanetwork/channel/download/DownloadManager$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lanetwork/channel/download/DownloadManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lanetwork/channel/download/DownloadManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lanetwork/channel/download/DownloadManager;->getDownloadFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lanetwork/channel/download/DownloadManager;Ljava/lang/String;Z)Ljava/io/File;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lanetwork/channel/download/DownloadManager;->getTempFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getDownloadFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 410
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "downloads"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lanetwork/channel/download/DownloadManager;
    .locals 1

    .line 58
    sget-object v0, Lanetwork/channel/download/DownloadManager$ClassHolder;->instance:Lanetwork/channel/download/DownloadManager;

    return-object v0
.end method

.method private getTempFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 1

    .line 420
    invoke-static {p1}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 426
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2

    .line 428
    :cond_1
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method private prepareDownloadFolder()V
    .locals 3

    .line 385
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 386
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "downloads"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-void
.end method

.method private prepareFolder(Ljava/lang/String;)Z
    .locals 5

    .line 394
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 396
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    return v0

    :catch_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 402
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "folder"

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    const-string p1, "anet.DownloadManager"

    const-string v0, "create folder failed"

    invoke-static {p1, v0, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1
.end method


# virtual methods
.method public cancel(I)V
    .locals 6

    .line 134
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/download/DownloadManager$DownloadTask;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 137
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "anet.DownloadManager"

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "try cancel task"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lanetwork/channel/download/DownloadManager$DownloadTask;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_0
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 141
    invoke-virtual {v1}, Lanetwork/channel/download/DownloadManager$DownloadTask;->cancel()V

    .line 143
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enqueue(Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)I
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0, p2, p3}, Lanetwork/channel/download/DownloadManager;->enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)I

    move-result p1

    return p1
.end method

.method public enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)I
    .locals 9

    const/4 v0, 0x2

    .line 84
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 85
    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "folder"

    aput-object v4, v1, v3

    const/4 v4, 0x1

    aput-object p2, v1, v4

    const-string v4, "filename"

    aput-object v4, v1, v0

    const/4 v0, 0x3

    aput-object p3, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v4, "url"

    aput-object v4, v1, v0

    const/4 v0, 0x5

    aput-object p1, v1, v0

    const-string v0, "anet.DownloadManager"

    const-string v4, "enqueue"

    invoke-static {v0, v4, v2, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->context:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 89
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "anet.DownloadManager"

    const-string p3, "network sdk not initialized."

    invoke-static {p2, p3, v2, p1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 95
    :cond_1
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, p2}, Lanetwork/channel/download/DownloadManager;->prepareFolder(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 105
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "anet.DownloadManager"

    const-string p3, "file folder invalid."

    invoke-static {p2, p3, v2, p1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_2

    const/16 p1, -0x65

    const-string p2, "file folder path invalid"

    .line 107
    invoke-interface {p4, v1, p1, p2}, Lanetwork/channel/download/DownloadManager$DownloadListener;->onFail(IILjava/lang/String;)V

    :cond_2
    return v1

    .line 112
    :cond_3
    iget-object p1, p0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    monitor-enter p1

    .line 113
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 115
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/download/DownloadManager$DownloadTask;

    .line 117
    iget-object v2, v1, Lanetwork/channel/download/DownloadManager$DownloadTask;->url:Ljava/net/URL;

    invoke-virtual {v5, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    invoke-virtual {v1, p4}, Lanetwork/channel/download/DownloadManager$DownloadTask;->attachListener(Lanetwork/channel/download/DownloadManager$DownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    iget p2, v1, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    monitor-exit p1

    return p2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_5
    new-instance v0, Lanetwork/channel/download/DownloadManager$DownloadTask;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lanetwork/channel/download/DownloadManager$DownloadTask;-><init>(Lanetwork/channel/download/DownloadManager;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)V

    .line 127
    iget-object p2, p0, Lanetwork/channel/download/DownloadManager;->taskMap:Landroid/util/SparseArray;

    iget p3, v0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    iget-object p2, p0, Lanetwork/channel/download/DownloadManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 129
    iget p2, v0, Lanetwork/channel/download/DownloadManager$DownloadTask;->taskId:I

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 130
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catch_0
    move-exception p1

    .line 97
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "anet.DownloadManager"

    const-string/jumbo v0, "url invalid."

    invoke-static {p3, v0, v2, p1, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    if-eqz p4, :cond_6

    const/16 p1, -0x64

    const-string/jumbo p2, "url invalid"

    .line 99
    invoke-interface {p4, v1, p1, p2}, Lanetwork/channel/download/DownloadManager$DownloadListener;->onFail(IILjava/lang/String;)V

    :cond_6
    return v1
.end method
