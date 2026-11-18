.class Lcom/ulog/uploader/client/UploadTask$1;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Lcom/ulog/uploader/callback/ULogUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ulog/uploader/client/UploadTask;-><init>(Lcom/ulog/uploader/client/UploadClient;Ljava/lang/String;Ljava/util/Date;Ljava/lang/ref/WeakReference;IILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ulog/uploader/client/UploadTask;


# direct methods
.method constructor <init>(Lcom/ulog/uploader/client/UploadTask;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeUpload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadTask;->access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadTask;->access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ulog/uploader/callback/ULogUploadCallback;

    invoke-interface {v0, p1, p2}, Lcom/ulog/uploader/callback/ULogUploadCallback;->onBeforeUpload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLogFileNotFound(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadTask;->access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadTask;->access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ulog/uploader/callback/ULogUploadCallback;

    invoke-interface {v0, p1, p2}, Lcom/ulog/uploader/callback/ULogUploadCallback;->onLogFileNotFound(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {p1}, Lcom/ulog/uploader/client/UploadTask;->access$100(Lcom/ulog/uploader/client/UploadTask;)Lcom/ulog/uploader/client/UploadTask$TaskListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {p1}, Lcom/ulog/uploader/client/UploadTask;->access$100(Lcom/ulog/uploader/client/UploadTask;)Lcom/ulog/uploader/client/UploadTask$TaskListener;

    move-result-object p1

    iget-object p2, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-interface {p1, p2}, Lcom/ulog/uploader/client/UploadTask$TaskListener;->onTaskFinish(Lcom/ulog/uploader/client/UploadTask;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadTask;->access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadTask;->access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ulog/uploader/callback/ULogUploadCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/ulog/uploader/callback/ULogUploadCallback;->onSuccess(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {p1}, Lcom/ulog/uploader/client/UploadTask;->access$100(Lcom/ulog/uploader/client/UploadTask;)Lcom/ulog/uploader/client/UploadTask$TaskListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {p1}, Lcom/ulog/uploader/client/UploadTask;->access$100(Lcom/ulog/uploader/client/UploadTask;)Lcom/ulog/uploader/client/UploadTask$TaskListener;

    move-result-object p1

    iget-object p2, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-interface {p1, p2}, Lcom/ulog/uploader/client/UploadTask$TaskListener;->onTaskFinish(Lcom/ulog/uploader/client/UploadTask;)V

    :cond_1
    return-void
.end method

.method public onTaskAlreadyRunning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadTask;->access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadTask;->access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ulog/uploader/callback/ULogUploadCallback;

    invoke-interface {v0, p1, p2}, Lcom/ulog/uploader/callback/ULogUploadCallback;->onTaskAlreadyRunning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUploadFailed(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadTask;->access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadTask;->access$000(Lcom/ulog/uploader/client/UploadTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ulog/uploader/callback/ULogUploadCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ulog/uploader/callback/ULogUploadCallback;->onUploadFailed(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {p1}, Lcom/ulog/uploader/client/UploadTask;->access$100(Lcom/ulog/uploader/client/UploadTask;)Lcom/ulog/uploader/client/UploadTask$TaskListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-static {p1}, Lcom/ulog/uploader/client/UploadTask;->access$100(Lcom/ulog/uploader/client/UploadTask;)Lcom/ulog/uploader/client/UploadTask$TaskListener;

    move-result-object p1

    iget-object p2, p0, Lcom/ulog/uploader/client/UploadTask$1;->this$0:Lcom/ulog/uploader/client/UploadTask;

    invoke-interface {p1, p2}, Lcom/ulog/uploader/client/UploadTask$TaskListener;->onTaskFinish(Lcom/ulog/uploader/client/UploadTask;)V

    :cond_1
    return-void
.end method
