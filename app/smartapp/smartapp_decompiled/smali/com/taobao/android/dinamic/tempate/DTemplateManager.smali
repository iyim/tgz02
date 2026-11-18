.class public Lcom/taobao/android/dinamic/tempate/DTemplateManager;
.super Ljava/lang/Object;
.source "DTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;
    }
.end annotation


# static fields
.field private static final SPLITTER:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String; = "DTemplateManager"


# instance fields
.field private assetCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private assetPath:Ljava/lang/String;

.field private cacheStrategy:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

.field private context:Landroid/content/Context;

.field private interval:I

.field private layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

.field private module:Ljava/lang/String;

.field private resCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private taskManager:Lcom/taobao/android/dinamic/tempate/SerialTaskManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->resCache:Landroid/util/LruCache;

    .line 42
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->assetCache:Landroid/util/LruCache;

    const/16 v0, 0xbb8

    .line 48
    iput v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->interval:I

    .line 50
    new-instance v0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager;

    invoke-direct {v0}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->taskManager:Lcom/taobao/android/dinamic/tempate/SerialTaskManager;

    const-string v0, "dinamic"

    .line 73
    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->assetPath:Ljava/lang/String;

    .line 296
    sget-object v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->STRATEGY_DEFAULT:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->cacheStrategy:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    .line 53
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->module:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->context:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/taobao/android/dinamic/DinamicDefaultApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->context:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/dinamic/Dinamic;->setDinamicContext(Landroid/content/Context;)V

    .line 61
    :cond_0
    new-instance v0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    .line 62
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/DRegisterCenter;->getHttpLoader()Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->setHttpLoader(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamic/tempate/DTemplateManager;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->module:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamic/tempate/DTemplateManager;)Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->cacheStrategy:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    return-object p0
.end method

.method public static defaultTemplateManager()Lcom/taobao/android/dinamic/tempate/DTemplateManager;
    .locals 1

    const-string v0, "default"

    .line 76
    invoke-static {v0}, Lcom/taobao/android/dinamic/Dinamic;->getModuleContainer(Ljava/lang/String;)Lcom/taobao/android/dinamic/ModuleContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamic/ModuleContainer;->dTemplateManager:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    return-object v0
.end method

.method private getDefaultLayoutId(Ljava/lang/String;)I
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->context:Landroid/content/Context;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->resCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 244
    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "layout"

    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->context:Landroid/content/Context;

    .line 245
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 246
    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->resCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "DTemplateManager"

    const-string v3, "Get layout parser exception"

    .line 248
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    :goto_1
    return v1
.end method

.method private isAssetExists(Ljava/lang/String;)Z
    .locals 5

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->assetCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 265
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :try_start_0
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->assetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 271
    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->assetCache:Landroid/util/LruCache;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 275
    :catch_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->assetCache:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method private logFetchExactTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;J)V
    .locals 7

    .line 336
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/DRegisterCenter;->getPerformMonitor()Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamic/log/DinamicLogThread;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;-><init>(Lcom/taobao/android/dinamic/tempate/DTemplateManager;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;J)V

    .line 351
    sget-object p1, Lcom/taobao/android/dinamic/log/DinamicLogThread;->threadHandler:Lcom/taobao/android/dinamic/log/DinamicLogThread$OrderedHandler;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamic/log/DinamicLogThread$OrderedHandler;->postTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static templateManagerWithModule(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/DTemplateManager;
    .locals 1

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "default"

    .line 81
    invoke-static {p0}, Lcom/taobao/android/dinamic/Dinamic;->getModuleContainer(Ljava/lang/String;)Lcom/taobao/android/dinamic/ModuleContainer;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/android/dinamic/ModuleContainer;->dTemplateManager:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    return-object p0

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/taobao/android/dinamic/Dinamic;->getModuleContainer(Ljava/lang/String;)Lcom/taobao/android/dinamic/ModuleContainer;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/android/dinamic/ModuleContainer;->dTemplateManager:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    return-object p0
.end method


# virtual methods
.method public downloadTemplates(Ljava/util/List;Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;",
            ")V"
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$1;

    invoke-direct {v0, p0, p2}, Lcom/taobao/android/dinamic/tempate/DTemplateManager$1;-><init>(Lcom/taobao/android/dinamic/tempate/DTemplateManager;Lcom/taobao/android/dinamic/tempate/DinamicTemplateDownloaderCallback;)V

    .line 133
    new-instance p2, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    iget v2, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->interval:I

    invoke-direct {p2, v1, v2}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;-><init>(Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;I)V

    .line 135
    iput-object v0, p2, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->listener:Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileLoadListener;

    .line 136
    iput-object p1, p2, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->templates:Ljava/util/List;

    .line 137
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->module:Ljava/lang/String;

    iput-object p1, p2, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->module:Ljava/lang/String;

    .line 139
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->taskManager:Lcom/taobao/android/dinamic/tempate/SerialTaskManager;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager;->execute(Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;)V

    return-void
.end method

.method public fetchDegradeFile(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->fetchDegradeFile(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object p1

    return-object p1
.end method

.method public fetchExactTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 156
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 160
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->isPreset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getPresetTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object v2

    .line 162
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->logFetchExactTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;J)V

    return-object v2

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->cacheStrategy:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    sget-object v3, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->STRATEGY_DEFAULT:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    if-ne v2, v3, :cond_2

    .line 169
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->isLocalLayoutFileExists(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 171
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->logFetchExactTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;J)V

    return-object v2

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->cacheStrategy:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    sget-object v3, Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;->STRATEGY_ALLOW_VERSION_DEGRADE:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    if-ne v2, v3, :cond_4

    .line 175
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->isLocalLayoutFileExists(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->logFetchExactTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;J)V

    return-object v2

    .line 184
    :cond_3
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->fetchDegradeFile(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 186
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->logFetchExactTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;J)V

    return-object v2

    .line 191
    :cond_4
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getPresetTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    move-result-object v2

    .line 192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->logFetchExactTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;J)V

    return-object v2
.end method

.method public getLayoutFileManager()Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    return-object v0
.end method

.method public getLayoutParser(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Landroid/content/res/XmlResourceParser;
    .locals 5

    const-string v0, "DTemplateManager"

    .line 88
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getDefaultLayoutId(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Res parser is applied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Get layout parser exception"

    .line 99
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v2
.end method

.method public getPresetTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
    .locals 2

    .line 216
    iget-object v0, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getDefaultLayoutId(Ljava/lang/String;)I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_0

    .line 218
    new-instance v0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-direct {v0}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;-><init>()V

    .line 219
    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    iput-object p1, v0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    .line 220
    iput-object v1, v0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->isAssetExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-direct {v0}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;-><init>()V

    .line 228
    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    iput-object p1, v0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    .line 229
    iput-object v1, v0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTemplateCategory(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;I)Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateCategory(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->isPreset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    return-object p1

    .line 315
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLocalLayoutFileExists(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getTemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->isLocalLayoutFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-direct {v0}, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;-><init>()V

    .line 201
    iget-object v1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->templateUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->templateUrl:Ljava/lang/String;

    .line 202
    iget-object v1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    .line 203
    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    iput-object p1, v0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public readAssert(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)[B
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->assetPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getTemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->readLocalLayoutFileFromAsset(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public readLocalTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->getTemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->readLocalLayoutFileWithoutAccessDB(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public registerHttpLoader(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->setHttpLoader(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;)V

    return-void
.end method

.method public setCacheStrategy(Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->cacheStrategy:Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    return-void
.end method

.method public setDownloaderCallbackInterval(I)V
    .locals 0

    .line 360
    iput p1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->interval:I

    return-void
.end method

.method public setPreSetTemplateAssetPath(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->assetPath:Ljava/lang/String;

    return-void
.end method

.method public setTemplateCacheSize(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->setTemplateCacheSize(I)V

    return-void
.end method
