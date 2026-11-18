.class Lcom/taobao/tao/log/task/UDFUploadRequestTask$1;
.super Ljava/lang/Object;
.source "UDFUploadRequestTask.java"

# interfaces
.implements Lcom/taobao/tao/log/uploader/service/TLogFileUploaderCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/log/task/UDFUploadRequestTask;->execute(Lcom/taobao/android/tlog/protocol/model/CommandInfo;)Lcom/taobao/tao/log/task/ICommandTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/log/task/UDFUploadRequestTask;


# direct methods
.method constructor <init>(Lcom/taobao/tao/log/task/UDFUploadRequestTask;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask$1;->this$0:Lcom/taobao/tao/log/task/UDFUploadRequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fileUpload(Lcom/taobao/tao/log/uploader/service/TLogUploadFileModel;)Ljava/lang/Boolean;
    .locals 7

    .line 109
    iget-object v1, p1, Lcom/taobao/tao/log/uploader/service/TLogUploadFileModel;->filePath:Ljava/lang/String;

    .line 110
    iget-object v4, p1, Lcom/taobao/tao/log/uploader/service/TLogUploadFileModel;->bizCode:Ljava/lang/String;

    .line 111
    iget-object v5, p1, Lcom/taobao/tao/log/uploader/service/TLogUploadFileModel;->extraInfos:Ljava/util/Map;

    .line 112
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 113
    new-instance v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-direct {v0, p1}, Lcom/taobao/tao/log/upload/LogFileUploadManager;-><init>(Landroid/content/Context;)V

    .line 115
    iget-object p1, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask$1;->this$0:Lcom/taobao/tao/log/task/UDFUploadRequestTask;

    invoke-static {p1}, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->access$100(Lcom/taobao/tao/log/task/UDFUploadRequestTask;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask$1;->this$0:Lcom/taobao/tao/log/task/UDFUploadRequestTask;

    invoke-static {p1}, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->access$200(Lcom/taobao/tao/log/task/UDFUploadRequestTask;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/taobao/tao/log/task/UDFUploadRequestTask$1$1;

    invoke-direct {v6, p0}, Lcom/taobao/tao/log/task/UDFUploadRequestTask$1$1;-><init>(Lcom/taobao/tao/log/task/UDFUploadRequestTask$1;)V

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadWithFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/tao/log/upload/FileUploadListener;)V

    const/4 p1, 0x1

    .line 127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onFileUpload(Lcom/taobao/tao/log/uploader/service/TLogUploadFileModel;)Ljava/lang/Boolean;
    .locals 3

    .line 96
    iget-object v0, p1, Lcom/taobao/tao/log/uploader/service/TLogUploadFileModel;->filePath:Ljava/lang/String;

    .line 98
    iget-object v1, p1, Lcom/taobao/tao/log/uploader/service/TLogUploadFileModel;->bizCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/tao/log/task/UDFUploadRequestTask$1;->fileUpload(Lcom/taobao/tao/log/uploader/service/TLogUploadFileModel;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    :goto_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object v0, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/tao/log/task/UDFUploadRequestTask$1;->this$0:Lcom/taobao/tao/log/task/UDFUploadRequestTask;

    .line 101
    invoke-static {v1}, Lcom/taobao/tao/log/task/UDFUploadRequestTask;->access$000(Lcom/taobao/tao/log/task/UDFUploadRequestTask;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6d88\u606f\u5904\u7406\uff1a\u6267\u884c\u7528\u6237\u81ea\u5b9a\u4e49\u6587\u4ef6\u4e0a\u4f20\u6821\u9a8c\u5931\u8d25\uff0c\u4e1a\u52a1\u8fd4\u56de\u53c2\u6570\u6709\u9519\uff0cfilePath\u6216\u8005bizcode\u4e3a\u7a7a"

    .line 100
    invoke-interface {p1, v0, v1, v2}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 102
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
