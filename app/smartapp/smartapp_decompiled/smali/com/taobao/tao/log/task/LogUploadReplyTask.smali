.class public Lcom/taobao/tao/log/task/LogUploadReplyTask;
.super Ljava/lang/Object;
.source "LogUploadReplyTask.java"


# static fields
.field private static TAG:Ljava/lang/String; = "TLOG.LogUploadReplyTask"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static executeFailure(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 130
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p3

    sget-object v0, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    sget-object v1, Lcom/taobao/tao/log/task/LogUploadReplyTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v1, v2}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance p3, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;

    invoke-direct {p3}, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;-><init>()V

    .line 135
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getLogUploader()Lcom/taobao/tao/log/upload/LogUploader;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/tao/log/upload/LogUploader;->getUploadInfo()Lcom/taobao/tao/log/upload/UploaderInfo;

    move-result-object v0

    .line 136
    iput-object p1, p3, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;->uploadId:Ljava/lang/String;

    .line 138
    new-instance p1, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    invoke-direct {p1}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;-><init>()V

    .line 139
    new-instance v1, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;

    invoke-direct {v1}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;-><init>()V

    .line 140
    iget-object v2, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v3, "oss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v3, "arup"

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v3, "ceph"

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    :cond_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    const-string v3, "ossBucketName"

    invoke-virtual {p1, v3, v2}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ""

    const-string v3, "ossObjectKey"

    .line 146
    invoke-virtual {v1, v3, v2}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ossPath"

    .line 147
    invoke-virtual {v1, v3, v2}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "errorCode"

    .line 149
    invoke-virtual {v1, v2, p4}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "errorMsg"

    .line 150
    invoke-virtual {v1, v2, p5}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 152
    new-array v2, v2, [Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;

    .line 153
    new-instance v3, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;

    invoke-direct {v3}, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;-><init>()V

    .line 154
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->absolutePath:Ljava/lang/String;

    .line 157
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentLength:Ljava/lang/Long;

    .line 158
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->fileName:Ljava/lang/String;

    const-string p2, "gzip"

    .line 159
    iput-object p2, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentEncoding:Ljava/lang/String;

    .line 160
    iput-object p6, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentType:Ljava/lang/String;

    .line 161
    iget-object p2, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentType:Ljava/lang/String;

    if-nez p2, :cond_2

    const-string p2, "application/x-tlog"

    .line 162
    iput-object p2, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentType:Ljava/lang/String;

    :cond_2
    const/4 p2, 0x0

    aput-object v3, v2, p2

    .line 166
    iget-object p2, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    iput-object p2, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->storageType:Ljava/lang/String;

    .line 167
    iput-object v1, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->storageInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;

    .line 169
    iput-object v2, p3, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;->remoteFileInfos:[Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;

    .line 170
    iput-object p1, p3, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;->tokenInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    .line 171
    iget-object p1, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    iput-object p1, p3, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;->tokenType:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getUTDID()Ljava/lang/String;

    move-result-object p2

    .line 176
    new-instance p6, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;

    invoke-direct {p6}, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;-><init>()V

    .line 177
    iput-object p1, p6, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->appKey:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getAppId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p6, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->appId:Ljava/lang/String;

    .line 179
    iput-object p2, p6, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->utdid:Ljava/lang/String;

    const-string p1, "RDWP_LOG_UPLOAD_REPLY"

    .line 180
    iput-object p1, p6, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->replyOpCode:Ljava/lang/String;

    .line 181
    iput-object p4, p6, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->replyCode:Ljava/lang/String;

    .line 182
    iput-object p5, p6, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->replyMsg:Ljava/lang/String;

    .line 185
    :try_start_0
    invoke-virtual {p3, p0, p6}, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;->build(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 187
    new-instance p1, Lcom/taobao/android/tlog/protocol/model/RequestResult;

    invoke-direct {p1}, Lcom/taobao/android/tlog/protocol/model/RequestResult;-><init>()V

    .line 188
    iput-object p0, p1, Lcom/taobao/android/tlog/protocol/model/RequestResult;->content:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/tao/log/message/SendMessage;->send(Landroid/content/Context;Lcom/taobao/android/tlog/protocol/model/RequestResult;)V

    goto :goto_0

    .line 193
    :cond_3
    sget-object p0, Lcom/taobao/tao/log/task/LogUploadReplyTask;->TAG:Ljava/lang/String;

    const-string p1, "content build failure"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    sget-object p1, Lcom/taobao/tao/log/task/LogUploadReplyTask;->TAG:Ljava/lang/String;

    const-string p2, "log upload reply error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/task/LogUploadReplyTask;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, p3, p0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static executeSuccess(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 42
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    sget-object v2, Lcom/taobao/tao/log/task/LogUploadReplyTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6d88\u606f\u5904\u7406\uff1a\u670d\u52a1\u7aef\u4e3b\u52a8\u8981\u6c42\u4e0a\u4f20\u6587\u4ef6\u56de\u590d\uff0cuploadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;

    invoke-direct {v0}, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;-><init>()V

    .line 47
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->getLogUploader()Lcom/taobao/tao/log/upload/LogUploader;

    move-result-object v1

    invoke-interface {v1}, Lcom/taobao/tao/log/upload/LogUploader;->getUploadInfo()Lcom/taobao/tao/log/upload/UploaderInfo;

    move-result-object v1

    .line 48
    iput-object p1, v0, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;->uploadId:Ljava/lang/String;

    .line 50
    new-instance p1, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;

    invoke-direct {p1}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;-><init>()V

    .line 51
    new-instance v2, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    invoke-direct {v2}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;-><init>()V

    .line 52
    iget-object v3, v1, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v4, "oss"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "arup"

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v6, "ceph"

    .line 54
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    :cond_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    const-string v6, "ossBucketName"

    invoke-virtual {v2, v6, v3}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    invoke-virtual {p1, v6, v3}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ossObjectKey"

    .line 58
    invoke-virtual {p1, v3, p5}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p5, v1, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const-string v3, "ossPath"

    if-eqz p5, :cond_1

    if-eqz p6, :cond_2

    .line 61
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v3, p3}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_1
    iget-object p5, v1, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 65
    invoke-virtual {p1, v3, p3}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const/4 p3, 0x1

    .line 69
    new-array p3, p3, [Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;

    .line 70
    new-instance p5, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;

    invoke-direct {p5}, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;-><init>()V

    .line 71
    new-instance p6, Ljava/io/File;

    invoke-direct {p6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p6}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 73
    invoke-virtual {p6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p5, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->absolutePath:Ljava/lang/String;

    .line 74
    invoke-virtual {p6}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p5, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentLength:Ljava/lang/Long;

    .line 75
    invoke-virtual {p6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p5, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->fileName:Ljava/lang/String;

    const-string p2, "gzip"

    .line 76
    iput-object p2, p5, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentEncoding:Ljava/lang/String;

    .line 77
    iput-object p4, p5, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentType:Ljava/lang/String;

    .line 78
    iget-object p2, p5, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentType:Ljava/lang/String;

    if-nez p2, :cond_3

    const-string p2, "application/x-tlog"

    .line 79
    iput-object p2, p5, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentType:Ljava/lang/String;

    :cond_3
    const/4 p2, 0x0

    aput-object p5, p3, p2

    .line 83
    iget-object p2, v1, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    iput-object p2, p5, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->storageType:Ljava/lang/String;

    .line 84
    iput-object p1, p5, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->storageInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;

    .line 86
    iput-object p3, v0, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;->remoteFileInfos:[Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;

    .line 87
    iget-object p1, v1, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    iput-object p1, v0, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;->tokenType:Ljava/lang/String;

    .line 88
    iput-object v2, v0, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;->tokenInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    .line 91
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getUTDID()Ljava/lang/String;

    move-result-object p2

    .line 94
    new-instance p3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;

    invoke-direct {p3}, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;-><init>()V

    .line 95
    iput-object p1, p3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->appKey:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getAppId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->appId:Ljava/lang/String;

    .line 97
    iput-object p2, p3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->utdid:Ljava/lang/String;

    const-string p1, "RDWP_LOG_UPLOAD_REPLY"

    .line 98
    iput-object p1, p3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->replyOpCode:Ljava/lang/String;

    const-string p1, "200"

    .line 99
    iput-object p1, p3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->replyCode:Ljava/lang/String;

    const-string p1, ""

    .line 100
    iput-object p1, p3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->replyMsg:Ljava/lang/String;

    .line 103
    :try_start_0
    invoke-virtual {v0, p0, p3}, Lcom/taobao/android/tlog/protocol/model/reply/LogUploadReply;->build(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 105
    new-instance p1, Lcom/taobao/android/tlog/protocol/model/RequestResult;

    invoke-direct {p1}, Lcom/taobao/android/tlog/protocol/model/RequestResult;-><init>()V

    .line 106
    iput-object p0, p1, Lcom/taobao/android/tlog/protocol/model/RequestResult;->content:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/taobao/tao/log/message/SendMessage;->send(Landroid/content/Context;Lcom/taobao/android/tlog/protocol/model/RequestResult;)V

    goto :goto_1

    .line 111
    :cond_4
    sget-object p0, Lcom/taobao/tao/log/task/LogUploadReplyTask;->TAG:Ljava/lang/String;

    const-string p1, "content build failure"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 114
    sget-object p1, Lcom/taobao/tao/log/task/LogUploadReplyTask;->TAG:Ljava/lang/String;

    const-string p2, "log upload reply error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/task/LogUploadReplyTask;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, p3, p0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
