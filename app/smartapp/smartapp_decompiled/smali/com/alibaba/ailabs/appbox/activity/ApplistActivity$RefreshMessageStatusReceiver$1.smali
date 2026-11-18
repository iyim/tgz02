.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver$1;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;)V
    .locals 0

    .line 1513
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1516
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const-string v0, "MessageOnReceive"

    const-string v1, "mAdapter is null"

    .line 1519
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
