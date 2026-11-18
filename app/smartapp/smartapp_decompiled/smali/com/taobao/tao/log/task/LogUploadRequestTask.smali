.class public Lcom/taobao/tao/log/task/LogUploadRequestTask;
.super Ljava/lang/Object;
.source "LogUploadRequestTask.java"

# interfaces
.implements Lcom/taobao/tao/log/task/ICommandTask;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TLOG.LogUploadRequestTask"

    .line 26
    iput-object v0, p0, Lcom/taobao/tao/log/task/LogUploadRequestTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method private findFile([Lcom/taobao/android/tlog/protocol/model/request/base/LogFeature;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/taobao/android/tlog/protocol/model/request/base/LogFeature;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/taobao/tao/log/task/LogUploadRequestTask;->TAG:Ljava/lang/String;

    const-string v0, "log features is null "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 88
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, p1, v4

    .line 89
    iget-object v6, v5, Lcom/taobao/android/tlog/protocol/model/request/base/LogFeature;->appenderName:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 91
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/tao/log/TLogInitializer;->getNameprefix()Ljava/lang/String;

    move-result-object v6

    .line 93
    :cond_1
    iget-object v7, v5, Lcom/taobao/android/tlog/protocol/model/request/base/LogFeature;->suffix:Ljava/lang/String;

    .line 94
    iget-object v5, v5, Lcom/taobao/android/tlog/protocol/model/request/base/LogFeature;->maxHistory:Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 97
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/taobao/tao/log/TLogUtils;->getFilePath(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v1

    .line 102
    :goto_1
    invoke-static {v5}, Lcom/taobao/tao/log/TLogUtils;->getDays(Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_3

    .line 103
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 105
    invoke-static {v6, v3, v5}, Lcom/taobao/tao/log/TLogUtils;->getFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    if-eqz v7, :cond_5

    .line 110
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 111
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 112
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_7

    .line 119
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 121
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public execute(Lcom/taobao/android/tlog/protocol/model/CommandInfo;)Lcom/taobao/tao/log/task/ICommandTask;
    .locals 9

    .line 30
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/tao/log/task/LogUploadRequestTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u6d88\u606f\u5904\u7406\uff1a\u670d\u52a1\u7aef\u8bf7\u6c42\u4e0a\u4f20\u6587\u4ef6"

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Lcom/taobao/tao/log/TLogNative;->appenderFlushData(Z)V

    .line 37
    :try_start_0
    new-instance v0, Lcom/taobao/android/tlog/protocol/model/request/LogUploadRequest;

    invoke-direct {v0}, Lcom/taobao/android/tlog/protocol/model/request/LogUploadRequest;-><init>()V

    .line 38
    iget-object v1, p1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->data:Lcom/alibaba/fastjson/JSON;

    invoke-virtual {v0, v1, p1}, Lcom/taobao/android/tlog/protocol/model/request/LogUploadRequest;->parse(Lcom/alibaba/fastjson/JSON;Lcom/taobao/android/tlog/protocol/model/CommandInfo;)V

    .line 40
    iget-object v3, v0, Lcom/taobao/android/tlog/protocol/model/request/LogUploadRequest;->uploadId:Ljava/lang/String;

    .line 41
    iget-object v1, v0, Lcom/taobao/android/tlog/protocol/model/request/LogUploadRequest;->logFeatures:[Lcom/taobao/android/tlog/protocol/model/request/base/LogFeature;

    .line 42
    iget-object v0, v0, Lcom/taobao/android/tlog/protocol/model/request/LogUploadRequest;->allowNotWifi:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/tao/log/TLogUtils;->checkNetworkIsWifi(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x0

    const-string v5, "1"

    const-string v6, "405"

    const-string v7, "NotWifi"

    const/4 v8, 0x0

    move-object v2, p1

    .line 49
    invoke-static/range {v2 .. v8}, Lcom/taobao/tao/log/task/LogUploadReplyTask;->executeFailure(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 54
    :cond_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object v2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/tao/log/task/LogUploadRequestTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6d88\u606f\u5904\u7406\uff1a\u670d\u52a1\u7aef\u8bf7\u6c42\u4e0a\u4f20\u6587\u4ef6,\u662f\u5426\u5141\u8bb8\u975ewifi\u4e0a\u4f20\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, v1}, Lcom/taobao/tao/log/task/LogUploadRequestTask;->findFile([Lcom/taobao/android/tlog/protocol/model/request/base/LogFeature;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "application/x-tlog"

    .line 60
    invoke-static {v3, p1, v0}, Lcom/taobao/tao/log/task/ApplyTokenRequestTask;->execute(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object v0, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/tao/log/task/LogUploadRequestTask;->TAG:Ljava/lang/String;

    const-string v2, "files == null || files.size() <= 0"

    invoke-interface {p1, v0, v1, v2}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    iget-object v0, p0, Lcom/taobao/tao/log/task/LogUploadRequestTask;->TAG:Ljava/lang/String;

    const-string v1, "execute error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/tao/log/task/LogUploadRequestTask;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
