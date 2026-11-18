.class public Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;
.super Ljava/lang/Object;
.source "AutoOpenMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoOpenTask"
.end annotation


# instance fields
.field bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "AutoOpenMgr@exeAutoOpenTask"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoOpenTask run ... data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoOpenMgr-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getStsType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NATIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openAppDetail(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getIcon()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppSearch"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->openBySchemaOrPkgName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getAlgTrackLog()Ljava/lang/String;

    move-result-object v1

    const-string v2, "algTrackLog"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoOpen"

    .line 94
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil;->reportSearchItemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public setBean(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    return-void
.end method
