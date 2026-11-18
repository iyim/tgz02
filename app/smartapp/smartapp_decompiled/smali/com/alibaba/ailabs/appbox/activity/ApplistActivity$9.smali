.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->refreshAppListByCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

.field final synthetic val$sortList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Ljava/util/List;)V
    .locals 0

    .line 1293
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;->val$sortList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ApplistActivity-l"

    const-string v1, "onDataLoaded refreshAppListByCache"

    .line 1296
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;->val$sortList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$900(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Ljava/util/List;Z)V

    .line 1298
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    if-nez v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1301
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_LOAD_DATA handle is null "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getApplistData"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$602(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Z)Z

    return-void
.end method
