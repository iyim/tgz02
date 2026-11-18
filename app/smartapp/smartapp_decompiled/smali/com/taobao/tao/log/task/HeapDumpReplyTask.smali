.class public Lcom/taobao/tao/log/task/HeapDumpReplyTask;
.super Ljava/lang/Object;
.source "HeapDumpReplyTask.java"

# interfaces
.implements Lcom/taobao/tao/log/godeye/core/GodEyeReponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/log/task/HeapDumpReplyTask$HeapDumpThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TLOG.MethodTraceReplyTask"

    .line 39
    iput-object v0, p0, Lcom/taobao/tao/log/task/HeapDumpReplyTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/tao/log/task/HeapDumpReplyTask;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/taobao/tao/log/task/HeapDumpReplyTask;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 46
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p4

    sget-object v0, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/tao/log/task/HeapDumpReplyTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u6d88\u606f\u5904\u7406\uff1a\u5806\u6808dump\u56de\u590d\u6d88\u606f"

    invoke-interface {p4, v0, v1, v2}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p4, "tfsPath"

    const-string v0, "fileName"

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 52
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 56
    :goto_0
    new-instance v3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;

    invoke-direct {v3}, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;-><init>()V

    const-string v4, "RDWP_HEAP_DUMP_REPLY"

    .line 57
    iput-object v4, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->replyOpCode:Ljava/lang/String;

    .line 58
    iput-object p5, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->replyCode:Ljava/lang/String;

    .line 59
    iput-object p6, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->replyMsg:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getUTDID()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->utdid:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p5

    invoke-virtual {p5}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->appKey:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p5

    invoke-virtual {p5}, Lcom/taobao/tao/log/TLogInitializer;->getAppId()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;->appId:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p5

    invoke-virtual {p5}, Lcom/taobao/tao/log/TLogInitializer;->getLogUploader()Lcom/taobao/tao/log/upload/LogUploader;

    move-result-object p5

    invoke-interface {p5}, Lcom/taobao/tao/log/upload/LogUploader;->getUploadInfo()Lcom/taobao/tao/log/upload/UploaderInfo;

    move-result-object p5

    .line 65
    new-instance p6, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;

    invoke-direct {p6}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;-><init>()V

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p6, v0, v1}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, p4, v0}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_2
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/tao/log/TLogInitializer;->getUserNick()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "user"

    invoke-virtual {p6, v0, p4}, Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;

    invoke-direct {p4}, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;-><init>()V

    .line 75
    new-instance v0, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    invoke-direct {v0}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;-><init>()V

    .line 76
    iget-object v2, p5, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    iput-object v2, p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->tokenType:Ljava/lang/String;

    .line 77
    iget-object v2, p5, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v4, "oss"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p5, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v4, "arup"

    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p5, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v4, "ceph"

    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    :cond_3
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    const-string v4, "ossBucketName"

    invoke-virtual {v0, v4, v2}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_4
    iput-object v0, p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->tokenInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    const/4 v0, 0x1

    .line 84
    new-array v0, v0, [Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;

    .line 85
    new-instance v2, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;

    invoke-direct {v2}, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;-><init>()V

    if-eqz v1, :cond_5

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 87
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->absolutePath:Ljava/lang/String;

    .line 90
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentLength:Ljava/lang/Long;

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->fileName:Ljava/lang/String;

    const-string v1, "gzip"

    .line 92
    iput-object v1, v2, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentEncoding:Ljava/lang/String;

    const-string v1, "application/x-perf-heapdump"

    .line 93
    iput-object v1, v2, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->contentType:Ljava/lang/String;

    :cond_5
    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 98
    iget-object p5, p5, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    iput-object p5, v2, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->storageType:Ljava/lang/String;

    .line 99
    iput-object p6, v2, Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;->storageInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/StorageInfo;

    .line 100
    iput-object p2, p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->uploadId:Ljava/lang/String;

    .line 101
    iput-object v0, p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->remoteFileInfos:[Lcom/taobao/android/tlog/protocol/model/reply/base/RemoteFileInfo;

    if-eqz p3, :cond_7

    const-string p2, "appBuild"

    .line 103
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    .line 104
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 105
    iget-object p6, p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->extraInfo:Ljava/util/Map;

    if-nez p6, :cond_6

    .line 106
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    iput-object p6, p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->extraInfo:Ljava/util/Map;

    .line 108
    :cond_6
    iget-object p6, p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->extraInfo:Ljava/util/Map;

    invoke-interface {p6, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz p3, :cond_9

    const-string/jumbo p2, "statData"

    .line 110
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_9

    .line 111
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 113
    iget-object p5, p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->performanceInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/PerformanceInfo;

    if-nez p5, :cond_8

    .line 114
    new-instance p5, Lcom/taobao/android/tlog/protocol/model/reply/base/PerformanceInfo;

    invoke-direct {p5}, Lcom/taobao/android/tlog/protocol/model/reply/base/PerformanceInfo;-><init>()V

    iput-object p5, p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->performanceInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/PerformanceInfo;

    .line 116
    :cond_8
    iget-object p5, p4, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->performanceInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/PerformanceInfo;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Lcom/taobao/android/tlog/protocol/model/reply/base/PerformanceInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_9
    :try_start_0
    invoke-virtual {p4, p1, v3}, Lcom/taobao/android/tlog/protocol/model/reply/HeapDumpReply;->build(Ljava/lang/String;Lcom/taobao/android/tlog/protocol/model/reply/base/LogReplyBaseInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 124
    new-instance p2, Lcom/taobao/android/tlog/protocol/model/RequestResult;

    invoke-direct {p2}, Lcom/taobao/android/tlog/protocol/model/RequestResult;-><init>()V

    .line 125
    iput-object p1, p2, Lcom/taobao/android/tlog/protocol/model/RequestResult;->content:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/taobao/tao/log/message/SendMessage;->send(Landroid/content/Context;Lcom/taobao/android/tlog/protocol/model/RequestResult;)V

    goto :goto_1

    .line 130
    :cond_a
    iget-object p1, p0, Lcom/taobao/tao/log/task/HeapDumpReplyTask;->TAG:Ljava/lang/String;

    const-string p2, "content build failure"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 133
    iget-object p2, p0, Lcom/taobao/tao/log/task/HeapDumpReplyTask;->TAG:Ljava/lang/String;

    const-string p3, "heap dump reply error"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p2

    sget-object p3, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object p4, p0, Lcom/taobao/tao/log/task/HeapDumpReplyTask;->TAG:Ljava/lang/String;

    invoke-interface {p2, p3, p4, p1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public sendFile(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/tao/log/upload/FileUploadListener;)V
    .locals 7

    .line 147
    new-instance v6, Lcom/taobao/tao/log/task/HeapDumpReplyTask$HeapDumpThread;

    const-string v2, "heap dump"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/taobao/tao/log/task/HeapDumpReplyTask$HeapDumpThread;-><init>(Lcom/taobao/tao/log/task/HeapDumpReplyTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/tao/log/upload/FileUploadListener;)V

    .line 148
    invoke-virtual {v6}, Lcom/taobao/tao/log/task/HeapDumpReplyTask$HeapDumpThread;->start()V

    return-void
.end method
