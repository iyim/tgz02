.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->onDataLoaded(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ApplistActivity-l"

    const-string v1, "onDataLoaded refresh2List"

    .line 932
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-object v1, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$900(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Ljava/util/List;Z)V

    .line 935
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$1000(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
