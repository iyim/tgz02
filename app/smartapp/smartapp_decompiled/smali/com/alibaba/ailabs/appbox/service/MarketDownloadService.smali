.class public Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;
.super Landroid/app/Service;
.source "MarketDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketDownloadService"


# instance fields
.field private binder:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;

.field count:I

.field private final generator:Ljava/util/Random;

.field private lastStart:J

.field private preinstallManager:Lcom/alibaba/ailabs/base/util/PreinstallManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;-><init>(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->binder:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->generator:Ljava/util/Random;

    .line 62
    new-instance v0, Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/base/util/PreinstallManager;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->preinstallManager:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    const-wide/16 v0, -0x1

    .line 70
    iput-wide v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->lastStart:J

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;J)J
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->lastStart:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->onDataLoaded(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->stopService()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->removeInstallOrUpdateApp()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private isCurrentPackageInBlackList(Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;Ljava/lang/String;)Z
    .locals 3

    .line 213
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 216
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getBlackList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getBlackList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getBlackList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 221
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method private onDataLoaded(Ljava/lang/String;)V
    .locals 4

    .line 149
    const-class v0, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->preinstallManager:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getPreInstalledAppList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$2;-><init>(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->checkPreinstallAndUpload(Ljava/util/List;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V

    .line 191
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getPreInstalledAppList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getPreInstalledAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 192
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getPreInstalledAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 194
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "applet"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip isAppletIntentMatchCode not match. -- > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MarketDownloadService"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "server"

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->isCurrentPackageInBlackList(Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;Ljava/lang/String;)Z

    move-result v2

    .line 202
    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ZLjava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v1

    goto :goto_1

    .line 205
    :cond_1
    invoke-static {v1, v3}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v1

    .line 207
    :goto_1
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeInstallOrUpdateApp()V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeInstallOrUpdateApp count ==  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketDownloadService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    .line 315
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->stopService()V

    return-void
.end method

.method private stopService()V
    .locals 1

    .line 92
    iget v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    if-gtz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->getInstance()Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRandomNumber()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->generator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public loadData()V
    .locals 1

    .line 121
    iget v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->count:I

    if-lez v0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$1;-><init>(Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getAppListDataV2(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MarketDownloadService - onBind - Thread = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketDownloadService"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->binder:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketDownloadService - onCreate - Thread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketDownloadService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketDownloadService - onDestroy - Thread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketDownloadService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MarketDownloadService - onStartCommand - startId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Thread = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MarketDownloadService"

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MarketDownloadService - onStartCommand - intent = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 81
    iget-wide v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->lastStart:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->loadData()V

    goto :goto_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketDownloadService - onStartCommand - skip load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->lastStart:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->stopService()V

    :goto_1
    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketDownloadService - onUnbind - from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketDownloadService"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
