.class public Lcom/uc/webview/export/cyclone/update/FileLocker;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateFileLocker"


# instance fields
.field private mCacheLock:Ljava/nio/channels/FileLock;

.field private mLockChannel:Ljava/nio/channels/FileChannel;

.field private mLockFile:Ljava/io/File;

.field private mLockRaf:Ljava/io/RandomAccessFile;

.field private mLog:Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".ucbsup_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".lock"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockFile:Ljava/io/File;

    .line 26
    iput-object p3, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLog:Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;

    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to close resource"

    .line 77
    invoke-direct {p0, v0, p1}, Lcom/uc/webview/export/cyclone/update/FileLocker;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/cyclone/update/FileLocker;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLog:Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;

    if-eqz v0, :cond_0

    const-string v1, "UpdateFileLocker"

    invoke-interface {v0, v1, p1, p2}, Lcom/uc/webview/export/cyclone/update/Utils$LogHelper;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 3

    .line 31
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockFile:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockRaf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockFile:Ljava/io/File;

    if-nez v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockChannel:Ljava/nio/channels/FileChannel;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Blocking on lock "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/FileLocker;->printLog(Ljava/lang/String;)V

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mCacheLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " locked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/FileLocker;->printLog(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "lock error "

    .line 47
    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/cyclone/update/FileLocker;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 38
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lock error lockRaf = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " lockFile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/FileLocker;->printLog(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "exception: "

    .line 33
    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/cyclone/update/FileLocker;->printLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public unlock()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mCacheLock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 56
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 58
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to release lock on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/FileLocker;->printLog(Ljava/lang/String;)V

    .line 62
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    .line 63
    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/FileLocker;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/FileLocker;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    iget-object v0, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockFile:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uc/webview/export/cyclone/update/FileLocker;->mLockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unlocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/cyclone/update/FileLocker;->printLog(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
