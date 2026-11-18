.class Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;
.super Ljava/lang/Object;
.source "Market3TaskManager.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->installApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$size:I

.field final synthetic val$uninstallAble:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userClick:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$path:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$size:I

    iput-object p5, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$uninstallAble:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$userClick:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 7

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallFailed -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , url == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$url:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Market3TaskManager-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$url:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$300(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->deleteSingleFile(Ljava/lang/String;)Z

    .line 310
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$url:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$uninstallAble:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$userClick:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportInstallFailedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 5

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallSuccess -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , url == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$url:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Market3TaskManager-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallSuccess containsKey:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$400(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mBeanHashMap:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$400(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$400(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$400(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$400(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {v0, v1, p2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$500(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;I)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$url:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$600(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;ILjava/lang/String;)V

    .line 284
    :goto_0
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$path:Ljava/lang/String;

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->deleteSingleFile(Ljava/lang/String;)Z

    .line 293
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$url:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$uninstallAble:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$5;->val$userClick:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, p1, v2, v1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportInstallSuccessEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
