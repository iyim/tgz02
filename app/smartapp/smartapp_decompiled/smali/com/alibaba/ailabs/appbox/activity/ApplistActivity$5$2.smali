.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;->preinstallFailed(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;

.field final synthetic val$downloadUrl:Ljava/lang/String;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;ZLjava/lang/String;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;->val$retry:Z

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 812
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 813
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;->val$retry:Z

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;->val$downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->refreshItemInstall(Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;->val$downloadUrl:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->refreshItemInstallStatus(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
