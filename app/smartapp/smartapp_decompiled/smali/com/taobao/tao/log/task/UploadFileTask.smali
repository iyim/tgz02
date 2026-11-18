.class public Lcom/taobao/tao/log/task/UploadFileTask;
.super Ljava/lang/Object;
.source "UploadFileTask.java"


# static fields
.field private static TAG:Ljava/lang/String; = "TLOG.UploadFileTask"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized taskExecute(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;)V
    .locals 6

    const-class v0, Lcom/taobao/tao/log/task/UploadFileTask;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v1

    sget-object v2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    sget-object v3, Lcom/taobao/tao/log/task/UploadFileTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "\u6d88\u606f\u5904\u7406\uff1a\u5f00\u59cb\u5904\u7406\u6587\u4ef6\u4e0a\u4f20\u6d88\u606f"

    invoke-interface {v1, v2, v3, v4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-direct {v2, v1}, Lcom/taobao/tao/log/upload/LogFileUploadManager;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, v2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    .line 44
    iput-object p2, v2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->tokenType:Ljava/lang/String;

    .line 45
    iput-object p3, v2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->tokenInfos:[Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    .line 46
    iput-object p0, v2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    .line 48
    array-length p0, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_4

    aget-object v1, p3, p2

    .line 49
    iget-object v1, v1, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->fileInfo:Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;

    .line 50
    iget-object v3, v1, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->fileName:Ljava/lang/String;

    .line 51
    iget-object v1, v1, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->absolutePath:Ljava/lang/String;

    .line 53
    invoke-virtual {v2}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isUploading()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "TLOG"

    .line 54
    sget-object v3, Lcom/taobao/tao/log/task/UploadFileTask;->TAG:Ljava/lang/String;

    const-string v4, "[persistTask] there is task!"

    invoke-static {v1, v3, v4}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 57
    invoke-static {v3, v5, v4}, Lcom/taobao/tao/log/TLogUtils;->getFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 58
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 59
    invoke-virtual {v2, v3}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->addFiles(Ljava/util/List;)V

    .line 62
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 63
    invoke-virtual {v2, v1}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->addFile(Ljava/lang/String;)V

    .line 66
    :cond_2
    iput-boolean v5, v2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    .line 67
    invoke-virtual {v2}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->getUploadTaskCount()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "TLOG"

    .line 68
    sget-object v3, Lcom/taobao/tao/log/task/UploadFileTask;->TAG:Ljava/lang/String;

    const-string v4, "There are not files matching the condition"

    invoke-static {v1, v3, v4}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "TLOG"

    .line 70
    sget-object v3, Lcom/taobao/tao/log/task/UploadFileTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->getUploadTaskCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " files to upload!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 74
    :cond_4
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p0

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/task/UploadFileTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6587\u4ef6\u4e0a\u4f20\uff1a\u5f00\u59cb\u89e6\u53d1\u4e0a\u4f20\u6587\u4ef6,uploadId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p3, p1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->startUpload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 79
    :try_start_1
    sget-object p1, Lcom/taobao/tao/log/task/UploadFileTask;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "task execute failure "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/task/UploadFileTask;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, p3, p0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method
