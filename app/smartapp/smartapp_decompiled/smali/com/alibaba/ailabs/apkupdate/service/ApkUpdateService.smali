.class public Lcom/alibaba/ailabs/apkupdate/service/ApkUpdateService;
.super Landroid/app/Service;
.source "ApkUpdateService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApkUpdateService-l"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x31ffc737    # -5.378013E8f

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "renderData"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/apkupdate/service/ApkUpdateService$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/apkupdate/service/ApkUpdateService$1;-><init>(Lcom/alibaba/ailabs/apkupdate/service/ApkUpdateService;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->downloadAndInstall(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/apkupdate/service/ApkUpdateService;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 63
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 73
    :catch_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
