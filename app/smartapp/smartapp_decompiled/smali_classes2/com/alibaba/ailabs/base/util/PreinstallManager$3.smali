.class Lcom/alibaba/ailabs/base/util/PreinstallManager$3;
.super Ljava/lang/Object;
.source "PreinstallManager.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/base/util/PreinstallManager;->installApp(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

.field final synthetic val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field final synthetic val$preinstallAndUploadListener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iput-object p3, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$preinstallAndUploadListener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installApp onInstallFailed s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",i:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreinstallUtils"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installApp onInstallFailed mPreinstallCountMap:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$000(Lcom/alibaba/ailabs/base/util/PreinstallManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getInstallSize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, p1, v3, v4}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportPreinstallFailedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$000(Lcom/alibaba/ailabs/base/util/PreinstallManager;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$000(Lcom/alibaba/ailabs/base/util/PreinstallManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$000(Lcom/alibaba/ailabs/base/util/PreinstallManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installApp onInstallFailed bean.getDownloadUrl():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",installCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$000(Lcom/alibaba/ailabs/base/util/PreinstallManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iget-object v2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$preinstallAndUploadListener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$400(Lcom/alibaba/ailabs/base/util/PreinstallManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$preinstallAndUploadListener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    if-eqz v0, :cond_1

    .line 242
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, v3}, Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;->preinstallFailed(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$preinstallAndUploadListener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    if-eqz v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;->preinstallFailed(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installApp onInstallSuccess s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",i:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",bean:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreinstallUtils"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->this$0:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->access$000(Lcom/alibaba/ailabs/base/util/PreinstallManager;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getInstallSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getUninstallable()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportPreinstallSuccessEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$preinstallAndUploadListener:Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;

    if-eqz p1, :cond_0

    .line 218
    iget-object p2, p0, Lcom/alibaba/ailabs/base/util/PreinstallManager$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;->preinstallSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
