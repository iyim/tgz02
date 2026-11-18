.class Lcom/uc/webview/export/cyclone/update/UrlDownloader;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/cyclone/update/UrlRequest$BodyHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;,
        Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UrlDownloader"


# instance fields
.field private mCheckLastModifed:Ljava/lang/Boolean;

.field private mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

.field private mConnectTimeOut:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private mCurrentSize:J

.field private mDownloadDir:Ljava/io/File;

.field private mDownloadFile:Ljava/io/File;

.field private mException:Ljava/lang/Throwable;

.field private mLastModified:J

.field private mLog:Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;

.field private mReadTimeOut:Ljava/lang/Integer;

.field private volatile mRunningThread:Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

.field private mTotalSize:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mUrl:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    .line 91
    invoke-static {p1, p2}, Lcom/uc/webview/export/cyclone/update/Utils;->getDownloadDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadDir:Ljava/io/File;

    .line 92
    iput-object p4, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mLog:Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/uc/webview/export/cyclone/update/UrlDownloader;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/uc/webview/export/cyclone/update/UrlDownloader;)Ljava/io/File;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/uc/webview/export/cyclone/update/UrlDownloader;)Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mLog:Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/uc/webview/export/cyclone/update/UrlDownloader;)Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    return-object p0
.end method

.method private continueDownload(J)V
    .locals 7

    const-string v0, ", totalSize:"

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mRunningThread:Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mRunningThread:Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    .line 231
    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->get()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 241
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 242
    iget-object v6, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mLog:Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;

    invoke-static {v5, v6}, Lcom/uc/webview/export/cyclone/update/Utils;->deleteAll(Ljava/io/File;Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 247
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 251
    :cond_4
    iget-wide v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_7

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "continueDownload recoverSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    invoke-interface {v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onDownloadBegin()V

    .line 256
    invoke-direct {p0, p0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->createRequest(Lcom/uc/webview/export/cyclone/update/UrlRequest$BodyHandler;)Lcom/uc/webview/export/cyclone/update/UrlRequest;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_5

    const-string v2, "Range"

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/uc/webview/export/cyclone/update/UrlRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/update/UrlRequest;

    .line 259
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onDownloadRecovered()V

    .line 261
    :cond_5
    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/update/UrlRequest;->start()Z

    goto :goto_2

    :cond_6
    :goto_1
    const-string p1, "continueDownload stopped, thread reset"

    .line 232
    invoke-direct {p0, p1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "continueDownload failed"

    .line 264
    invoke-direct {p0, p2, p1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "continueDownload file:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    .line 268
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", lastModified:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    .line 269
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-direct {p0, p1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_8

    .line 273
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Size mismatch: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mException:Ljava/lang/Throwable;

    .line 275
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    iget-object p2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mException:Ljava/lang/Throwable;

    invoke-interface {p1, p2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onDownloadFailed(Ljava/lang/Throwable;)V

    return-void

    .line 277
    :cond_8
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onDownloadSuccess()V

    return-void
.end method

.method private createRequest(Lcom/uc/webview/export/cyclone/update/UrlRequest$BodyHandler;)Lcom/uc/webview/export/cyclone/update/UrlRequest;
    .locals 3

    .line 308
    new-instance v0, Lcom/uc/webview/export/cyclone/update/UrlRequest;

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mLog:Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;

    invoke-direct {v0, v1, p1, v2}, Lcom/uc/webview/export/cyclone/update/UrlRequest;-><init>(Ljava/lang/String;Lcom/uc/webview/export/cyclone/update/UrlRequest$BodyHandler;Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;)V

    .line 309
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mCheckLastModifed:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/cyclone/update/UrlRequest;->setCheckLastModified(Z)Lcom/uc/webview/export/cyclone/update/UrlRequest;

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mConnectTimeOut:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/cyclone/update/UrlRequest;->setConnectTimeOut(I)Lcom/uc/webview/export/cyclone/update/UrlRequest;

    .line 311
    :cond_1
    iget-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mReadTimeOut:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/cyclone/update/UrlRequest;->setReadTimeOut(I)Lcom/uc/webview/export/cyclone/update/UrlRequest;

    :cond_2
    return-object v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mLog:Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;

    if-eqz v0, :cond_0

    const-string v1, "UrlDownloader"

    invoke-interface {v0, v1, p1, p2}, Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .line 158
    new-instance v0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    const-string v1, "delete"

    invoke-direct {v0, p0, v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;-><init>(Lcom/uc/webview/export/cyclone/update/UrlDownloader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mRunningThread:Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    .line 159
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mRunningThread:Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    new-instance v1, Lcom/uc/webview/export/cyclone/update/UrlDownloader$2;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$2;-><init>(Lcom/uc/webview/export/cyclone/update/UrlDownloader;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentSize()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mCurrentSize:J

    return-wide v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFilePath()Ljava/io/File;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mLastModified:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J

    return-wide v0
.end method

.method public onBodyReceived(Ljava/io/InputStream;)V
    .locals 7

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBodyReceived stream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;)V

    .line 285
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v1, 0xc800

    .line 287
    :try_start_1
    new-array v1, v1, [B

    .line 289
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 291
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 292
    iget-wide v3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mCurrentSize:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mCurrentSize:J

    .line 293
    iget-object v3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    invoke-interface {v3}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onProgressChanged()V

    :cond_1
    if-lez v2, :cond_2

    .line 295
    iget-wide v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mCurrentSize:J

    iget-wide v4, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 298
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    :catch_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception v1

    .line 298
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_2
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    const-string v1, "readBody failed"

    .line 301
    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 303
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    return-void

    :goto_0
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized run()V
    .locals 9

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/cyclone/update/Utils;->isOnMainThread()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mException:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 185
    :try_start_1
    new-instance v1, Lcom/uc/webview/export/cyclone/update/FileLocker;

    iget-object v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/update/Utils;->getUrlHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mLog:Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;

    invoke-direct {v1, v2, v3, v4}, Lcom/uc/webview/export/cyclone/update/FileLocker;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/update/FileLocker;->lock()V

    .line 189
    iget-object v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    invoke-interface {v2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onDownloadCheck()V

    .line 192
    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->createRequest(Lcom/uc/webview/export/cyclone/update/UrlRequest$BodyHandler;)Lcom/uc/webview/export/cyclone/update/UrlRequest;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/update/UrlRequest;->start()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/update/UrlRequest;->isResponseOk()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 194
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/update/UrlRequest;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    .line 200
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/update/UrlRequest;->getContentLength()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J

    .line 201
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/update/UrlRequest;->getLastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mLastModified:J

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mLastModified:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startDownload url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", downloadFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    .line 207
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-direct {p0, v2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mDownloadFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mCurrentSize:J

    .line 210
    iget-wide v4, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mTotalSize:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 212
    :goto_0
    iget-object v5, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    invoke-interface {v5, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onHeaderReceived(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_1

    .line 214
    invoke-direct {p0, v2, v3}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->continueDownload(J)V

    goto :goto_1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    invoke-interface {v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onDownloadFileExists()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_1
    :try_start_3
    const-string v0, "startDownload finish"

    .line 223
    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/update/FileLocker;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    .line 195
    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Get url file info failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mException:Ljava/lang/Throwable;

    .line 196
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    iget-object v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mException:Ljava/lang/Throwable;

    invoke-interface {v0, v2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onHeaderReceived(Ljava/lang/Throwable;)Z

    .line 197
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mException:Ljava/lang/Throwable;

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 220
    :goto_2
    :try_start_5
    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mException:Ljava/lang/Throwable;

    .line 221
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mClient:Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;

    iget-object v2, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mException:Ljava/lang/Throwable;

    invoke-interface {v0, v2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;->onDownloadException(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string v0, "startDownload finish"

    .line 223
    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 224
    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/update/FileLocker;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-void

    .line 226
    :cond_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_3
    :try_start_7
    const-string v2, "startDownload finish"

    .line 223
    invoke-direct {p0, v2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 224
    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/update/FileLocker;->unlock()V

    :cond_5
    throw v0

    .line 178
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Download should not run in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCheckLastModified(Ljava/lang/Boolean;)Lcom/uc/webview/export/cyclone/update/UrlDownloader;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mCheckLastModifed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setConnectTimeOut(Ljava/lang/Integer;)Lcom/uc/webview/export/cyclone/update/UrlDownloader;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mConnectTimeOut:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReadTimeOut(Ljava/lang/Integer;)Lcom/uc/webview/export/cyclone/update/UrlDownloader;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mReadTimeOut:Ljava/lang/Integer;

    return-object p0
.end method

.method public start(J)V
    .locals 2

    .line 131
    new-instance v0, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    const-string v1, "start"

    invoke-direct {v0, p0, v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;-><init>(Lcom/uc/webview/export/cyclone/update/UrlDownloader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mRunningThread:Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    .line 132
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mRunningThread:Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public stop()V
    .locals 1

    const-string v0, "stop"

    .line 136
    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mRunningThread:Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stopWith(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "stopWith"

    .line 141
    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->printLog(Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    invoke-direct {v1, p0, v0}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;-><init>(Lcom/uc/webview/export/cyclone/update/UrlDownloader;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mRunningThread:Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    .line 143
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/UrlDownloader;->mRunningThread:Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;

    new-instance v1, Lcom/uc/webview/export/cyclone/update/UrlDownloader$1;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$1;-><init>(Lcom/uc/webview/export/cyclone/update/UrlDownloader;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/update/UrlDownloader$DownloadThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
