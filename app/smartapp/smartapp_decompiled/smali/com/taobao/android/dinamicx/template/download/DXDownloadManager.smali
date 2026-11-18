.class public Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;
.super Ljava/lang/Object;
.source "DXDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$IDXDownloadCallback;
    }
.end annotation


# instance fields
.field private centerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;",
            ">;"
        }
    .end annotation
.end field

.field private dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/template/download/IDXDownloader;Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/taobao/android/dinamicx/template/download/HttpDownloader;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/template/download/HttpDownloader;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    goto :goto_0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    .line 38
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->centerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->centerWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->trackerDownloadPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;Lcom/taobao/android/dinamicx/DXError;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$IDXDownloadCallback;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->downloadItem(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$IDXDownloadCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private downloadItem(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$IDXDownloadCallback;)V
    .locals 7

    .line 85
    new-instance v0, Lcom/taobao/android/dinamicx/DXResult;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXResult;-><init>()V

    .line 86
    new-instance v1, Lcom/taobao/android/dinamicx/DXError;

    invoke-direct {v1, p1}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    iget-object v3, p2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/taobao/android/dinamicx/template/download/IDXDownloader;->download(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 89
    new-instance p1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const p3, 0xea60

    const-string v2, "Downloader"

    const-string v3, "Downloader_download"

    invoke-direct {p1, v2, v3, p3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    iput-object p2, v0, Lcom/taobao/android/dinamicx/DXResult;->result:Ljava/lang/Object;

    .line 92
    iput-object p2, v1, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 93
    iget-object p2, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXResult;->setDxError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 95
    invoke-interface {p4, v0}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$IDXDownloadCallback;->onFailed(Lcom/taobao/android/dinamicx/DXResult;)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->getInstance()Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2f

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    iget-object p1, p2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget-wide v5, p2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1, p3, v1}, Lcom/taobao/android/dinamicx/template/download/DXIOUtils;->unzip(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;[BLjava/lang/String;Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;Lcom/taobao/android/dinamicx/DXError;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    invoke-interface {p4, p2}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$IDXDownloadCallback;->onFinished(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    goto :goto_0

    .line 110
    :cond_1
    iput-object p2, v0, Lcom/taobao/android/dinamicx/DXResult;->result:Ljava/lang/Object;

    .line 111
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DXResult;->setDxError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 112
    invoke-interface {p4, v0}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$IDXDownloadCallback;->onFailed(Lcom/taobao/android/dinamicx/DXResult;)V

    :goto_0
    return-void
.end method

.method private trackerDownloadPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V
    .locals 9

    long-to-double v6, p4

    const/4 v0, 0x2

    const-string v2, "Downloader"

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p2

    move-object v3, p1

    move-object v4, p3

    .line 137
    invoke-static/range {v0 .. v8}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private trackerError(Lcom/taobao/android/dinamicx/DXError;)V
    .locals 0

    .line 142
    invoke-static {p1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public downloadTemplates(Ljava/lang/String;Ljava/util/List;Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;",
            "Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    new-instance v0, Lcom/taobao/android/dinamicx/thread/DXDownLoadRunnable;

    const/4 v1, 0x0

    new-instance v2, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager$1;-><init>(Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;Ljava/util/List;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;)V

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/thread/DXDownLoadRunnable;-><init>(ILjava/lang/Runnable;)V

    invoke-static {v0}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runForDownLoad(Lcom/taobao/android/dinamicx/thread/DXDownLoadRunnable;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
