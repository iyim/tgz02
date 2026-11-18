.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1$1;
.super Ljava/lang/Object;
.source "CleanerMainItemViewHolder.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketApkDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUninstallFailed(Ljava/lang/String;I)V
    .locals 3

    .line 195
    sget-object v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInstallApp onUninstallFailed pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",retCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->access$400(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->access$400(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;)Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;->onUninstallFailed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onUninstallSuccess(Ljava/lang/String;I)V
    .locals 3

    .line 182
    sget-object v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInstallApp onUninstallSuccess pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",retCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1$1;->this$2:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->val$finalName1:Ljava/lang/String;

    invoke-static {v0, p1, v1, p2}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->access$300(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
