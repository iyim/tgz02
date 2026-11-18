.class public Lcom/taobao/tao/log/task/CommandManager;
.super Ljava/lang/Object;
.source "CommandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/log/task/CommandManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private commandTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/log/task/ICommandTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TLOG.CommandManager"

    .line 24
    iput-object v0, p0, Lcom/taobao/tao/log/task/CommandManager;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/log/task/CommandManager;->commandTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/tao/log/task/CommandManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/taobao/tao/log/task/CommandManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static final getInstance()Lcom/taobao/tao/log/task/CommandManager;
    .locals 1

    .line 35
    invoke-static {}, Lcom/taobao/tao/log/task/CommandManager$SingletonHolder;->access$100()Lcom/taobao/tao/log/task/CommandManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCommandTaskListener(Ljava/lang/String;Lcom/taobao/tao/log/task/ICommandTask;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/taobao/tao/log/task/CommandManager;->commandTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dealCommandData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "RECEIVE MESSAGE"

    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    const-string/jumbo v1, "tlog-debug"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealCommandData content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/taobao/android/tlog/protocol/TLogReply;->getInstance()Lcom/taobao/android/tlog/protocol/TLogReply;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/taobao/android/tlog/protocol/TLogReply;->parseCommandInfo([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 68
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p2

    sget-object p3, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_REVEIVE:Ljava/lang/String;

    const-string/jumbo p4, "\u63a5\u6536\u6d88\u606f\u540e\uff0c\u57fa\u7840\u4fe1\u606f\u89e3\u6790\u5b8c\u6210"

    invoke-interface {p2, p3, v0, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p2, p1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->msgType:Ljava/lang/String;

    const-string p3, "NOTIFY"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p2

    sget-object p3, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_REVEIVE:Ljava/lang/String;

    const-string/jumbo p4, "\u63a5\u6536\u5230notify\u6d88\u606f\uff0c\u5f00\u59cb\u62c9\u4efb\u52a1"

    invoke-interface {p2, p3, v0, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/taobao/tao/log/task/PullTask;->getInstance()Lcom/taobao/tao/log/task/PullTask;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/tao/log/task/PullTask;->pull()V

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/taobao/tao/log/task/CommandManager;->commandTasks:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p3, p1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->opCode:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/tao/log/task/ICommandTask;

    if-eqz p2, :cond_1

    .line 78
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p3

    sget-object p4, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_REVEIVE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f00\u59cb\u5904\u7406\u4efb\u52a1\uff0copcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->opCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p4, v0, v1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {p2, p1}, Lcom/taobao/tao/log/task/ICommandTask;->execute(Lcom/taobao/android/tlog/protocol/model/CommandInfo;)Lcom/taobao/tao/log/task/ICommandTask;

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p2

    sget-object p3, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_REVEIVE:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6ca1\u6709\u5bf9\u5e94\u7684\u4efb\u52a1\u5b58\u5728\uff0copcode="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->opCode:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, v0, p1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object p3, p0, Lcom/taobao/tao/log/task/CommandManager;->TAG:Ljava/lang/String;

    const-string p4, "CommandInfo is null"

    invoke-interface {p1, p2, p3, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    iget-object p2, p0, Lcom/taobao/tao/log/task/CommandManager;->TAG:Ljava/lang/String;

    const-string p3, "parse command info error"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p2

    sget-object p3, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object p4, p0, Lcom/taobao/tao/log/task/CommandManager;->TAG:Ljava/lang/String;

    invoke-interface {p2, p3, p4, p1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    iget-object p3, p0, Lcom/taobao/tao/log/task/CommandManager;->TAG:Ljava/lang/String;

    const-string p4, "MESSAGE IS NULL"

    invoke-interface {p1, p2, p3, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 40
    new-instance v0, Lcom/taobao/tao/log/task/ApplyTokenReplyTask;

    invoke-direct {v0}, Lcom/taobao/tao/log/task/ApplyTokenReplyTask;-><init>()V

    const-string v1, "RDWP_APPLY_UPLOAD_TOKEN_REPLY"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/tao/log/task/CommandManager;->addCommandTaskListener(Ljava/lang/String;Lcom/taobao/tao/log/task/ICommandTask;)V

    .line 42
    new-instance v0, Lcom/taobao/tao/log/task/ApplyUploadFileReplyTask;

    invoke-direct {v0}, Lcom/taobao/tao/log/task/ApplyUploadFileReplyTask;-><init>()V

    const-string v1, "RDWP_APPLY_UPLOAD_REPLY"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/tao/log/task/CommandManager;->addCommandTaskListener(Ljava/lang/String;Lcom/taobao/tao/log/task/ICommandTask;)V

    .line 44
    new-instance v0, Lcom/taobao/tao/log/task/LogUploadRequestTask;

    invoke-direct {v0}, Lcom/taobao/tao/log/task/LogUploadRequestTask;-><init>()V

    const-string v1, "RDWP_LOG_UPLOAD"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/tao/log/task/CommandManager;->addCommandTaskListener(Ljava/lang/String;Lcom/taobao/tao/log/task/ICommandTask;)V

    .line 46
    new-instance v0, Lcom/taobao/tao/log/task/LogConfigRequestTask;

    invoke-direct {v0}, Lcom/taobao/tao/log/task/LogConfigRequestTask;-><init>()V

    const-string v1, "RDWP_LOG_CONFIGURE"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/tao/log/task/CommandManager;->addCommandTaskListener(Ljava/lang/String;Lcom/taobao/tao/log/task/ICommandTask;)V

    .line 48
    new-instance v0, Lcom/taobao/tao/log/task/MethodTraceRequestTask;

    invoke-direct {v0}, Lcom/taobao/tao/log/task/MethodTraceRequestTask;-><init>()V

    const-string v1, "RDWP_METHOD_TRACE_DUMP"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/tao/log/task/CommandManager;->addCommandTaskListener(Ljava/lang/String;Lcom/taobao/tao/log/task/ICommandTask;)V

    .line 50
    new-instance v0, Lcom/taobao/tao/log/task/HeapDumpRequestTask;

    invoke-direct {v0}, Lcom/taobao/tao/log/task/HeapDumpRequestTask;-><init>()V

    const-string v1, "RDWP_HEAP_DUMP"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/tao/log/task/CommandManager;->addCommandTaskListener(Ljava/lang/String;Lcom/taobao/tao/log/task/ICommandTask;)V

    .line 52
    new-instance v0, Lcom/taobao/tao/log/task/UDFUploadRequestTask;

    invoke-direct {v0}, Lcom/taobao/tao/log/task/UDFUploadRequestTask;-><init>()V

    const-string v1, "RDWP_USER_DEFINED_UPLOAD"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/tao/log/task/CommandManager;->addCommandTaskListener(Ljava/lang/String;Lcom/taobao/tao/log/task/ICommandTask;)V

    return-void
.end method
