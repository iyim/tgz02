.class public Lcom/taobao/downloader/request/task/SingleTask;
.super Ljava/lang/Object;
.source "SingleTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;
    }
.end annotation


# instance fields
.field public downloadStat:Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;

.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public foreground:Z

.field public item:Lcom/taobao/downloader/request/Item;

.field public param:Lcom/taobao/downloader/request/Param;

.field public retryStrategy:Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;

.field public storeDir:Ljava/lang/String;

.field public storeFilePath:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;

    invoke-direct {v0, p0}, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;-><init>(Lcom/taobao/downloader/request/task/SingleTask;)V

    iput-object v0, p0, Lcom/taobao/downloader/request/task/SingleTask;->retryStrategy:Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;

    return-void
.end method


# virtual methods
.method public copyNewTask()Lcom/taobao/downloader/request/task/SingleTask;
    .locals 2

    .line 94
    new-instance v0, Lcom/taobao/downloader/request/task/SingleTask;

    invoke-direct {v0}, Lcom/taobao/downloader/request/task/SingleTask;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iput-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    .line 96
    iget-object v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iput-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    .line 97
    iget-object v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    .line 98
    iget-boolean v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->foreground:Z

    iput-boolean v1, v0, Lcom/taobao/downloader/request/task/SingleTask;->foreground:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 42
    :cond_0
    instance-of v1, p1, Lcom/taobao/downloader/request/task/SingleTask;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 44
    :cond_1
    check-cast p1, Lcom/taobao/downloader/request/task/SingleTask;

    .line 46
    iget-object v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    invoke-virtual {v1, v3}, Lcom/taobao/downloader/request/Item;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 48
    :cond_3
    iget-object v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :cond_6
    :goto_2
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->name:Ljava/lang/String;

    return-object v0

    .line 77
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v1, v1, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    iget-object v0, p0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iget-object v0, v0, Lcom/taobao/downloader/request/Item;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/downloader/request/Item;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 55
    iget-object v2, p0, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public reset(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/taobao/downloader/request/task/SingleTask;->errorCode:I

    const-string v1, ""

    .line 86
    iput-object v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->errorMsg:Ljava/lang/String;

    .line 87
    iput-boolean v0, p0, Lcom/taobao/downloader/request/task/SingleTask;->success:Z

    if-eqz p1, :cond_0

    .line 89
    new-instance p1, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;

    invoke-direct {p1, p0}, Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;-><init>(Lcom/taobao/downloader/request/task/SingleTask;)V

    iput-object p1, p0, Lcom/taobao/downloader/request/task/SingleTask;->retryStrategy:Lcom/taobao/downloader/request/task/SingleTask$RetryStrategy;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Task{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/downloader/request/task/SingleTask;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", storeDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
