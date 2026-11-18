.class public Lcom/taobao/tao/log/upload/LogFileUploadManager;
.super Ljava/lang/Object;
.source "LogFileUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;
    }
.end annotation


# static fields
.field private static final RENAME_FILE:I = 0x4

.field private static TAG:Ljava/lang/String; = "TLog.LogFileUploadManager"

.field private static final UPLOAD_CANCEL:I = 0x3

.field private static final UPLOAD_FINISH:I = 0x2


# instance fields
.field public isForceUpload:Z

.field private isUploading:Z

.field private mContext:Landroid/content/Context;

.field private mExtData:Lcom/alibaba/fastjson/JSONObject;

.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field public mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

.field public tokenInfos:[Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

.field public tokenType:Ljava/lang/String;

.field public uploadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isUploading:Z

    .line 68
    iput-boolean v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mContext:Landroid/content/Context;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/tao/log/upload/LogFileUploadManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadFinishHandler()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/taobao/tao/log/upload/LogFileUploadManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadCancelHandler()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/tao/log/upload/LogFileUploadManager;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/tao/log/upload/LogFileUploadManager;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkNetworkIsWifi()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/tao/log/TLogUtils;->checkNetworkIsWifi(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private filePathUpload(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/tao/log/upload/FileUploadListener;)V
    .locals 5
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

    const-string v0, "exception"

    .line 741
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6587\u4ef6\u4e0a\u4f20\uff1a\u89e6\u53d1\u4e3b\u52a8\u4e0a\u4f20\u6587\u4ef6\uff0c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-static/range {p1 .. p6}, Lcom/taobao/tao/log/task/ApplyUploadFileRequestTask;->execute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/tao/log/upload/FileUploadListener;)V

    return-void

    .line 742
    :cond_1
    :goto_0
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "unSupport type :"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p4, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isForceUpload:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p4, v0, p2}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private finish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 360
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadFinish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 361
    iget-object p2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p2, :cond_1

    .line 362
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 363
    iget-object p2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 366
    :cond_1
    sget-object p2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and quit the handlerThread!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TLOG"

    invoke-static {p3, p2, p1}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 367
    iput-boolean p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    .line 368
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/tao/log/TLogInitializer;->getFileDir()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "tmp"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-static {p1}, Lcom/taobao/tao/log/TLogUtils;->cleanDir(Ljava/io/File;)Z

    return-void
.end method

.method private getFileContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->tokenInfos:[Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    if-eqz v0, :cond_1

    .line 115
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 116
    iget-object v4, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->fileInfo:Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->fileInfo:Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;

    iget-object v4, v4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->absolutePath:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    iget-object p1, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->fileInfo:Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;

    iget-object p1, p1, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->contentType:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPrefixName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 473
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTokenParam(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->tokenInfos:[Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;

    if-eqz v0, :cond_2

    .line 88
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 89
    iget-object v4, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->fileInfo:Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->fileInfo:Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;

    iget-object v4, v4, Lcom/taobao/android/tlog/protocol/model/request/base/FileInfo;->absolutePath:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-virtual {v3}, Lcom/taobao/android/tlog/protocol/model/reply/base/UploadTokenInfo;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "unknown"

    const-string v6, "1"

    const-string v7, "404"

    const-string/jumbo v8, "tokenNotFound"

    move-object v3, p0

    move-object v4, p1

    .line 103
    invoke-virtual/range {v3 .. v8}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private init()V
    .locals 3

    .line 147
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "tlog_uploadfiles"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 148
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 149
    new-instance v0, Lcom/taobao/tao/log/upload/LogFileUploadManager$1;

    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/tao/log/upload/LogFileUploadManager$1;-><init>(Lcom/taobao/tao/log/upload/LogFileUploadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private persistTask()V
    .locals 5

    .line 376
    sget-object v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[persistTask] there is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " task!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TLOG"

    invoke-static {v2, v0, v1}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 377
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 381
    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 386
    iget-object v4, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "tlog_upload_files"

    .line 388
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 389
    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object v1, v1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->userId:Ljava/lang/String;

    const-string/jumbo v2, "userId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object v1, v1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->serviceId:Ljava/lang/String;

    const-string/jumbo v2, "serviceId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object v2, v2, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "serialNumber"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mExtData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_2

    .line 393
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tlog_upload_extdata"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 395
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private preFixUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/tao/log/upload/FileUploadListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 717
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getNameprefix()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 720
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/tao/log/TLogUtils;->getDays(Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 721
    invoke-static {v0, v2, v1}, Lcom/taobao/tao/log/TLogUtils;->getFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 722
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "tlog"

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 730
    invoke-direct/range {v3 .. v9}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->filePathUpload(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/tao/log/upload/FileUploadListener;)V

    return-void

    .line 723
    :cond_1
    :goto_0
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "uploadFile failure, file path is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "null == pathList || pathList.isEmpty(), "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isForceUpload:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p3, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private remotePersistTask()V
    .locals 3

    .line 403
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "tlog_upload_files"

    .line 405
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "userId"

    .line 406
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "serviceId"

    .line 407
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "serialNumber"

    .line 408
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "taskId"

    .line 409
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "tlog_upload_type"

    .line 410
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "tlog_upload_extdata"

    .line 411
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private uploadCancelHandler()V
    .locals 4

    .line 177
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getLogUploader()Lcom/taobao/tao/log/upload/LogUploader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Lcom/taobao/tao/log/upload/LogUploader;->cancel()V

    goto :goto_0

    .line 181
    :cond_0
    sget-object v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "you need impl file uploader "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    sget-object v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string v1, "TLOG"

    const-string v2, "Cancel : the mCurrentUploadFileInfo is null !"

    invoke-static {v1, v0, v2}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->persistTask()V

    const/4 v0, 0x0

    const-string/jumbo v1, "\u7f51\u7edc\u72b6\u6001\u53d8\u66f4\uff0c\u4e0d\u7b26\u5408\u4e0a\u4f20\u65e5\u5fd7\u6761\u4ef6\u505c\u6b62\u4e0a\u4f20\uff01"

    const-string v2, "5"

    const-string v3, ""

    .line 186
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->finish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private uploadFinishHandler()V
    .locals 12

    .line 193
    invoke-direct {p0}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->checkNetworkIsWifi()Z

    move-result v0

    const-string v1, " isForceUpload:"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->persistTask()V

    const-string/jumbo v0, "\u7f51\u8def\u72b6\u6001\u4e0d\u7b26\u5408\u4e0a\u4f20\u6761\u4ef6\uff01"

    const-string v3, "5"

    const-string v4, ""

    .line 195
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->finish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6587\u4ef6\u4e0a\u4f20\uff1a\u7f51\u8def\u72b6\u6001\u4e0d\u7b26\u5408\u4e0a\u4f20\u6761\u4ef6,uploadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 203
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6587\u4ef6\u4e0a\u4f20\uff1afile size <= 0,uploadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    move-object v3, v0

    .line 208
    :goto_0
    iget-object v4, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 209
    iget-object v3, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 210
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    .line 215
    :cond_2
    iget-object v5, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 216
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 222
    :cond_3
    iget-object v4, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 223
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6587\u4ef6\u4e0a\u4f20\uff1afile size == 0,uploadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 229
    :cond_4
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v1

    sget-object v4, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD_COUNT:Ljava/lang/String;

    const-string v5, "MSG LOG UPLOAD COUNT"

    const-string/jumbo v6, "\u6587\u4ef6\u4e0a\u4f20\uff1a\u4e0a\u4f20\u6587\u4ef6"

    invoke-interface {v1, v4, v5, v6}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->getLogUploader()Lcom/taobao/tao/log/upload/LogUploader;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 234
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v4

    sget-object v5, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v6, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u6587\u4ef6\u4e0a\u4f20\uff1a\u6821\u9a8c\u901a\u8fc7\uff0c\u5f00\u59cb\u6267\u884c\u6587\u4ef6\u4e0a\u4f20,uploadId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v4, Lcom/taobao/tao/log/upload/UploaderParam;

    invoke-direct {v4}, Lcom/taobao/tao/log/upload/UploaderParam;-><init>()V

    .line 238
    iget-object v5, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    invoke-virtual {v4, v5}, Lcom/taobao/tao/log/upload/UploaderParam;->build(Lcom/taobao/android/tlog/protocol/model/CommandInfo;)V

    .line 239
    iget-object v5, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mContext:Landroid/content/Context;

    iput-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->context:Landroid/content/Context;

    .line 240
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/tao/log/TLogInitializer;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->appVersion:Ljava/lang/String;

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/tao/log/TLogInitializer;->getFileDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->logFilePathTmp:Ljava/lang/String;

    .line 242
    invoke-direct {p0, v3}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->getTokenParam(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    .line 243
    invoke-direct {p0, v3}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->getFileContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->fileContentType:Ljava/lang/String;

    .line 247
    invoke-interface {v1}, Lcom/taobao/tao/log/upload/LogUploader;->getUploadInfo()Lcom/taobao/tao/log/upload/UploaderInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v6, "oss"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "ossEndpoint"

    const-string v7, "ossObjectKey"

    const-string v8, "ossBucketName"

    if-eqz v5, :cond_7

    .line 248
    iget-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    if-eqz v5, :cond_5

    .line 249
    iget-object v0, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    iget-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 252
    :cond_5
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v5

    sget-object v6, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v7, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u6587\u4ef6\u4e0a\u4f20\uff1aoss->params is null, uploadId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v7, v9}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    .line 256
    :goto_1
    iget-object v6, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 258
    iget-object v6, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v7

    iget-object v7, v7, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    move-object v10, v0

    move-object v11, v5

    goto/16 :goto_5

    .line 260
    :cond_7
    invoke-interface {v1}, Lcom/taobao/tao/log/upload/LogUploader;->getUploadInfo()Lcom/taobao/tao/log/upload/UploaderInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v9, "arup"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 261
    iget-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    if-eqz v5, :cond_8

    .line 262
    iget-object v0, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    iget-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    .line 265
    :cond_8
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v5

    sget-object v6, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v7, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u6587\u4ef6\u4e0a\u4f20\uff1aarup->params is null, uploadId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v7, v9}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    .line 270
    :goto_3
    iget-object v6, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 272
    iget-object v6, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v7

    iget-object v7, v7, Lcom/taobao/tao/log/TLogInitializer;->ossBucketName:Ljava/lang/String;

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 274
    :cond_9
    invoke-interface {v1}, Lcom/taobao/tao/log/upload/LogUploader;->getUploadInfo()Lcom/taobao/tao/log/upload/UploaderInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    const-string v6, "ceph"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 276
    iget-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    if-eqz v5, :cond_a

    .line 278
    iget-object v0, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    const-string v5, "objectKey"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    iget-object v5, v4, Lcom/taobao/tao/log/upload/UploaderParam;->params:Ljava/util/Map;

    const-string v6, "endpoint"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto/16 :goto_2

    .line 281
    :cond_a
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v5

    sget-object v6, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v7, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u6587\u4ef6\u4e0a\u4f20\uff1aceph->params is null, uploadId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 285
    :cond_b
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v5

    sget-object v6, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v7, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u6587\u4ef6\u4e0a\u4f20\uff1anot support this type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-interface {v1}, Lcom/taobao/tao/log/upload/LogUploader;->getUploadInfo()Lcom/taobao/tao/log/upload/UploaderInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/taobao/tao/log/upload/UploaderInfo;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", uploadId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 285
    invoke-interface {v5, v6, v7, v8}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v10, v0

    move-object v11, v10

    .line 290
    :goto_5
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v5, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v6, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u6587\u4ef6\u4e0a\u4f20\uff1a\u6821\u9a8c\u901a\u8fc7\uff0c\u8c03\u7528\u4e0a\u4f20\u901a\u9053,uploadId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v5, v6, v7}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;

    iget-object v9, v4, Lcom/taobao/tao/log/upload/UploaderParam;->fileContentType:Ljava/lang/String;

    move-object v6, v0

    move-object v7, p0

    move-object v8, v3

    invoke-direct/range {v6 .. v11}, Lcom/taobao/tao/log/upload/LogFileUploadManager$TLogUploadListener;-><init>(Lcom/taobao/tao/log/upload/LogFileUploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4, v3, v0}, Lcom/taobao/tao/log/upload/LogUploader;->startUpload(Lcom/taobao/tao/log/upload/UploaderParam;Ljava/lang/String;Lcom/taobao/tao/log/upload/FileUploadListener;)V

    goto :goto_6

    .line 294
    :cond_c
    sget-object v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "you need impl file uploader "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v4, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6587\u4ef6\u4e0a\u4f20\uff1a\u6ca1\u6709\u5b9e\u73b0\u6587\u4ef6\u4e0a\u4f20\u901a\u9053,uploadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_6
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current upload task has finished and to upload next -->  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TLOG"

    invoke-static {v2, v0, v1}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    .line 331
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addFiles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_2

    .line 313
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cancelUploadTask()V
    .locals 3

    .line 446
    iget-boolean v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isUploading:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const-string v1, "TLOG"

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    sget-object v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string v2, " The thread isAlive!"

    invoke-static {v1, v0, v2}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    sget-object v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string v2, "The ConnectionChangeReceiver to sendEmptyMessage(UPLOAD_CANCEL)"

    invoke-static {v1, v0, v2}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public flushFinish(Z)V
    .locals 1

    .line 439
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 440
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    .line 441
    iput-boolean p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isUploading:Z

    :cond_0
    return-void
.end method

.method public getUploadTaskCount()I
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUploading()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isUploading:Z

    return v0
.end method

.method public renameFileNotification(ZLjava/lang/String;)V
    .locals 1

    .line 462
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 463
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x4

    .line 464
    iput v0, p1, Landroid/os/Message;->what:I

    .line 465
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 466
    iget-object p2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public startUpload()V
    .locals 5

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogFileUploadManager.startUpload uploadId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tlog-debug"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->init()V

    :cond_1
    const/4 v0, 0x1

    .line 134
    invoke-static {v0}, Lcom/taobao/tao/log/TLogNative;->appenderFlush(Z)V

    .line 135
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v1, "There is not files to upload!"

    const-string v2, "3"

    const-string v3, ""

    .line 137
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadFinish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_HANDLE:Ljava/lang/String;

    sget-object v2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is not files to upload!\uff0c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public uploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6587\u4ef6\u4e0a\u4f20\uff1a\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25,uploadId="

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    const-string v2, "-"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 490
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p5

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object v1

    sget-object v2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-interface {v1, v2, v3, v0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object v0, v0, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->opCode:Ljava/lang/String;

    const-string v1, "RDWP_APPLY_UPLOAD_TOKEN_REPLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Lcom/taobao/tao/log/task/LogUploadReplyTask;->executeFailure(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 499
    invoke-static {}, Lcom/taobao/tao/log/upload/UploadQueue;->getInstance()Lcom/taobao/tao/log/upload/UploadQueue;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/tao/log/upload/UploadQueue;->popListener(Ljava/lang/String;)Lcom/taobao/tao/log/upload/FileUploadListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 501
    invoke-interface {p1, p3, p5, p4}, Lcom/taobao/tao/log/upload/FileUploadListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 505
    :cond_3
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object v1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/taobao/tao/log/task/ApplyUploadCompleteRequestTask;->executeFailure(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object p1, p1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->requestId:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 508
    invoke-static {}, Lcom/taobao/tao/log/upload/UploadQueue;->getInstance()Lcom/taobao/tao/log/upload/UploadQueue;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object p2, p2, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/taobao/tao/log/upload/UploadQueue;->popListener(Ljava/lang/String;)Lcom/taobao/tao/log/upload/FileUploadListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 510
    invoke-interface {p1, p3, p5, p4}, Lcom/taobao/tao/log/upload/FileUploadListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_4
    :goto_2
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string p2, "TLOG"

    const-string p3, " upload remote file failure!"

    invoke-static {p2, p1, p3}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 517
    iput-boolean p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    .line 518
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/tao/log/TLogInitializer;->getFileDir()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "tmp"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-static {p1}, Lcom/taobao/tao/log/TLogUtils;->cleanDir(Ljava/io/File;)Z

    return-void
.end method

.method public uploadFinish(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 584
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    :cond_0
    const/4 p1, 0x0

    .line 589
    iput-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mExtData:Lcom/alibaba/fastjson/JSONObject;

    .line 591
    :cond_1
    monitor-enter p0

    const/4 p1, 0x0

    .line 592
    :try_start_0
    iput-boolean p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isUploading:Z

    .line 593
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public uploadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 529
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    const-string v1, "-"

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    if-nez p1, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, p1

    .line 531
    :goto_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object v0, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6587\u4ef6\u4e0a\u4f20\uff1a\u6587\u4ef6\u4e0a\u4f20\u6210\u529f,uploadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LogFileUploadManager uploadSuccess... opCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object v0, v0, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->opCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "tlog-debug"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object p1, p1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->opCode:Ljava/lang/String;

    const-string v1, "RDWP_APPLY_UPLOAD_TOKEN_REPLY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_5

    .line 536
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 537
    invoke-static {}, Lcom/taobao/tao/log/upload/UploadQueue;->getInstance()Lcom/taobao/tao/log/upload/UploadQueue;

    move-result-object p1

    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/taobao/tao/log/upload/UploadQueue;->popListener(Ljava/lang/String;)Lcom/taobao/tao/log/upload/FileUploadListener;

    move-result-object p1

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find listener by uploadId, find is null = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 540
    instance-of v0, p1, Lcom/taobao/tao/log/upload/OSSUploadListener;

    if-eqz v0, :cond_3

    .line 541
    move-object v0, p1

    nop

    nop

    .line 542
    iput-object p5, v0, Lcom/taobao/tao/log/upload/OSSUploadListener;->ossEndpoint:Ljava/lang/String;

    .line 543
    iput-object p4, v0, Lcom/taobao/tao/log/upload/OSSUploadListener;->ossObjectKey:Ljava/lang/String;

    .line 545
    :cond_3
    invoke-interface {p1, v4, p3}, Lcom/taobao/tao/log/upload/FileUploadListener;->onSucessed(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    instance-of p1, p1, Lcom/taobao/tao/log/godeye/methodtrace/file/TraceFileUploadListener;

    if-eqz p1, :cond_4

    return-void

    .line 551
    :cond_4
    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object v3, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/taobao/tao/log/task/LogUploadReplyTask;->executeSuccess(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 556
    :cond_5
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object p1, p1, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->requestId:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 557
    invoke-static {}, Lcom/taobao/tao/log/upload/UploadQueue;->getInstance()Lcom/taobao/tao/log/upload/UploadQueue;

    move-result-object p1

    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object v2, v2, Lcom/taobao/android/tlog/protocol/model/CommandInfo;->requestId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/taobao/tao/log/upload/UploadQueue;->popListener(Ljava/lang/String;)Lcom/taobao/tao/log/upload/FileUploadListener;

    move-result-object p1

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find listener by requestId, find is null = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    .line 560
    instance-of v0, p1, Lcom/taobao/tao/log/upload/OSSUploadListener;

    if-eqz v0, :cond_7

    .line 561
    move-object v0, p1

    nop

    nop

    .line 562
    iput-object p5, v0, Lcom/taobao/tao/log/upload/OSSUploadListener;->ossEndpoint:Ljava/lang/String;

    .line 563
    iput-object p4, v0, Lcom/taobao/tao/log/upload/OSSUploadListener;->ossObjectKey:Ljava/lang/String;

    .line 565
    :cond_7
    invoke-interface {p1, v4, p3}, Lcom/taobao/tao/log/upload/FileUploadListener;->onSucessed(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    instance-of p1, p1, Lcom/taobao/tao/log/godeye/methodtrace/file/TraceFileUploadListener;

    if-eqz p1, :cond_8

    return-void

    .line 571
    :cond_8
    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mParmas:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    iget-object v3, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcom/taobao/tao/log/task/ApplyUploadCompleteRequestTask;->executeSuccess(Lcom/taobao/android/tlog/protocol/model/CommandInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :goto_3
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string p2, "TLOG"

    const-string p3, " upload remote file success!"

    invoke-static {p2, p1, p3}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iput-boolean v9, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    .line 578
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/tao/log/TLogInitializer;->getFileDir()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "tmp"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-static {p1}, Lcom/taobao/tao/log/TLogUtils;->cleanDir(Ljava/io/File;)Z

    return-void
.end method

.method public uploadWithFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "exception"

    .line 788
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 794
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string/jumbo v1, "version"

    const-string v2, "1.0"

    .line 795
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appkey"

    .line 796
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appVersion"

    .line 797
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/tao/log/TLogInitializer;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "command"

    const v2, 0xfff4

    .line 798
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 801
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 802
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    const-string v3, "filePath"

    .line 803
    invoke-virtual {v2, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "bizType"

    .line 804
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "type"

    const-string p2, "client"

    .line 805
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "extData"

    .line 806
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-virtual {v2, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 807
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "user"

    .line 810
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/tao/log/TLogInitializer;->getUserNick()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "success"

    const/4 p2, 0x1

    .line 811
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "deviceId"

    .line 812
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getUTDID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 816
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/tao/log/TLogInitializer;->getSecurityKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taobao/tao/log/utils/SimpleCrypto;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 819
    new-instance p2, Lcom/taobao/tao/log/message/MessageInfo;

    invoke-direct {p2}, Lcom/taobao/tao/log/message/MessageInfo;-><init>()V

    .line 820
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->mContext:Landroid/content/Context;

    iput-object v0, p2, Lcom/taobao/tao/log/message/MessageInfo;->context:Landroid/content/Context;

    .line 821
    iput-object p1, p2, Lcom/taobao/tao/log/message/MessageInfo;->content:Ljava/lang/String;

    .line 822
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getAppkey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/taobao/tao/log/message/MessageInfo;->appKey:Ljava/lang/String;

    .line 823
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getTtid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/taobao/tao/log/message/MessageInfo;->ttid:Ljava/lang/String;

    .line 824
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getUTDID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/taobao/tao/log/message/MessageInfo;->deviceId:Ljava/lang/String;

    .line 825
    invoke-static {}, Lcom/taobao/android/tlog/protocol/TLogSecret;->getInstance()Lcom/taobao/android/tlog/protocol/TLogSecret;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/tlog/protocol/TLogSecret;->getRsaMd5Value()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/taobao/tao/log/message/MessageInfo;->publicKeyDigest:Ljava/lang/String;

    .line 827
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getMessageSender()Lcom/taobao/tao/log/message/MessageSender;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, " isForceUpload:"

    if-eqz p1, :cond_2

    .line 829
    :try_start_1
    invoke-interface {p1, p2}, Lcom/taobao/tao/log/message/MessageSender;->sendMsg(Lcom/taobao/tao/log/message/MessageInfo;)Lcom/taobao/tao/log/message/MessageReponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 831
    iget-object p2, p1, Lcom/taobao/tao/log/message/MessageReponse;->result:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 832
    iget-object p2, p1, Lcom/taobao/tao/log/message/MessageReponse;->serviceId:Ljava/lang/String;

    .line 833
    iget-object v0, p1, Lcom/taobao/tao/log/message/MessageReponse;->userId:Ljava/lang/String;

    .line 834
    iget-object v1, p1, Lcom/taobao/tao/log/message/MessageReponse;->dataId:Ljava/lang/String;

    .line 835
    iget-object p1, p1, Lcom/taobao/tao/log/message/MessageReponse;->result:Ljava/lang/String;

    .line 838
    invoke-static {}, Lcom/taobao/tao/log/CommandDataCenter;->getInstance()Lcom/taobao/tao/log/CommandDataCenter;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p2, v0, v1, p1}, Lcom/taobao/tao/log/CommandDataCenter;->onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 840
    :cond_1
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "send request message error,result is null "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageResponse == null || messageResponse.result == null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v1, v0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :cond_2
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "send request message error,you neee impl message sender "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sender == null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v1, v0}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 850
    sget-object p2, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "send request message error "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p2

    sget-object v0, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 789
    :cond_3
    :goto_1
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unSupport type :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uploadWithFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/tao/log/upload/FileUploadListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    if-nez p1, :cond_0

    .line 679
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "you need set file path"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "uploadWithFilePath you need set file path"

    invoke-interface {p1, p2, p3, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 685
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "you need set debugType"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "uploadWithFilePath you need set debugType"

    invoke-interface {p1, p2, p3, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p4, :cond_2

    .line 691
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "you need set bizCode"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "uploadWithFilePath you need set bizCode"

    invoke-interface {p1, p2, p3, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    .line 697
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "you need set bizType"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "uploadWithFilePath you need set bizType"

    invoke-interface {p1, p2, p3, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 704
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 705
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 706
    invoke-direct/range {v0 .. v6}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->filePathUpload(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/tao/log/upload/FileUploadListener;)V

    return-void
.end method

.method public uploadWithFilePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 764
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->getNameprefix()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x1

    .line 766
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/tao/log/TLogUtils;->getDays(Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 767
    invoke-static {p1, v1, v0}, Lcom/taobao/tao/log/TLogUtils;->getFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 768
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 776
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadWithFilePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 769
    :cond_2
    :goto_0
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "uploadFile: ,"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object v0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pathList is null || pathList is Empty, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->uploadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isForceUpload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager;->isForceUpload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uploadWithFilePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/tao/log/upload/FileUploadListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public uploadWithFilePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/tao/log/upload/FileUploadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    if-nez p2, :cond_0

    .line 653
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "you need set bizCode"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "uploadWithFilePrefix you need set bizCode"

    invoke-interface {p1, p2, p3, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 659
    sget-object p1, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "you need set bizType"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/TLogInitializer;->gettLogMonitor()Lcom/taobao/tao/log/monitor/TLogMonitor;

    move-result-object p1

    sget-object p2, Lcom/taobao/tao/log/monitor/TLogStage;->MSG_LOG_UPLOAD:Ljava/lang/String;

    sget-object p3, Lcom/taobao/tao/log/upload/LogFileUploadManager;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "uploadWithFilePrefix you need set bizType"

    invoke-interface {p1, p2, p3, p4}, Lcom/taobao/tao/log/monitor/TLogMonitor;->stageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 666
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->preFixUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/tao/log/upload/FileUploadListener;)V

    return-void
.end method
