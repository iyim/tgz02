.class public Lcom/taobao/downloader/download/impl2/InputContext;
.super Ljava/lang/Object;
.source "InputContext.java"


# instance fields
.field public downloadFile:Ljava/io/File;

.field public mConfig:Lcom/taobao/downloader/download/protocol/DLConfig;

.field public mTask:Lcom/taobao/downloader/request/task/SingleTask;

.field public tempFile:Ljava/io/File;

.field public url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/taobao/downloader/request/task/SingleTask;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    .line 38
    new-instance v0, Lcom/taobao/downloader/download/protocol/DLConfig;

    invoke-direct {v0, p1}, Lcom/taobao/downloader/download/protocol/DLConfig;-><init>(Lcom/taobao/downloader/request/task/SingleTask;)V

    iput-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mConfig:Lcom/taobao/downloader/download/protocol/DLConfig;

    return-void
.end method


# virtual methods
.method public getFileErrorCode()I
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v0, v0, Lcom/taobao/downloader/request/Item;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v0, v0, Lcom/taobao/downloader/request/Item;->size:J

    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v0, -0x12

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->md5:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/downloader/util/Md5Util;->isMd5Same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, -0xf

    return v0

    :cond_1
    const/16 v0, -0xe

    return v0
.end method

.method public getPreviousFileSize()J
    .locals 7

    .line 85
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 88
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v5, v0, Lcom/taobao/downloader/request/Item;->size:J

    cmp-long v0, v1, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v5, v0, Lcom/taobao/downloader/request/Item;->size:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-wide v1

    :cond_1
    :goto_0
    return-wide v3

    :cond_2
    return-wide v1
.end method

.method public getRandomAccessFile()Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public hitFileCache()Z
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->downloadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v2, v2, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v2, v2, Lcom/taobao/downloader/request/Item;->size:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v0, v0, Lcom/taobao/downloader/request/Item;->size:J

    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/InputContext;->downloadFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->md5:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/InputContext;->downloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/downloader/util/Md5Util;->isMd5Same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hitTmpCache()Z
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v0, v0, Lcom/taobao/downloader/request/Item;->size:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v0, v0, Lcom/taobao/downloader/request/Item;->size:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v0, v0, Lcom/taobao/downloader/request/Item;->size:J

    iget-object v3, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->md5:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/downloader/util/Md5Util;->isMd5Same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public isHttpStatusCodeOk(JI)Z
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0xce

    const/16 v2, 0xc8

    if-eq v2, p3, :cond_0

    if-eq v1, p3, :cond_0

    return v0

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_4

    if-ne v1, p3, :cond_1

    .line 111
    iget-object p3, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v1

    add-long/2addr p1, v1

    goto :goto_0

    :cond_1
    if-ne v2, p3, :cond_2

    goto :goto_0

    :cond_2
    move-wide p1, v3

    :goto_0
    cmp-long p3, p1, v3

    if-eqz p3, :cond_3

    .line 115
    iget-object p3, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object p3, p3, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v1, p3, Lcom/taobao/downloader/request/Item;->size:J

    cmp-long p3, v1, v3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object p3, p3, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v1, p3, Lcom/taobao/downloader/request/Item;->size:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_3

    return v0

    .line 118
    :cond_3
    iget-object p3, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object p3, p3, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v0, p3, Lcom/taobao/downloader/request/Item;->size:J

    cmp-long p3, v3, v0

    if-nez p3, :cond_4

    .line 119
    iget-object p3, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object p3, p3, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iput-wide p1, p3, Lcom/taobao/downloader/request/Item;->size:J

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public prepareDownload()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->url:Ljava/net/URL;

    if-nez v0, :cond_4

    .line 43
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v1, v1, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v1, v1, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->url:Ljava/net/URL;

    .line 44
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/taobao/downloader/download/impl2/InputContext;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->name:Ljava/lang/String;

    .line 45
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v2, v2, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/downloader/download/impl2/InputContext;->downloadFile:Ljava/io/File;

    .line 46
    invoke-static {}, Lcom/taobao/downloader/util/Switcher;->useUniformTmpDir()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/taobao/downloader/Configuration;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v3, v3, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v1

    const-string v4, "tmp"

    invoke-static {v2, v4, v3}, Lcom/taobao/downloader/util/FileUtil;->getStorePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v4, v4, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v4, v4, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v4, v4, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/downloader/util/Md5Util;->getTextMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    goto :goto_1

    .line 49
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v2, v2, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v3, v3, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v3, v3, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/taobao/downloader/util/Md5Util;->getTextMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    .line 50
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget-boolean v0, v0, Lcom/taobao/downloader/request/Param;->useCache:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->mTask:Lcom/taobao/downloader/request/task/SingleTask;

    iget-object v0, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->downloadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 62
    iget-object v0, p0, Lcom/taobao/downloader/download/impl2/InputContext;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    return-void
.end method
