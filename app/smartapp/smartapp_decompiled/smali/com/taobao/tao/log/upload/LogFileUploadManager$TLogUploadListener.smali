.class public Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;
.super Lcom/taobao/tao/log/upload/OSSUploadListener;
.source "LogFileUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/upload/LogFileUploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TLogUploadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;


# direct methods
.method public constructor <init>(Lcom/taobao/tao/log/upload/LogFileUploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    .line 600
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/tao/log/upload/OSSUploadListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 605
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->contentType:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-static {p1}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->access$300(Lcom/taobao/tao/log/upload/LogFileUploadManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 607
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD_COUNT:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25\u4e86\uff1a\u68c0\u6d4b\u662f\u5426\u8fd8\u6709\u6587\u4ef6\u53ef\u4e0a\u4f20  \u662f\u5426\u5f00\u542f\u5f3a\u5236\u4e0a\u4f20\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    iget-boolean v0, v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MSG LOG UPLOAD"

    invoke-interface {p1, p2, v0, p3}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-static {p1}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->access$300(Lcom/taobao/tao/log/upload/LogFileUploadManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 611
    :cond_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    .line 612
    invoke-static {}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->access$400()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError mHandler.getLooper().getThread().is not Alive, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    iget-object v1, v1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isForceUpload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    iget-boolean v1, v1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-interface {p1, p2, p3, v0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSucessed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "upload file onSucessed , originalFilePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tlog-debug"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    iget-object v4, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->contentType:Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->ossObjectKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->ossEndpoint:Ljava/lang/String;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-static {p1}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->access$300(Lcom/taobao/tao/log/upload/LogFileUploadManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 621
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    .line 622
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD_COUNT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6587\u4ef6\u4e0a\u4f20\u6210\u529f\u4e86\uff1a\u68c0\u6d4b\u662f\u5426\u8fd8\u6709\u6587\u4ef6\u53ef\u4e0a\u4f20  \u662f\u5426\u5f00\u542f\u5f3a\u5236\u4e0a\u4f20\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    iget-boolean v1, v1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG LOG UPLOAD"

    invoke-interface {p1, p2, v1, v0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-static {p1}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->access$300(Lcom/taobao/tao/log/upload/LogFileUploadManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 626
    :cond_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    .line 627
    invoke-static {}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSucessed mHandler.getLooper().getThread().is not Alive, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    iget-object v2, v2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isForceUpload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    iget-boolean v2, v2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-interface {p1, p2, v0, v1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
