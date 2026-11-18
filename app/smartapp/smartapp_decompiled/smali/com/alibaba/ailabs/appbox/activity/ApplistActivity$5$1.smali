.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$1;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;->preinstallSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;

.field final synthetic val$downloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;Ljava/lang/String;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$1;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$1;->val$downloadUrl:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->refreshItemInstallStatus(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
