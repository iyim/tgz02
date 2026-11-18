.class Lcom/alibaba/ailabs/base/util/PreinstallManager$1;
.super Ljava/lang/Object;
.source "PreinstallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/PreinstallManager;->checkPreinstallAndUpload(Ljava/util/List;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

.field final synthetic val$dataList:Ljava/util/List;

.field final synthetic val$listener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/base/util/PreinstallManager;Ljava/util/List;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->val$dataList:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->val$listener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "PreinstallUtils"

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$000(Lcom/alibaba/ailabs/base/util/PreinstallManager;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$002(Lcom/alibaba/ailabs/base/util/PreinstallManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$000(Lcom/alibaba/ailabs/base/util/PreinstallManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :goto_0
    const/4 v1, 0x0

    .line 44
    :goto_1
    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->val$dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 45
    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->val$dataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPreinstallInstall to check i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",bean:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$100(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v3, :cond_1

    .line 49
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPreinstallInstall upload packageName\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkAvailable(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getApkVersionCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportPreinstallApkUploadEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    iget-object v4, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->val$listener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    invoke-static {v3, v2, v4}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$200(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V

    goto/16 :goto_2

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$300(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPreinstallInstall preinstall packageName\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkAvailable(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getApkVersionCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportPreinstallApkInstallEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {v3}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$000(Lcom/alibaba/ailabs/base/util/PreinstallManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    iget-object v4, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$1;->val$listener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    invoke-static {v3, v2, v4}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$400(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V

    goto :goto_2

    .line 77
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPreinstallInstall no preinstall,no upload packageName\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkAvailable(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method
