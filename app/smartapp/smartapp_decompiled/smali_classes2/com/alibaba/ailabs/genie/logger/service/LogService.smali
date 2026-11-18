.class public Lcom/alibaba/ailabs/genie/logger/service/LogService;
.super Landroid/app/Service;
.source "LogService.java"


# static fields
.field private static final LOG_DIR_LIMIT:J = 0x2800L

.field private static final SD_LIMIT:J = 0x7800L

.field private static final TAG:Ljava/lang/String; = "LogService"

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private checkLogSizeRunnable:Ljava/lang/Runnable;

.field private mBinder:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;

.field private mHandler:Landroid/os/Handler;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/service/LogService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/logger/service/LogService$1;-><init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->runnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/service/LogService$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/logger/service/LogService$2;-><init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->checkLogSizeRunnable:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/service/LogService$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/logger/service/LogService$5;-><init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->mBinder:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/logger/service/LogService;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->checkLogSizeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/logger/service/LogService;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/logger/service/LogService;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->checkLogSize()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/logger/service/LogService;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->registerIm()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/logger/service/LogService;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->collectLogcat(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkLogSize()V
    .locals 9

    .line 91
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/sdk/ulog/ULogSetup;->getLogFileDir()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "LogService"

    if-eqz v1, :cond_0

    const-string v0, "logDir is empty"

    .line 93
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/StorageUtil;->getAvailableSdCardSize()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    .line 98
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/CommonUtils;->getDirSize(Ljava/lang/String;)J

    move-result-wide v7

    div-long/2addr v7, v5

    const-wide/16 v5, 0x7800

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    const-wide/16 v5, 0x2800

    cmp-long v1, v7, v5

    if-lez v1, :cond_4

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcardSize(KB):"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";logDirSize(KB):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/CommonUtils;->orderFileByDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 107
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_3

    const-string v0, "have no log file, return"

    .line 108
    invoke-static {v2, v0}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 112
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete file,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private collectLogcat(Ljava/lang/String;)V
    .locals 1

    .line 373
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/service/LogService$7;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/logger/service/LogService$7;-><init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;Ljava/lang/String;)V

    .line 390
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/service/LogService;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    .line 157
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v1, 0x3

    const/16 v2, 0xa

    const-wide/16 v3, 0x3

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/alibaba/ailabs/genie/logger/service/LogService;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 160
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/ailabs/genie/logger/service/LogService$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/logger/service/LogService$3;-><init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/logger/service/LogService$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/logger/service/LogService$4;-><init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private registerIm()V
    .locals 3

    const-string v0, "LogService"

    const-string v1, "registerIm"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/logger/service/LogService$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/logger/service/LogService$6;-><init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;)V

    const-string v2, "uc_wpk_ulog"

    invoke-virtual {v0, v2, v1}, Lcom/uc/rmbsdk/export/RmbManager;->registerChannel(Ljava/lang/String;Lcom/uc/rmbsdk/export/IRmbMessageListener;)V

    return-void
.end method

.method private upload()V
    .locals 2

    .line 326
    invoke-static {}, Lcom/uc/sdk/ulog/ULogSetup;->with()Lcom/uc/sdk/ulog/ULogSetup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/sdk/ulog/ULogSetup;->flushToDisk()V

    .line 327
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->with()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object v0

    invoke-static {}, Lcom/ulog/uploader/utils/ULogDateUtils;->today()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ulog/uploader/ULogUploadSetup;->uploadAllULog(Ljava/util/Date;)V

    return-void
.end method

.method public static uploadULogForCmd(I)V
    .locals 2

    .line 399
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    neg-int p0, p0

    const/4 v1, 0x5

    .line 400
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 401
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/ulog/uploader/utils/ULogDateUtils;->dateOfFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"process\":\"All\",\"w_triggerid\":\"feedback\",\"begin_time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "00\",\"net\":\"all\",\"to_time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "24\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start upload for cmd, detail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ULogCMD"

    invoke-static {v1, v0}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->uploadULogForPush(Ljava/lang/String;)V

    return-void
.end method

.method public static uploadULogForPush(Ljava/lang/String;)V
    .locals 2

    .line 410
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/ailabs/genie/logger/service/LogService$8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/logger/service/LogService$8;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "LogService"

    const-string v0, "onBind"

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->mBinder:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "LogService"

    const-string v1, "onCreate"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, p0}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 2

    .line 148
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 149
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string v0, "LogService"

    const-string v1, "onStartCommand"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "day"

    .line 134
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 137
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->uploadULogForCmd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "error upload cmd!"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
