.class public Lcom/taobao/downloader/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# static fields
.field protected static downloader:Lcom/taobao/downloader/Downloader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/downloader/Downloader;
    .locals 1

    .line 35
    sget-object v0, Lcom/taobao/downloader/Downloader;->downloader:Lcom/taobao/downloader/Downloader;

    if-nez v0, :cond_2

    .line 37
    new-instance v0, Lcom/taobao/downloader/Downloader;

    invoke-direct {v0}, Lcom/taobao/downloader/Downloader;-><init>()V

    sput-object v0, Lcom/taobao/downloader/Downloader;->downloader:Lcom/taobao/downloader/Downloader;

    .line 39
    sget-object v0, Lcom/taobao/downloader/Configuration;->downloadFactory:Lcom/taobao/downloader/adpater/DownloadFactory;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/taobao/downloader/adpater/impl/SimpleDownloadFactory;

    invoke-direct {v0}, Lcom/taobao/downloader/adpater/impl/SimpleDownloadFactory;-><init>()V

    sput-object v0, Lcom/taobao/downloader/Configuration;->downloadFactory:Lcom/taobao/downloader/adpater/DownloadFactory;

    .line 43
    :cond_0
    sget-object v0, Lcom/taobao/downloader/Configuration;->taskManager:Lcom/taobao/downloader/adpater/TaskManager;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;

    invoke-direct {v0}, Lcom/taobao/downloader/adpater/impl/SimpleTaskManager;-><init>()V

    sput-object v0, Lcom/taobao/downloader/Configuration;->taskManager:Lcom/taobao/downloader/adpater/TaskManager;

    .line 47
    :cond_1
    sget-object v0, Lcom/taobao/downloader/Configuration;->fileCacheManager:Lcom/taobao/downloader/adpater/FileCacheManager;

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Lcom/taobao/downloader/adpater/impl/SimpleFileCacheManager;

    invoke-direct {v0}, Lcom/taobao/downloader/adpater/impl/SimpleFileCacheManager;-><init>()V

    sput-object v0, Lcom/taobao/downloader/Configuration;->fileCacheManager:Lcom/taobao/downloader/adpater/FileCacheManager;

    .line 52
    :cond_2
    sget-object v0, Lcom/taobao/downloader/Downloader;->downloader:Lcom/taobao/downloader/Downloader;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 56
    sput-object p0, Lcom/taobao/downloader/Configuration;->sContext:Landroid/content/Context;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    .line 114
    sget-object v0, Lcom/taobao/downloader/Configuration;->taskManager:Lcom/taobao/downloader/adpater/TaskManager;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/taobao/downloader/adpater/TaskManager;->modifyTask(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public download(Lcom/taobao/downloader/request/DownloadRequest;Lcom/taobao/downloader/request/DownloadListener;)I
    .locals 4

    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "api"

    const-string v3, " invoke download api  {}"

    invoke-static {v2, v3, v0}, Lcom/taobao/downloader/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-object v0, v0, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/downloader/Configuration;->fileCacheManager:Lcom/taobao/downloader/adpater/FileCacheManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    sget-object v2, Lcom/taobao/downloader/Configuration;->fileCacheManager:Lcom/taobao/downloader/adpater/FileCacheManager;

    invoke-interface {v2}, Lcom/taobao/downloader/adpater/FileCacheManager;->getTmpCache()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_4

    .line 74
    invoke-virtual {p1}, Lcom/taobao/downloader/request/DownloadRequest;->validate()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    sget-object v0, Lcom/taobao/downloader/Configuration;->bizPriManager:Lcom/taobao/downloader/adpater/BizPriManager;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    sget-object v1, Lcom/taobao/downloader/Configuration;->bizPriManager:Lcom/taobao/downloader/adpater/BizPriManager;

    iget-object v2, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    invoke-interface {v1, v2}, Lcom/taobao/downloader/adpater/BizPriManager;->getPriBy(Lcom/taobao/downloader/request/Param;)I

    move-result v1

    iput v1, v0, Lcom/taobao/downloader/request/Param;->priority:I

    .line 86
    :cond_2
    new-instance v0, Lcom/taobao/downloader/request/task/TaskParam;

    invoke-direct {v0}, Lcom/taobao/downloader/request/task/TaskParam;-><init>()V

    .line 87
    invoke-static {}, Lcom/taobao/downloader/util/IdGenerator;->nextId()I

    move-result v1

    iput v1, v0, Lcom/taobao/downloader/request/task/TaskParam;->taskId:I

    .line 89
    iget-object v1, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    iput-object v1, v0, Lcom/taobao/downloader/request/task/TaskParam;->userParam:Lcom/taobao/downloader/request/Param;

    .line 90
    iget-object v1, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    iput-object v1, v0, Lcom/taobao/downloader/request/task/TaskParam;->inputItems:Ljava/util/List;

    .line 91
    new-instance v1, Lcom/taobao/downloader/wrapper/ListenerWrapper;

    invoke-direct {v1, p1, p2}, Lcom/taobao/downloader/wrapper/ListenerWrapper;-><init>(Lcom/taobao/downloader/request/DownloadRequest;Lcom/taobao/downloader/request/DownloadListener;)V

    iput-object v1, v0, Lcom/taobao/downloader/request/task/TaskParam;->listener:Lcom/taobao/downloader/request/task/TaskListener;

    .line 93
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v1, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/downloader/request/Item;

    .line 95
    new-instance v3, Lcom/taobao/downloader/request/task/SingleTask;

    invoke-direct {v3}, Lcom/taobao/downloader/request/task/SingleTask;-><init>()V

    .line 96
    iput-object v2, v3, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    .line 97
    iget-object v2, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    iput-object v2, v3, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    .line 98
    iget-object v2, p1, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    iget-object v2, v2, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    iput-object v2, v3, Lcom/taobao/downloader/request/task/SingleTask;->storeDir:Ljava/lang/String;

    .line 99
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_3
    sget-object p1, Lcom/taobao/downloader/Configuration;->taskManager:Lcom/taobao/downloader/adpater/TaskManager;

    invoke-interface {p1, p2, v0}, Lcom/taobao/downloader/adpater/TaskManager;->addTask(Ljava/util/List;Lcom/taobao/downloader/request/task/TaskParam;)V

    .line 104
    iget p1, v0, Lcom/taobao/downloader/request/task/TaskParam;->taskId:I

    return p1

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 76
    invoke-interface {p2, v1}, Lcom/taobao/downloader/request/DownloadListener;->onFinish(Z)V

    :cond_5
    const/4 p1, 0x0

    const-string p2, "add"

    const-string v0, "paramerror"

    .line 78
    invoke-static {p2, v0, p1, p1}, Lcom/taobao/downloader/util/MonitorUtil;->monitorFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x64

    return p1
.end method

.method public fetch(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/downloader/request/DownloadListener;)I
    .locals 1

    .line 152
    sget-object v0, Lcom/taobao/downloader/Configuration;->cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/downloader/request/DownloadRequest;

    invoke-direct {v0, p1}, Lcom/taobao/downloader/request/DownloadRequest;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/taobao/downloader/Configuration;->cloundConfigAdapter:Lcom/taobao/downloader/adpater/CloundConfigAdapter;

    invoke-interface {v0, p1}, Lcom/taobao/downloader/adpater/CloundConfigAdapter;->make(Ljava/lang/String;)Lcom/taobao/downloader/request/DownloadRequest;

    move-result-object v0

    .line 155
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 156
    iget-object p1, v0, Lcom/taobao/downloader/request/DownloadRequest;->downloadParam:Lcom/taobao/downloader/request/Param;

    iput-object p2, p1, Lcom/taobao/downloader/request/Param;->bizId:Ljava/lang/String;

    .line 159
    :cond_1
    invoke-virtual {p0, v0, p3}, Lcom/taobao/downloader/Downloader;->download(Lcom/taobao/downloader/request/DownloadRequest;Lcom/taobao/downloader/request/DownloadListener;)I

    move-result p1

    return p1
.end method

.method public getLocalFile(Ljava/lang/String;Lcom/taobao/downloader/request/Item;)Ljava/lang/String;
    .locals 0

    .line 166
    invoke-static {p1, p2}, Lcom/taobao/downloader/util/FileUtil;->getLocalFile(Ljava/lang/String;Lcom/taobao/downloader/request/Item;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public modify(ILcom/taobao/downloader/request/ModifyParam;)V
    .locals 1

    .line 139
    sget-object v0, Lcom/taobao/downloader/Configuration;->taskManager:Lcom/taobao/downloader/adpater/TaskManager;

    invoke-interface {v0, p1, p2}, Lcom/taobao/downloader/adpater/TaskManager;->modifyTask(ILcom/taobao/downloader/request/ModifyParam;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public resume(I)V
    .locals 2

    .line 128
    sget-object v0, Lcom/taobao/downloader/Configuration;->taskManager:Lcom/taobao/downloader/adpater/TaskManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/taobao/downloader/adpater/TaskManager;->modifyTask(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public suspend(I)V
    .locals 2

    .line 121
    sget-object v0, Lcom/taobao/downloader/Configuration;->taskManager:Lcom/taobao/downloader/adpater/TaskManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/taobao/downloader/adpater/TaskManager;->modifyTask(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
