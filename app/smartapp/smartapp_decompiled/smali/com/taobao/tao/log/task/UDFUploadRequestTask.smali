.class public Lcom/taobao/tao/log/task/UDFUploadRequestTask;
.super Ljava/lang/Object;
.source "UDFUploadRequestTask.java"

# interfaces
.implements Lcom/taobao/tao/log/task/ICommandTask;


# instance fields
.field private TAG:Ljava/lang/String;

.field private defaultBizType:Ljava/lang/String;

.field private defaultDebugType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TLOG.UDFUploadRequestTask"

    .line 33
    iput-object v0, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->TAG:Ljava/lang/String;

    const-string v0, "USER_UPLOAD"

    .line 36
    iput-object v0, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->defaultBizType:Ljava/lang/String;

    const-string v0, "TLOG"

    .line 39
    iput-object v0, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->defaultDebugType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/tao/log/task/UDFUploadRequestTask;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/tao/log/task/UDFUploadRequestTask;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->defaultDebugType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/tao/log/task/UDFUploadRequestTask;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->defaultBizType:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/taobao/android/tlog/protocol/model/CommandInfo;)Lcom/taobao/tao/log/task/ICommandTask;
    .locals 6

    .line 43
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u6d88\u606f\u5904\u7406\uff1a\u670d\u52a1\u7aef\u8bf7\u6c42\u4e0a\u4f20\u7528\u6237\u81ea\u5b9a\u4e49\u6587\u4ef6"

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    :try_start_0
    new-instance v1, Lcom/taobao/android/tlog/protocol/model/request/UserDefineUploadRequest;

    invoke-direct {v1}, Lcom/taobao/android/tlog/protocol/model/request/UserDefineUploadRequest;-><init>()V

    .line 47
    iget-object v2, p1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->data:Lcom/alibaba/fastjson/JSON;

    invoke-virtual {v1, v2, p1}, Lcom/taobao/android/tlog/protocol/model/request/UserDefineUploadRequest;->parse(Lcom/alibaba/fastjson/JSON;Lcom/taobao/android/tlog/protocol/model/CommandInfo;)V

    .line 49
    iget-object v2, v1, Lcom/taobao/android/tlog/protocol/model/request/UserDefineUploadRequest;->bizType:Ljava/lang/String;

    .line 50
    iget-object v3, v1, Lcom/taobao/android/tlog/protocol/model/request/UserDefineUploadRequest;->bizCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "400"

    if-eqz v3, :cond_5

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 57
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->defaultBizType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6d88\u606f\u5904\u7406\uff1a\u81ea\u5b9a\u4e49\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25\uff0cbizType\u4e0d\u5bf9:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {p1, v4, v1}, Lcom/taobao/tao/log/task/UDFUploadReplyTask;->executeFailure(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 63
    :cond_1
    iget-object v1, v1, Lcom/taobao/android/tlog/protocol/model/request/UserDefineUploadRequest;->extraInfo:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/tao/log/TLogInitializer;->fileUploaderMap:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6d88\u606f\u5904\u7406\uff1a\u81ea\u5b9a\u4e49\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25\uff0c\u5ba2\u6237\u7aef\u6ca1\u6709\u6ce8\u518c\u4efb\u4f55uploader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {p1, v4, v1}, Lcom/taobao/tao/log/task/UDFUploadReplyTask;->executeFailure(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 71
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/tao/log/uploader/service/TLogFileUploader;

    if-nez v2, :cond_3

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6d88\u606f\u5904\u7406\uff1a\u81ea\u5b9a\u4e49\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25\uff0c\u5ba2\u6237\u7aef\u6ca1\u6709\u53ef\u5904\u7406\u7684uploader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {p1, v4, v1}, Lcom/taobao/tao/log/task/UDFUploadReplyTask;->executeFailure(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 78
    :cond_3
    invoke-interface {v2}, Lcom/taobao/tao/log/uploader/service/TLogFileUploader;->getBizCode()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6d88\u606f\u5904\u7406\uff1a\u81ea\u5b9a\u4e49\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25\uff0cbizCode\u6821\u9a8c\u5931\u8d25,uploader\u7684bizCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {p1, v4, v1}, Lcom/taobao/tao/log/task/UDFUploadReplyTask;->executeFailure(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 87
    :cond_4
    invoke-static {p1}, Lcom/taobao/tao/log/task/UDFUploadReplyTask;->executeSuccess(Lcom/taobao/android/tlog/protocol/model/CommandInfo;)V

    .line 90
    new-instance v3, Lcom/taobao/tao/log/uploader/service/TLogUploadMsg;

    invoke-direct {v3}, Lcom/taobao/tao/log/uploader/service/TLogUploadMsg;-><init>()V

    .line 91
    iput-object v1, v3, Lcom/taobao/tao/log/uploader/service/TLogUploadMsg;->extInfo:Ljava/util/Map;

    .line 92
    new-instance v1, Lcom/taobao/tao/log/task/UDFUploadRequestTask$1;

    invoke-direct {v1, p0}, Lcom/taobao/tao/log/task/UDFUploadRequestTask$1;-><init>(Lcom/taobao/tao/log/task/UDFUploadRequestTask;)V

    invoke-interface {v2, v3, v1}, Lcom/taobao/tao/log/uploader/service/TLogFileUploader;->executeUploadTask(Lcom/taobao/tao/log/uploader/service/TLogUploadMsg;Lcom/taobao/tao/log/uploader/service/TLogFileUploaderCallBack;)V

    goto :goto_1

    :cond_5
    :goto_0
    const-string/jumbo v1, "\u6d88\u606f\u5904\u7406\uff1a\u81ea\u5b9a\u4e49\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25\uff0cbizCode \u6216\u8005 bizType\u4e3a\u7a7a"

    .line 54
    invoke-static {p1, v4, v1}, Lcom/taobao/tao/log/task/UDFUploadReplyTask;->executeFailure(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 131
    iget-object v2, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->TAG:Ljava/lang/String;

    const-string v3, "execute error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v2

    sget-object v3, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "500"

    const-string/jumbo v2, "\u6d88\u606f\u5904\u7406\uff1a\u81ea\u5b9a\u4e49\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25\uff0c\u629b\u9519\uff0c\u8bf7\u67e5\u770b\u9519\u8bef\u65e5\u5fd7"

    .line 136
    invoke-static {p1, v1, v2}, Lcom/taobao/tao/log/task/UDFUploadReplyTask;->executeFailure(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
