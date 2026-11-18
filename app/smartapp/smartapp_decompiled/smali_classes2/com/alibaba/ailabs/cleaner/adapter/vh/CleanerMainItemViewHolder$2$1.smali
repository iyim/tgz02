.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;
.super Ljava/lang/Object;
.source "CleanerMainItemViewHolder.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 205
    sget-object v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "unInstallApp onCancel"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->val$finalName1:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->val$info:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deleteApkCancel"

    .line 209
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportCleanEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 178
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2;->val$info:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$2$1;)V

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->unInstallApp(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketApkDeleteListener;)V

    return-void
.end method
