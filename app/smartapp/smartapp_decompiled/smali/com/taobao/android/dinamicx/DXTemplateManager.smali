.class public Lcom/taobao/android/dinamicx/DXTemplateManager;
.super Lcom/taobao/android/dinamicx/DXBaseClass;
.source "DXTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private downgradeManager:Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;

.field private downloader:Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;

.field private engineId:J

.field private loaderManager:Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/DXEngineContext;Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXBaseClass;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    .line 52
    iput-object p2, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->context:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineConfig;->getEngineId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->engineId:J

    .line 54
    new-instance v0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->loaderManager:Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;

    .line 55
    new-instance v0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget v1, v1, Lcom/taobao/android/dinamicx/DXEngineConfig;->downgradeType:I

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->downgradeManager:Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;

    .line 56
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;

    sget-object v1, Lcom/taobao/android/dinamicx/DXGlobalCenter;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXEngineContext;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxNotificationCenter:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    invoke-direct {v0, v1, p1}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;-><init>(Lcom/taobao/android/dinamicx/template/download/IDXDownloader;Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->downloader:Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;

    .line 57
    new-instance p1, Lcom/taobao/android/dinamicx/DXTemplateManager$1;

    invoke-direct {p1, p0, p2}, Lcom/taobao/android/dinamicx/DXTemplateManager$1;-><init>(Lcom/taobao/android/dinamicx/DXTemplateManager;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 63
    invoke-static {}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->getInstance()Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->initFilePath(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DXTemplateManager;->loadPresetTemplateInfoList()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/DXTemplateManager;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->engineId:J

    return-wide v0
.end method

.method private getTemplateDownloadTaskList(Ljava/util/List;)Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)",
            "Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;

    invoke-direct {v0, p0}, Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;-><init>(Lcom/taobao/android/dinamicx/DXTemplateManager;)V

    if-eqz p1, :cond_3

    .line 235
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 240
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 241
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 242
    invoke-static {v1}, Lcom/taobao/android/dinamicx/template/utils/DXTemplateNamePathUtil;->isValid(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/DXTemplateManager;->isTemplateExist(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    iget-object v2, v0, Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;->downloadTaskTemplates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private loadPresetTemplateInfoList()V
    .locals 3

    .line 71
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->needLoadPresetTemplateInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    .line 74
    invoke-static {v2}, Lcom/taobao/android/dinamicx/template/download/DXIOUtils;->readPresetTemplateInfo(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->putPresetTemplateInfo(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    return-void
.end method

.method private trackerPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V
    .locals 9

    long-to-double v6, p4

    const/4 v0, 0x2

    const-string v2, "Template"

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p2

    move-object v3, p1

    move-object v4, p3

    .line 263
    invoke-static/range {v0 .. v8}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method destroy()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->downgradeManager:Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;

    iget-wide v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->engineId:J

    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->resetDowngradeCount(J)V

    .line 223
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;->closeDatabase()V

    return-void
.end method

.method downgradeTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->downgradeManager:Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    iget-wide v2, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->engineId:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->startStrategy(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    return-void
.end method

.method downloadTemplates(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)V"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXTemplateManager;->getTemplateDownloadTaskList(Ljava/util/List;)Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->downloader:Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;->downloadTaskTemplates:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXTemplateManager$2;

    invoke-direct {v2, p0}, Lcom/taobao/android/dinamicx/DXTemplateManager$2;-><init>(Lcom/taobao/android/dinamicx/DXTemplateManager;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/taobao/android/dinamicx/template/download/DXDownloadManager;->downloadTemplates(Ljava/lang/String;Ljava/util/List;Lcom/taobao/android/dinamicx/template/download/IDXUnzipCallback;)V

    return-void
.end method

.method fetchPresetTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 9

    .line 150
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 151
    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->downgradeManager:Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->engineId:J

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->fetchPresetTemplate(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v2

    .line 152
    iget-object v5, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v7, v3, v0

    const-string v4, "Template_Fetch"

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/dinamicx/DXTemplateManager;->trackerPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V

    return-object v2
.end method

.method fetchTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 9

    .line 163
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 164
    iget-object v2, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->downgradeManager:Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->engineId:J

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->fetchTemplate(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v2

    .line 165
    iget-object v5, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v7, v3, v0

    const-string v4, "Template_Fetch"

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/dinamicx/DXTemplateManager;->trackerPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V

    return-object v2
.end method

.method getTemplateWT(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/taobao/android/dinamicx/DXError;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->config:Lcom/taobao/android/dinamicx/DXEngineConfig;

    iget-object v3, v3, Lcom/taobao/android/dinamicx/DXEngineConfig;->bizType:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    .line 92
    iget-object v2, v1, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxError:Lcom/taobao/android/dinamicx/DXError;

    iget-object v3, p1, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iput-object v3, v2, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 93
    iput-object v0, v1, Lcom/taobao/android/dinamicx/DXRuntimeContext;->userContext:Lcom/taobao/android/dinamicx/DXUserContext;

    .line 94
    iput-object v0, v1, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxUserContext:Ljava/lang/Object;

    .line 96
    iget-object v2, v1, Lcom/taobao/android/dinamicx/DXRuntimeContext;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 99
    invoke-virtual {p0, v2}, Lcom/taobao/android/dinamicx/DXTemplateManager;->isTemplateExist(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 100
    iget-object v3, v2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->packageInfo:Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->packageInfo:Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;

    iget-object v3, v3, Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;->mainFilePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    :cond_1
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getPackageInfo(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->packageInfo:Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;

    .line 103
    :cond_2
    iget-object v3, v2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->packageInfo:Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;

    if-nez v3, :cond_3

    return-object v0

    .line 106
    :cond_3
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->getCache(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-nez v0, :cond_4

    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 109
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->loaderManager:Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;

    iget-object v5, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, v1, v5}, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->load(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXRuntimeContext;Landroid/content/Context;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    const/4 v5, 0x3

    .line 110
    iget-object v6, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    const/4 v9, 0x0

    .line 111
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    long-to-double v10, v7

    const/4 v12, 0x1

    const-string v3, "Template"

    const-string v7, "Pipeline_Stage_Load_Binary"

    move v4, v5

    move-object v5, v6

    move-object v6, v3

    move-object v8, v2

    .line 110
    invoke-static/range {v4 .. v12}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    .line 114
    invoke-virtual {v0, v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStatFlag(I)V

    .line 115
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v0}, Lcom/taobao/android/dinamicx/template/DXWidgetNodeCacheManager;->putCache(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    :cond_4
    if-nez v0, :cond_5

    .line 119
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 120
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 121
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 122
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 123
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0
.end method

.method isTemplateExist(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z
    .locals 9

    .line 139
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 140
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->isTemplateExist(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z

    move-result v2

    .line 141
    iget-object v5, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->bizType:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v7, v3, v0

    const-string v4, "Template_Exist"

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/taobao/android/dinamicx/DXTemplateManager;->trackerPerform(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;J)V

    return v2
.end method

.method resetDowngradeCount()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->downgradeManager:Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;

    iget-wide v1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->engineId:J

    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->resetDowngradeCount(J)V

    return-void
.end method

.method setUpMaxDowngradeCount(I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXTemplateManager;->downgradeManager:Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->setUpMaxDowngradeCount(I)V

    return-void
.end method
