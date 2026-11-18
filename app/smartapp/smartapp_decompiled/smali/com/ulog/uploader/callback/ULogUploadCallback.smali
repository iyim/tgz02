.class public interface abstract Lcom/ulog/uploader/callback/ULogUploadCallback;
.super Ljava/lang/Object;
.source "ULogUploadCallback.java"


# virtual methods
.method public abstract onBeforeUpload(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLogFileNotFound(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onTaskAlreadyRunning(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUploadFailed(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
.end method
