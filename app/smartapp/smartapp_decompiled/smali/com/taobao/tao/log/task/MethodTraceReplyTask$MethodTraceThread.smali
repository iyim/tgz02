.class public Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;
.super Ljava/lang/Thread;
.source "MethodTraceReplyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/task/MethodTraceReplyTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodTraceThread"
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field private fileUploadListener:Lcom/taobao/tao/log/upload/FileUploadListener;

.field final synthetic this$0:Lcom/taobao/tao/log/task/MethodTraceReplyTask;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/tao/log/task/MethodTraceReplyTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/tao/log/upload/FileUploadListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->this$0:Lcom/taobao/tao/log/task/MethodTraceReplyTask;

    .line 141
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 142
    iput-object p3, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->uploadId:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->filePath:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->fileUploadListener:Lcom/taobao/tao/log/upload/FileUploadListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "tlog-debug"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "god-eye MethodTraceThread run, uploadId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->uploadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->uploadId:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 157
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/tao/log/TLogInitializer;->getMessageSender()Lcom/taobao/tao/log/message/MessageSender;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/tao/log/TLogInitializer;->getLogUploader()Lcom/taobao/tao/log/upload/LogUploader;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x2710

    .line 161
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 164
    invoke-static {}, Lcom/taobao/tao/log/task/MethodTraceReplyTask;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "after sleep 100s, message sender and uploader still null, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_2
    invoke-static {}, Lcom/taobao/tao/log/upload/UploadQueue;->getInstance()Lcom/taobao/tao/log/upload/UploadQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->uploadId:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->fileUploadListener:Lcom/taobao/tao/log/upload/FileUploadListener;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/tao/log/upload/UploadQueue;->pushListener(Ljava/lang/String;Lcom/taobao/tao/log/upload/FileUploadListener;)V

    .line 168
    iget-object v1, p0, Lcom/taobao/tao/log/task/MethodTraceReplyTask$MethodTraceThread;->uploadId:Ljava/lang/String;

    const-string v2, "application/x-perf-methodtrace"

    invoke-static {v1, v0, v2}, Lcom/taobao/tao/log/task/ApplyTokenRequestTask;->execute(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 170
    :cond_3
    invoke-static {}, Lcom/taobao/tao/log/task/MethodTraceReplyTask;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "upload id is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TLOG"

    .line 171
    invoke-static {}, Lcom/taobao/tao/log/task/MethodTraceReplyTask;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method trace upload id is null"

    invoke-static {v0, v1, v2}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v1

    sget-object v2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/taobao/tao/log/task/MethodTraceReplyTask;->access$000()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-interface {v1, v2, v3, v0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
