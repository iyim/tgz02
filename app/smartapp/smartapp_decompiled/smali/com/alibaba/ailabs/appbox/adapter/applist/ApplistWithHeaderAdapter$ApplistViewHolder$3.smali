.class Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;
.super Ljava/lang/Object;
.source "ApplistWithHeaderAdapter.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->getListener(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

.field final synthetic val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 3

    .line 763
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$600(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->setOutOfInstall()V

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 3

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketDownloadAndInstallListener downloadAndInstall onInstallFailed msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",retCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApplistWithHeaderAdapter-l"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->setOutOfInstall()V

    .line 793
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->putInstallFailedTimes(Ljava/lang/String;Z)V

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketDownloadAndInstallListener downloadAndInstall onInstallFailed isApkShouldUpdate:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkShouldUpdate(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppVersionCode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isApkShouldUpdate(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 797
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 798
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 801
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 802
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->access$1100(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 805
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->access$700(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 806
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$500(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/appbox/R$drawable;->applist_item_failed_foreground:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 3

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketDownloadAndInstallListener downloadAndInstall onInstallSuccess pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",retCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApplistWithHeaderAdapter-l"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->setOutOfInstall()V

    .line 777
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->putInstallFailedTimes(Ljava/lang/String;Z)V

    .line 778
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_cover_square:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    .line 779
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->rl_cover_square:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 781
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->access$1000(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 782
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getActionValue()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_list_"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->openBySchemaOrPkgName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 784
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 785
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->this$1:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder$3;->val$bean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
