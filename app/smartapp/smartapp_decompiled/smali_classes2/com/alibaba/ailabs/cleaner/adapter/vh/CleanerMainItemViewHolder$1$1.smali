.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;
.super Ljava/lang/Object;
.source "CleanerMainItemViewHolder.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$finalName1:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$info:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$appSizeInfo:Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->getPrintSize()Ljava/lang/String;

    move-result-object v1

    const-string v2, "canDeepCleanSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$appSizeInfo:Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->getAppCountMbs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cleanDataDeepCancel"

    .line 163
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportCleanEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$finalName1:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$info:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$appSizeInfo:Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->getPrintSize()Ljava/lang/String;

    move-result-object v1

    const-string v2, "canDeepCleanSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$appSizeInfo:Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->getAppCountMbs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalSize"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cleanDataDeepSure"

    .line 138
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportCleanEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1;->val$info:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$1$1;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->clearAppData(Ljava/lang/String;Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;)V

    return-void
.end method
