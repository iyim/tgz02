.class public Lcom/taobao/android/dinamicx/template/loader/DXFileManager;
.super Ljava/lang/Object;
.source "DXFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/template/loader/DXFileManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static filePath:Ljava/io/File;


# instance fields
.field private final fileCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->fileCache:Landroid/util/LruCache;

    return-void
.end method

.method public static getInstance()Lcom/taobao/android/dinamicx/template/loader/DXFileManager;
    .locals 1

    .line 40
    invoke-static {}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager$SingletonHolder;->access$000()Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    move-result-object v0

    return-object v0
.end method

.method private trackerPerform(Ljava/lang/String;J)V
    .locals 9

    long-to-double v6, p2

    const/4 v0, 0x2

    const-string v1, "DinamicX_File"

    const-string v2, "Template"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v3, p1

    .line 130
    invoke-static/range {v0 .. v8}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public clearFileCache()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->fileCache:Landroid/util/LruCache;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->fileCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAssetsPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "template/"

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->filePath:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initFilePath(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string v0, "DinamicX_File"

    const-string v1, "DXFileManager"

    const-string v2, "context is null"

    .line 45
    invoke-static {v0, v1, v2}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->remoteLoge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    sget-object v0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->filePath:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "dinamicx/"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->filePath:Ljava/io/File;

    .line 49
    sget-object p1, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 50
    sget-object p1, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2

    .line 52
    sget-object p1, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-void
.end method

.method public load(Ljava/lang/String;Lcom/taobao/android/dinamicx/DXRuntimeContext;)[B
    .locals 7

    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->fileCache:Landroid/util/LruCache;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    iget-object v3, p0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->fileCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_0

    .line 75
    array-length v4, v3

    if-nez v4, :cond_1

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dinamicx/template/download/DXIOUtils;->readAllBytes(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 77
    array-length v4, v3

    if-lez v4, :cond_1

    .line 78
    iget-object v4, p0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->fileCache:Landroid/util/LruCache;

    invoke-virtual {v4, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v4, "Template_Read"

    .line 81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-direct {p0, v4, v5, v6}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->trackerPerform(Ljava/lang/String;J)V

    .line 82
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v0

    .line 83
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_3

    .line 86
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p2

    iget-object p2, p2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 90
    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0xea74

    const-string v3, "Template"

    const-string v4, "Template_Read"

    invoke-direct {v1, v3, v4, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileNotFound "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_2
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 97
    :goto_0
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public putFileCache(Ljava/lang/String;[B)V
    .locals 2

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 117
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->fileCache:Landroid/util/LruCache;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->fileCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public save(Ljava/lang/String;[B)Z
    .locals 4

    .line 107
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 108
    invoke-static {p1, p2}, Lcom/taobao/android/dinamicx/template/download/DXIOUtils;->writeTemplateToFile(Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string p2, "Template_Write"

    invoke-direct {p0, p2, v2, v3}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->trackerPerform(Ljava/lang/String;J)V

    :cond_0
    return p1
.end method
