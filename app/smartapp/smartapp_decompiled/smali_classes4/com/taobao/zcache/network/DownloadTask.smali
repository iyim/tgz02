.class public Lcom/taobao/zcache/network/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/taobao/zcache/network/DownloadTask;",
        ">;"
    }
.end annotation


# static fields
.field private static supportNetworkSDK:Z = true

.field private static final taskQueue:Ljava/util/concurrent/ExecutorService;

.field private static final waitingTasks:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/taobao/zcache/network/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final callback:Lcom/taobao/zcache/core/SendRequestCallback;

.field private fileCache:Ljava/io/File;

.field private fileCacheAccess:Ljava/io/RandomAccessFile;

.field private memoryCache:Ljava/io/ByteArrayOutputStream;

.field private final request:Lcom/taobao/zcache/core/ProxyRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 53
    :try_start_0
    const-class v0, Lanetwork/channel/degrade/DegradableNetwork;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    sput-object v0, Lcom/taobao/zcache/network/DownloadTask;->waitingTasks:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 64
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x5

    const-wide/16 v4, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/taobao/zcache/network/DownloadTask$1;

    invoke-direct {v8}, Lcom/taobao/zcache/network/DownloadTask$1;-><init>()V

    new-instance v9, Lcom/taobao/zcache/network/DownloadTask$2;

    invoke-direct {v9}, Lcom/taobao/zcache/network/DownloadTask$2;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/taobao/zcache/network/DownloadTask;->taskQueue:Ljava/util/concurrent/ExecutorService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/taobao/zcache/core/ProxyRequest;Lcom/taobao/zcache/core/SendRequestCallback;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    .line 45
    iput-object p2, p0, Lcom/taobao/zcache/network/DownloadTask;->callback:Lcom/taobao/zcache/core/SendRequestCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1

    .line 31
    sget-object v0, Lcom/taobao/zcache/network/DownloadTask;->waitingTasks:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method private closeFileCache()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCacheAccess:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static getCacheFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/zcache/ZCache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ZCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 259
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/zcache/network/NetworkUtils;->md5([B)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TEMP_FILE_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prepareOutput()J
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    iget-object v0, v0, Lcom/taobao/zcache/core/ProxyRequest;->tempFilePath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    iget-object v0, v0, Lcom/taobao/zcache/core/ProxyRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/zcache/network/DownloadTask;->getCacheFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCache:Ljava/io/File;

    .line 211
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCache:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCache:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 215
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCache:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCache:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 218
    :cond_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rwd"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCacheAccess:Ljava/io/RandomAccessFile;

    .line 219
    iget-object v0, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCacheAccess:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCacheAccess:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :cond_2
    return-wide v1

    .line 228
    :catch_0
    invoke-direct {p0}, Lcom/taobao/zcache/network/DownloadTask;->closeFileCache()V

    .line 232
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x2000

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;

    return-wide v1
.end method

.method public static sendRequest(Lcom/taobao/zcache/core/ProxyRequest;Lcom/taobao/zcache/core/SendRequestCallback;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/taobao/zcache/core/ProxyRequest;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lcom/taobao/zcache/network/DownloadTask;->taskQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/taobao/zcache/network/DownloadTask;

    invoke-direct {v1, p0, p1}, Lcom/taobao/zcache/network/DownloadTask;-><init>(Lcom/taobao/zcache/core/ProxyRequest;Lcom/taobao/zcache/core/SendRequestCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 89
    new-instance v0, Lcom/taobao/zcache/Error;

    const/4 v1, -0x1

    const-string v2, "request \"null\" invalid URL"

    invoke-direct {v0, v1, v2}, Lcom/taobao/zcache/Error;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/taobao/zcache/core/SendRequestCallback;->onRequestFinished(ILcom/taobao/zcache/Error;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/taobao/zcache/network/DownloadTask;)I
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    iget-object v0, v0, Lcom/taobao/zcache/core/ProxyRequest;->tempFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 102
    :goto_0
    iget-object p1, p1, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    iget-object p1, p1, Lcom/taobao/zcache/core/ProxyRequest;->tempFilePath:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/taobao/zcache/network/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/taobao/zcache/network/DownloadTask;->compareTo(Lcom/taobao/zcache/network/DownloadTask;)I

    move-result p1

    return p1
.end method

.method public run()V
    .locals 9

    .line 112
    invoke-direct {p0}, Lcom/taobao/zcache/network/DownloadTask;->prepareOutput()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 115
    iget-object v2, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    iget-object v2, v2, Lcom/taobao/zcache/core/ProxyRequest;->header:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/taobao/zcache/core/ProxyRequest;->header:Ljava/util/HashMap;

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    iget-object v2, v2, Lcom/taobao/zcache/core/ProxyRequest;->header:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    sget-boolean v0, Lcom/taobao/zcache/network/DownloadTask;->supportNetworkSDK:Z

    if-eqz v0, :cond_2

    .line 124
    new-instance v0, Lcom/taobao/zcache/network/ANetwork;

    iget-object v1, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    invoke-direct {v0, v1}, Lcom/taobao/zcache/network/ANetwork;-><init>(Lcom/taobao/zcache/core/ProxyRequest;)V

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Lcom/taobao/zcache/network/StandardNetwork;

    iget-object v1, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    invoke-direct {v0, v1}, Lcom/taobao/zcache/network/StandardNetwork;-><init>(Lcom/taobao/zcache/core/ProxyRequest;)V

    :goto_0
    const/4 v1, 0x0

    .line 130
    iget-object v2, v0, Lcom/taobao/zcache/network/NetworkAdaptor;->error:Lcom/taobao/zcache/Error;

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 131
    invoke-virtual {v0}, Lcom/taobao/zcache/network/NetworkAdaptor;->getStatusCode()I

    move-result v2

    const/16 v4, 0xce

    const/4 v5, 0x1

    if-ne v2, v4, :cond_3

    .line 133
    iget-object v4, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCacheAccess:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_3

    const-string v4, "Content-Range"

    .line 135
    invoke-virtual {v0, v4}, Lcom/taobao/zcache/network/NetworkAdaptor;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v6, "bytes"

    .line 136
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "[ -/]]"

    .line 137
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 138
    array-length v6, v4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 140
    :try_start_0
    iget-object v6, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCacheAccess:Ljava/io/RandomAccessFile;

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_3
    const/16 v4, 0x1a0

    if-ne v2, v4, :cond_4

    .line 147
    invoke-direct {p0}, Lcom/taobao/zcache/network/DownloadTask;->closeFileCache()V

    .line 149
    iget-object v4, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCache:Ljava/io/File;

    if-eqz v4, :cond_5

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_4
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x0

    :cond_6
    :goto_2
    if-eqz v5, :cond_e

    .line 156
    invoke-virtual {v0}, Lcom/taobao/zcache/network/NetworkAdaptor;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_e

    const/16 v5, 0x2000

    .line 160
    :try_start_1
    new-array v5, v5, [B

    .line 161
    :goto_3
    array-length v6, v5

    invoke-virtual {v4, v5, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 162
    iget-object v7, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;

    if-nez v7, :cond_7

    .line 163
    iget-object v7, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCacheAccess:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v5, v3, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_3

    .line 165
    :cond_7
    iget-object v7, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 168
    :cond_8
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_9

    .line 169
    invoke-direct {p0}, Lcom/taobao/zcache/network/DownloadTask;->closeFileCache()V

    .line 170
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCache:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    iget-object v6, v6, Lcom/taobao/zcache/core/ProxyRequest;->tempFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 171
    new-instance v3, Lcom/taobao/zcache/Error;

    const/4 v5, -0x7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rename \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/taobao/zcache/network/DownloadTask;->fileCache:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" to \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/taobao/zcache/network/DownloadTask;->request:Lcom/taobao/zcache/core/ProxyRequest;

    iget-object v7, v7, Lcom/taobao/zcache/core/ProxyRequest;->tempFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/taobao/zcache/Error;-><init>(ILjava/lang/String;)V

    iput-object v3, v0, Lcom/taobao/zcache/network/NetworkAdaptor;->error:Lcom/taobao/zcache/Error;

    goto :goto_4

    .line 174
    :cond_9
    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "utf-8"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 180
    :cond_a
    :goto_4
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 181
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_b

    .line 182
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;

    :goto_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    :catch_1
    :cond_b
    invoke-direct {p0}, Lcom/taobao/zcache/network/DownloadTask;->closeFileCache()V

    .line 187
    invoke-virtual {v0}, Lcom/taobao/zcache/network/NetworkAdaptor;->close()V

    goto :goto_7

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v3

    const/4 v5, -0x6

    .line 177
    :try_start_3
    invoke-virtual {v0, v5, v3}, Lcom/taobao/zcache/network/NetworkAdaptor;->setExceptionError(ILjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 181
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_b

    .line 182
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 180
    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 181
    iget-object v2, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_c

    .line 182
    iget-object v2, p0, Lcom/taobao/zcache/network/DownloadTask;->memoryCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 186
    :catch_3
    :cond_c
    invoke-direct {p0}, Lcom/taobao/zcache/network/DownloadTask;->closeFileCache()V

    .line 187
    invoke-virtual {v0}, Lcom/taobao/zcache/network/NetworkAdaptor;->close()V

    throw v1

    :cond_d
    const/4 v2, 0x0

    .line 192
    :cond_e
    :goto_7
    iget-object v3, p0, Lcom/taobao/zcache/network/DownloadTask;->callback:Lcom/taobao/zcache/core/SendRequestCallback;

    iget-object v0, v0, Lcom/taobao/zcache/network/NetworkAdaptor;->error:Lcom/taobao/zcache/Error;

    invoke-virtual {v3, v2, v0, v1}, Lcom/taobao/zcache/core/SendRequestCallback;->onRequestFinished(ILcom/taobao/zcache/Error;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/taobao/zcache/network/DownloadTask;->waitingTasks:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/zcache/network/DownloadTask;

    if-eqz v0, :cond_f

    .line 198
    invoke-virtual {v0}, Lcom/taobao/zcache/network/DownloadTask;->run()V

    :cond_f
    return-void
.end method
