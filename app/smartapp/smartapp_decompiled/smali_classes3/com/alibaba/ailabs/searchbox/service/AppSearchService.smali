.class public Lcom/alibaba/ailabs/searchbox/service/AppSearchService;
.super Landroid/app/Service;
.source "AppSearchService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSearchService-l"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x5a5ddf8

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x4a872c72    # 4429369.0f

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "opensearch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 46
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "AppSearchService@closeSearch"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v0, "renderData"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 39
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openAppSearch(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "AppSearchService-l"

    const-string v1, "renderData is null ..."

    .line 41
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "\u5185\u5bb9\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5c55\u793a."

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
