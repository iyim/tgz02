.class public Lcom/taobao/tao/log/TLogInitializer;
.super Ljava/lang/Object;
.source "TLogInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/log/TLogInitializer$SingletonHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DIR:Ljava/lang/String; = "logs"

.field public static final INIT_END:I = 0x2

.field public static final INIT_ING:I = 0x1

.field public static final INIT_NO:I = 0x0

.field private static final NAMEPREFIX:Ljava/lang/String; = "TAOBAO"

.field private static final TAG:Ljava/lang/String; = "TLOG.TLogInitializer"


# instance fields
.field public accsServiceId:Ljava/lang/String;

.field public accsTag:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private application:Landroid/app/Application;

.field private authCode:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private debugByUsr:Z

.field public fileUploaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/log/uploader/service/TLogFileUploader;",
            ">;"
        }
    .end annotation
.end field

.field private isDebug:Z

.field private isVersionUpdate:Z

.field public logDir:Ljava/io/File;

.field private logLevel:Lcom/taobao/tao/log/LogLevel;

.field private logUploader:Lcom/taobao/tao/log/upload/LogUploader;

.field private volatile mInitState:I

.field private mInitSync:Z

.field private mOnTrackTLogListener:Lcom/taobao/tao/log/OnTrackTLogListener;

.field private mRandomSecret:Ljava/lang/String;

.field public messageHostName:Ljava/lang/String;

.field private messageSender:Lcom/taobao/tao/log/message/MessageSender;

.field private namePrefix:Ljava/lang/String;

.field public ossBucketName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private processName:Ljava/lang/String;

.field private storeLogOnInternal:Z

.field private tLogMonitor:Lcom/taobao/tao/log/monitor/TLogMonitor;

.field private ttid:Ljava/lang/String;

.field private userNick:Ljava/lang/String;

.field private utdid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->isDebug:Z

    const-string v1, ""

    .line 54
    iput-object v1, p0, Lcom/taobao/tao/log/TLogInitializer;->packageName:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/taobao/tao/log/TLogInitializer;->appVersion:Ljava/lang/String;

    const-string v2, "bbbbbbbbbbbbbbbbb"

    .line 56
    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->utdid:Ljava/lang/String;

    const-string v2, "-"

    .line 57
    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->ttid:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/taobao/tao/log/TLogInitializer;->userNick:Ljava/lang/String;

    .line 59
    sget-object v2, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->logLevel:Lcom/taobao/tao/log/LogLevel;

    .line 62
    iput-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->debugByUsr:Z

    .line 63
    iput-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->mInitSync:Z

    .line 66
    iput v0, p0, Lcom/taobao/tao/log/TLogInitializer;->mInitState:I

    const-string v2, "ha-remote-log"

    .line 69
    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    const-string v2, "adash.emas-ha.cn"

    .line 70
    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->messageHostName:Ljava/lang/String;

    const-string v2, "emas-ha"

    .line 71
    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->accsServiceId:Ljava/lang/String;

    const/4 v2, 0x0

    .line 72
    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->accsTag:Ljava/lang/String;

    .line 75
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/tao/log/TLogInitializer;->fileUploaderMap:Ljava/util/Map;

    .line 82
    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->logUploader:Lcom/taobao/tao/log/upload/LogUploader;

    .line 84
    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->messageSender:Lcom/taobao/tao/log/message/MessageSender;

    .line 87
    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->tLogMonitor:Lcom/taobao/tao/log/monitor/TLogMonitor;

    .line 93
    iput-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->isVersionUpdate:Z

    .line 94
    iput-object v1, p0, Lcom/taobao/tao/log/TLogInitializer;->authCode:Ljava/lang/String;

    .line 95
    iput-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->storeLogOnInternal:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/tao/log/TLogInitializer$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/taobao/tao/log/TLogInitializer;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/tao/log/TLogInitializer;
    .locals 1

    .line 105
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer$SingletonHolder;->access$100()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    return-object v0
.end method

.method public static getTLogControler()Lcom/taobao/tao/log/ITLogController;
    .locals 1

    .line 464
    invoke-static {}, Lcom/taobao/tao/log/TLogController;->getInstance()Lcom/taobao/tao/log/TLogController;

    move-result-object v0

    return-object v0
.end method

.method public static getUTDID()Ljava/lang/String;
    .locals 1

    .line 532
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/tao/log/TLogInitializer;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method private godeyeInit()V
    .locals 3

    .line 179
    invoke-static {}, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->getInstance()Lcom/taobao/tao/log/godeye/GodeyeInitializer;

    move-result-object v0

    new-instance v1, Lcom/taobao/tao/log/task/MethodTraceReplyTask;

    invoke-direct {v1}, Lcom/taobao/tao/log/task/MethodTraceReplyTask;-><init>()V

    const-string v2, "RDWP_METHOD_TRACE_DUMP"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->registGodEyeReponse(Ljava/lang/String;Lcom/taobao/tao/log/godeye/core/GodEyeReponse;)V

    .line 180
    invoke-static {}, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->getInstance()Lcom/taobao/tao/log/godeye/GodeyeInitializer;

    move-result-object v0

    new-instance v1, Lcom/taobao/tao/log/task/HeapDumpReplyTask;

    invoke-direct {v1}, Lcom/taobao/tao/log/task/HeapDumpReplyTask;-><init>()V

    const-string v2, "RDWP_HEAP_DUMP"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->registGodEyeReponse(Ljava/lang/String;Lcom/taobao/tao/log/godeye/core/GodEyeReponse;)V

    .line 182
    new-instance v0, Lcom/taobao/tao/log/godeye/GodeyeConfig;

    invoke-direct {v0}, Lcom/taobao/tao/log/godeye/GodeyeConfig;-><init>()V

    .line 183
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/tao/log/godeye/GodeyeConfig;->appVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 184
    iput-object v1, v0, Lcom/taobao/tao/log/godeye/GodeyeConfig;->packageTag:Ljava/lang/String;

    .line 185
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getUTDID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/tao/log/godeye/GodeyeConfig;->utdid:Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/tao/log/godeye/GodeyeConfig;->appId:Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/tao/log/godeye/GodeyeConfig;->processName:Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {}, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->getInstance()Lcom/taobao/tao/log/godeye/GodeyeInitializer;

    move-result-object v1

    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/log/TLogInitializer;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->init(Landroid/app/Application;Lcom/taobao/tao/log/godeye/GodeyeConfig;)V

    :cond_0
    return-void
.end method

.method private isAPKDebug(Landroid/content/Context;)Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->debugByUsr:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/taobao/tao/log/TLogInitializer;->isDebug:Z

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 555
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 556
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public builder(Landroid/content/Context;Lcom/taobao/tao/log/LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 198
    iget v0, p0, Lcom/taobao/tao/log/TLogInitializer;->mInitState:I

    if-eqz v0, :cond_0

    return-object p0

    .line 199
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/tao/log/TLogInitializer;->isAPKDebug(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->isDebug:Z

    .line 200
    iput-object p2, p0, Lcom/taobao/tao/log/TLogInitializer;->logLevel:Lcom/taobao/tao/log/LogLevel;

    .line 201
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->context:Landroid/content/Context;

    .line 202
    iput-object p5, p0, Lcom/taobao/tao/log/TLogInitializer;->appkey:Ljava/lang/String;

    .line 203
    iput-object p6, p0, Lcom/taobao/tao/log/TLogInitializer;->appVersion:Ljava/lang/String;

    .line 205
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p4, "TAOBAO"

    :cond_1
    iput-object p4, p0, Lcom/taobao/tao/log/TLogInitializer;->namePrefix:Ljava/lang/String;

    .line 207
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p3, "logs"

    .line 208
    :cond_2
    iget-boolean p2, p0, Lcom/taobao/tao/log/TLogInitializer;->storeLogOnInternal:Z

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    .line 209
    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->logDir:Ljava/io/File;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 214
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p5

    .line 216
    invoke-virtual {p5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez p2, :cond_4

    .line 218
    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    :cond_4
    iput-object p2, p0, Lcom/taobao/tao/log/TLogInitializer;->logDir:Ljava/io/File;

    :goto_1
    return-object p0
.end method

.method public changeRsaPublishKey(Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 1

    if-eqz p1, :cond_0

    .line 288
    invoke-static {}, Lcom/taobao/android/tlog/protocol/TLogSecret;->getInstance()Lcom/taobao/android/tlog/protocol/TLogSecret;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/android/tlog/protocol/TLogSecret;->setRsapublickey(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/tao/log/TLogInitializer;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->appId:Ljava/lang/String;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->application:Landroid/app/Application;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->logDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitState()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/taobao/tao/log/TLogInitializer;->mInitState:I

    return v0
.end method

.method public getLogUploader()Lcom/taobao/tao/log/upload/LogUploader;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->logUploader:Lcom/taobao/tao/log/upload/LogUploader;

    return-object v0
.end method

.method public getMessageSender()Lcom/taobao/tao/log/message/MessageSender;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->messageSender:Lcom/taobao/tao/log/message/MessageSender;

    return-object v0
.end method

.method public getNameprefix()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->namePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getOnTrackTLogListener()Lcom/taobao/tao/log/OnTrackTLogListener;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->mOnTrackTLogListener:Lcom/taobao/tao/log/OnTrackTLogListener;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityKey()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->mRandomSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->tLogMonitor:Lcom/taobao/tao/log/monitor/TLogMonitor;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Lcom/taobao/tao/log/monitor/DefaultTLogMonitorImpl;

    invoke-direct {v0}, Lcom/taobao/tao/log/monitor/DefaultTLogMonitorImpl;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->tLogMonitor:Lcom/taobao/tao/log/monitor/TLogMonitor;

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->tLogMonitor:Lcom/taobao/tao/log/monitor/TLogMonitor;

    return-object v0
.end method

.method public init()Lcom/taobao/tao/log/TLogInitializer;
    .locals 9

    const-string/jumbo v0, "tlog_isDebug"

    const-string/jumbo v1, "tlog_module"

    const-string/jumbo v2, "tlog_level"

    const-string/jumbo v3, "tlog_version"

    .line 113
    iget v4, p0, Lcom/taobao/tao/log/TLogInitializer;->mInitState:I

    if-eqz v4, :cond_0

    return-object p0

    :cond_0
    const/4 v4, 0x1

    .line 116
    iput v4, p0, Lcom/taobao/tao/log/TLogInitializer;->mInitState:I

    const/4 v5, 0x0

    .line 119
    :try_start_0
    iget-object v6, p0, Lcom/taobao/tao/log/TLogInitializer;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 120
    invoke-interface {v6, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 122
    invoke-interface {v6, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 123
    iget-object v7, p0, Lcom/taobao/tao/log/TLogInitializer;->appVersion:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    iput-boolean v5, p0, Lcom/taobao/tao/log/TLogInitializer;->isVersionUpdate:Z

    goto :goto_0

    .line 126
    :cond_1
    iput-boolean v4, p0, Lcom/taobao/tao/log/TLogInitializer;->isVersionUpdate:Z

    goto :goto_0

    .line 129
    :cond_2
    iput-boolean v4, p0, Lcom/taobao/tao/log/TLogInitializer;->isVersionUpdate:Z

    .line 132
    :goto_0
    invoke-interface {v6, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/taobao/tao/log/TLogInitializer;->isVersionUpdate:Z

    if-nez v3, :cond_3

    const-string v3, "ERROR"

    .line 133
    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v2}, Lcom/taobao/tao/log/TLogUtils;->convertLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->logLevel:Lcom/taobao/tao/log/LogLevel;

    .line 135
    invoke-static {}, Lcom/taobao/tao/log/TLogController;->getInstance()Lcom/taobao/tao/log/TLogController;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/tao/log/TLogInitializer;->logLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v2, v3}, Lcom/taobao/tao/log/TLogController;->updateLogLevel(Lcom/taobao/tao/log/LogLevel;)V

    .line 138
    :cond_3
    invoke-interface {v6, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/taobao/tao/log/TLogInitializer;->isVersionUpdate:Z

    if-nez v2, :cond_4

    .line 139
    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/taobao/tao/log/TLogUtils;->makeModule(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 141
    invoke-static {}, Lcom/taobao/tao/log/TLogController;->getInstance()Lcom/taobao/tao/log/TLogController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/tao/log/TLogController;->addModuleFilter(Ljava/util/Map;)V

    .line 144
    :cond_4
    invoke-interface {v6, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    invoke-interface {v6, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->isDebug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/tao/log/TLogInitializer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/taobao/tao/log/TLogInitializer;->logLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/taobao/tao/log/TLogInitializer;->logDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/tao/log/TLogInitializer;->namePrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/tao/log/TLogInitializer;->appkey:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/taobao/tao/log/TLogNative;->appenderOpen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/taobao/tao/log/TLogNative;->isSoOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    :try_start_1
    invoke-static {v5}, Lcom/taobao/tao/log/TLogNative;->setConsoleLogOpen(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    :cond_6
    :goto_2
    invoke-static {}, Lcom/taobao/tao/log/TLogController;->getInstance()Lcom/taobao/tao/log/TLogController;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tao/log/TLogInitializer;->logLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v0, v1}, Lcom/taobao/tao/log/TLogController;->updateLogLevel(Lcom/taobao/tao/log/LogLevel;)V

    .line 161
    invoke-static {}, Lcom/taobao/tao/log/task/CommandManager;->getInstance()Lcom/taobao/tao/log/task/CommandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/task/CommandManager;->init()V

    const/4 v0, 0x2

    .line 162
    iput v0, p0, Lcom/taobao/tao/log/TLogInitializer;->mInitState:I

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tlog init end !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/log/TLogInitializer;->logLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tlog"

    const-string v2, "init"

    invoke-static {v1, v2, v0}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->mInitSync:Z

    if-nez v0, :cond_7

    .line 165
    invoke-static {}, Lcom/taobao/tao/log/TLogController;->getInstance()Lcom/taobao/tao/log/TLogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogController;->updateAsyncConfig()V

    .line 169
    :cond_7
    invoke-direct {p0}, Lcom/taobao/tao/log/TLogInitializer;->godeyeInit()V

    return-object p0
.end method

.method public isDebugable()Z
    .locals 1

    .line 549
    iget-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->isDebug:Z

    return v0
.end method

.method public isInitSync()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->mInitSync:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setApplication(Landroid/app/Application;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->application:Landroid/app/Application;

    return-object p0
.end method

.method public setAuthCode(Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public setDebugMode(Z)Lcom/taobao/tao/log/TLogInitializer;
    .locals 1

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/taobao/tao/log/TLogInitializer;->debugByUsr:Z

    .line 406
    iput-boolean p1, p0, Lcom/taobao/tao/log/TLogInitializer;->isDebug:Z

    return-object p0
.end method

.method public setInitSync(Z)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 416
    iput-boolean p1, p0, Lcom/taobao/tao/log/TLogInitializer;->mInitSync:Z

    return-object p0
.end method

.method public setLogUploader(Lcom/taobao/tao/log/upload/LogUploader;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->logUploader:Lcom/taobao/tao/log/upload/LogUploader;

    return-object p0
.end method

.method public setMessageSender(Lcom/taobao/tao/log/message/MessageSender;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 1

    .line 299
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->messageSender:Lcom/taobao/tao/log/message/MessageSender;

    .line 300
    iget-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->messageSender:Lcom/taobao/tao/log/message/MessageSender;

    if-eqz p1, :cond_0

    .line 302
    new-instance p1, Lcom/taobao/tao/log/message/MessageInfo;

    invoke-direct {p1}, Lcom/taobao/tao/log/message/MessageInfo;-><init>()V

    .line 303
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->context:Landroid/content/Context;

    iput-object v0, p1, Lcom/taobao/tao/log/message/MessageInfo;->context:Landroid/content/Context;

    .line 304
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/tao/log/message/MessageInfo;->appKey:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->accsServiceId:Ljava/lang/String;

    iput-object v0, p1, Lcom/taobao/tao/log/message/MessageInfo;->accsServiceId:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->messageSender:Lcom/taobao/tao/log/message/MessageSender;

    invoke-interface {v0, p1}, Lcom/taobao/tao/log/message/MessageSender;->init(Lcom/taobao/tao/log/message/MessageInfo;)V

    .line 309
    invoke-static {}, Lcom/taobao/tao/log/task/StartUpRequestTask;->execute()V

    .line 312
    invoke-static {}, Lcom/taobao/tao/log/task/PullTask;->getInstance()Lcom/taobao/tao/log/task/PullTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/task/PullTask;->start()V

    :cond_0
    return-object p0
.end method

.method public setOnTrackTLogListener(Lcom/taobao/tao/log/OnTrackTLogListener;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->mOnTrackTLogListener:Lcom/taobao/tao/log/OnTrackTLogListener;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setProcessName(Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public setSecurityKey(Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->mRandomSecret:Ljava/lang/String;

    return-object p0
.end method

.method public setTLogUserDefineUploader(Ljava/lang/String;Lcom/taobao/tao/log/uploader/service/TLogFileUploader;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->fileUploaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "TLOG.TLogInitializer"

    const-string/jumbo v0, "regist tlog user define uploader error"

    .line 354
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public setTTid(Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->ttid:Ljava/lang/String;

    return-object p0
.end method

.method public setTaoBaoMessageSender(Lcom/taobao/tao/log/message/MessageSender;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 1

    .line 318
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->messageSender:Lcom/taobao/tao/log/message/MessageSender;

    .line 319
    iget-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->messageSender:Lcom/taobao/tao/log/message/MessageSender;

    if-eqz p1, :cond_0

    .line 321
    new-instance p1, Lcom/taobao/tao/log/message/MessageInfo;

    invoke-direct {p1}, Lcom/taobao/tao/log/message/MessageInfo;-><init>()V

    .line 322
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->context:Landroid/content/Context;

    iput-object v0, p1, Lcom/taobao/tao/log/message/MessageInfo;->context:Landroid/content/Context;

    .line 323
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/tao/log/message/MessageInfo;->appKey:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->accsServiceId:Ljava/lang/String;

    iput-object v0, p1, Lcom/taobao/tao/log/message/MessageInfo;->accsServiceId:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->messageSender:Lcom/taobao/tao/log/message/MessageSender;

    invoke-interface {v0, p1}, Lcom/taobao/tao/log/message/MessageSender;->init(Lcom/taobao/tao/log/message/MessageInfo;)V

    :cond_0
    return-object p0
.end method

.method public setUserNick(Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->userNick:Ljava/lang/String;

    return-object p0
.end method

.method public setUtdid(Ljava/lang/String;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->utdid:Ljava/lang/String;

    return-object p0
.end method

.method public settLogMonitor(Lcom/taobao/tao/log/monitor/TLogMonitor;)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->tLogMonitor:Lcom/taobao/tao/log/monitor/TLogMonitor;

    return-object p0
.end method

.method public startUpAndPull()Lcom/taobao/tao/log/TLogInitializer;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->messageSender:Lcom/taobao/tao/log/message/MessageSender;

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Lcom/taobao/tao/log/task/StartUpRequestTask;->execute()V

    .line 336
    invoke-static {}, Lcom/taobao/tao/log/task/PullTask;->getInstance()Lcom/taobao/tao/log/task/PullTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/task/PullTask;->start()V

    :cond_0
    return-object p0
.end method

.method public startUpSampling(Ljava/lang/Integer;)V
    .locals 0

    .line 455
    invoke-static {p1}, Lcom/taobao/tao/log/task/StartUpRequestTask;->updateSample(Ljava/lang/Integer;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateLogLevel(Ljava/lang/String;)V
    .locals 1

    .line 436
    :try_start_0
    invoke-static {p1}, Lcom/taobao/tao/log/TLogUtils;->convertLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/log/TLogInitializer;->logLevel:Lcom/taobao/tao/log/LogLevel;

    .line 437
    invoke-static {}, Lcom/taobao/tao/log/TLogController;->getInstance()Lcom/taobao/tao/log/TLogController;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/tao/log/TLogInitializer;->logLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {p1, v0}, Lcom/taobao/tao/log/TLogController;->setLogLevel(Lcom/taobao/tao/log/LogLevel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public useDataStoreLog(Z)Lcom/taobao/tao/log/TLogInitializer;
    .locals 0

    .line 395
    iput-boolean p1, p0, Lcom/taobao/tao/log/TLogInitializer;->storeLogOnInternal:Z

    return-object p0
.end method
