.class public Lcom/taobao/tao/log/task/ApplyUploadFileRequestTask;
.super Ljava/lang/Object;
.source "ApplyUploadFileRequestTask.java"


# static fields
.field private static TAG:Ljava/lang/String; = "TLOG.ApplyUploadFileRequestTask"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static execute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/tao/log/upload/FileUploadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/tao/log/upload/FileUploadListener;",
            ")V"
        }
    .end annotation

    .line 45
    :try_start_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    sget-object v2, Lcom/taobao/tao/log/task/ApplyUploadFileRequestTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u4e3b\u52a8\u4e0a\u62a5 \u6d88\u606f\u5904\u7406\uff1a\u8bf7\u6c42\u6587\u4ef6\u4e0a\u4f20\u6d88\u606f"

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getLogUploader()Lcom/taobao/tao/log/upload/LogUploader;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/tao/log/upload/LogUploader;->getUploadInfo()Lcom/taobao/tao/log/upload/UploaderInfo;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;

    invoke-direct {v1}, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;-><init>()V

    .line 52
    iput-object p2, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->bizType:Ljava/lang/String;

    .line 53
    iput-object p1, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->debugType:Ljava/lang/String;

    .line 54
    iput-object p3, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->bizCode:Ljava/lang/String;

    .line 55
    iget-object p2, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    iput-object p2, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->tokenType:Ljava/lang/String;

    .line 57
    new-instance p2, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    invoke-direct {p2}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;-><init>()V

    .line 58
    iget-object p3, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    iput-object p3, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->tokenType:Ljava/lang/String;

    .line 59
    iget-object p3, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v2, "oss"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v2, "arup"

    .line 60
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v0, "ceph"

    .line 61
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    const-string p3, "ossBucketName"

    .line 62
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    iput-object p2, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->tokenInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    if-eqz p4, :cond_2

    .line 67
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 68
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->extraInfo:Ljava/util/Map;

    .line 69
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 70
    iget-object p4, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->extraInfo:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;

    const/4 p3, 0x0

    .line 75
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_7

    .line 76
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance p4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;

    invoke-direct {p4}, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;-><init>()V

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->fileName:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->absolutePath:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->contentLength:Ljava/lang/Long;

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->lastModified:Ljava/lang/Long;

    const-string v0, "method_trace"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "application/x-perf-methodtrace"

    .line 87
    iput-object v0, p4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->contentType:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, "heap_dump"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "application/x-perf-heapdump"

    .line 89
    iput-object v0, p4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->contentType:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "tlog"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "application/x-tlog"

    .line 91
    iput-object v0, p4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->contentType:Ljava/lang/String;

    :cond_5
    :goto_2
    const-string v0, "gzip"

    .line 93
    iput-object v0, p4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->contentEncoding:Ljava/lang/String;

    .line 95
    aput-object p4, p2, p3

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 98
    :cond_7
    iput-object p2, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->fileInfos:[Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;

    .line 101
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getUTDID()Ljava/lang/String;

    move-result-object p1

    .line 103
    iput-object p0, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->appKey:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->getAppId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->appId:Ljava/lang/String;

    .line 105
    iput-object p1, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->utdid:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/tao/log/TLogInitializer;->getUserNick()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->user:Ljava/lang/String;

    const-string p0, "RDWP_APPLY_UPLOAD"

    .line 107
    iput-object p0, v1, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->opCode:Ljava/lang/String;

    .line 109
    invoke-virtual {v1}, Lcom/taobao/android/tlog/protocol/model/request/ApplyUploadRequest;->build()Lcom/taobao/android/tlog/protocol/model/RequestResult;

    move-result-object p0

    if-eqz p5, :cond_8

    .line 112
    invoke-static {}, Lcom/taobao/tao/log/upload/UploadQueue;->getInstance()Lcom/taobao/tao/log/upload/UploadQueue;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/android/tlog/protocol/model/RequestResult;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2, p5}, Lcom/taobao/tao/log/upload/UploadQueue;->pushListener(Ljava/lang/String;Lcom/taobao/tao/log/upload/FileUploadListener;)V

    .line 115
    :cond_8
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/taobao/tao/log/message/SendMessage;->send(Landroid/content/Context;Lcom/taobao/android/tlog/protocol/model/RequestResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 117
    sget-object p1, Lcom/taobao/tao/log/task/ApplyUploadFileRequestTask;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "send request message error "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/task/ApplyUploadFileRequestTask;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, p3, p0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
