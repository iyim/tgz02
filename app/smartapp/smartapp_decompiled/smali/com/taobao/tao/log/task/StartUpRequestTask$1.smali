.class final Lcom/taobao/tao/log/task/StartUpRequestTask$1;
.super Ljava/util/TimerTask;
.source "StartUpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/log/task/StartUpRequestTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$startTime:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/taobao/tao/log/task/StartUpRequestTask$1;->val$startTime:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 82
    :try_start_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_PULL:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/taobao/tao/log/task/StartUpRequestTask;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u542f\u52a8\u4e8b\u4ef6\uff1a\u53d1\u9001\u542f\u52a8\u4e8b\u4ef6"

    .line 82
    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getLogUploader()Lcom/taobao/tao/log/upload/LogUploader;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/tao/log/upload/LogUploader;->getUploadInfo()Lcom/taobao/tao/log/upload/UploaderInfo;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;

    invoke-direct {v1}, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;-><init>()V

    .line 87
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/log/TLogInitializer;->getUserNick()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->user:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/log/TLogInitializer;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->appVersion:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->appKey:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/log/TLogInitializer;->getAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->appId:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getUTDID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->utdid:Ljava/lang/String;

    const-string v2, "RDWP_STARTUP"

    .line 92
    iput-object v2, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->opCode:Ljava/lang/String;

    .line 93
    new-instance v2, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    invoke-direct {v2}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;-><init>()V

    .line 94
    iget-object v3, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    iput-object v3, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->tokenType:Ljava/lang/String;

    .line 95
    iget-object v3, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v4, "oss"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v4, "arup"

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v3, "ceph"

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ossBucketName"

    .line 98
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    iput-object v2, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->tokenInfo:Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    const-string v0, "android"

    .line 103
    iput-object v0, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->osPlatform:Ljava/lang/String;

    .line 104
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->osVersion:Ljava/lang/String;

    .line 105
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->brand:Ljava/lang/String;

    .line 106
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->deviceModel:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/taobao/tao/log/task/StartUpRequestTask;->access$100()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->ip:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/taobao/tao/log/task/StartUpRequestTask$1;->val$startTime:Ljava/lang/Long;

    iput-object v0, v1, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->clientTime:Ljava/lang/Long;

    .line 111
    invoke-virtual {v1}, Lcom/taobao/android/tlog/protocol/model/request/StartupRequest;->build()Lcom/taobao/android/tlog/protocol/model/RequestResult;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/taobao/tao/log/message/SendMessage;->send(Landroid/content/Context;Lcom/taobao/android/tlog/protocol/model/RequestResult;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-static {}, Lcom/taobao/tao/log/task/StartUpRequestTask;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "start up request build error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v1

    sget-object v2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/taobao/tao/log/task/StartUpRequestTask;->access$000()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-interface {v1, v2, v3, v0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
