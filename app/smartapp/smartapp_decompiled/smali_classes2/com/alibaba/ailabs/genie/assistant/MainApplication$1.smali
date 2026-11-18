.class Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/MainApplication;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/MainApplication;

.field final synthetic val$controller:Lcom/alibaba/ailabs/geniesdk/AguiCtx;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/MainApplication;Lcom/alibaba/ailabs/geniesdk/AguiCtx;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/MainApplication;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;->val$controller:Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 204
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "ywp"

    .line 208
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->access$000()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 210
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/MainApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/smartbox/prompt/xiaokubao/59000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;->count:I

    .line 215
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getInstance()Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getBundleVersion()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 217
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 219
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;

    .line 220
    new-instance v5, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;

    .line 221
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    .line 222
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getVersionCode()I

    move-result v8

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appInfo = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis$AppInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    :cond_1
    invoke-static {v3}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->setExtraApps(Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    const-string v1, "appInfo is null "

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;->val$controller:Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;->val$controller:Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;->val$controller:Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->reportAppInfo(Lcom/alibaba/ailabs/geniesdk/status/StatusManager;Landroid/content/Context;)V

    .line 238
    :cond_3
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getIGetAppInfoListener()Lcom/alibaba/ailabs/geniesdk/client/IGetAppInfoListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 240
    instance-of v3, v1, Lcom/alibaba/ailabs/genie/assistant/GetAppInfoEx;

    if-eqz v3, :cond_4

    .line 241
    nop

    nop

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->access$000()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/assistant/GetAppInfoEx;->updateActivities(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appInfo error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x7530

    .line 251
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    const-string v1, "appInfo retry "

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$1;->count:I

    if-gtz v1, :cond_0

    return-void
.end method
