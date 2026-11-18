.class Lcom/alibaba/ailabs/childmode/ListenModeManager$1;
.super Ljava/lang/Object;
.source "ListenModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ListenModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ListenModeManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ListenModeManager;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager$1;->this$0:Lcom/alibaba/ailabs/childmode/ListenModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ListenModeManager"

    const-string v1, "FlowTaskManager mValidatePasswordFlow begin"

    .line 108
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FlowTaskManager mValidatePasswordFlow begin 111"

    .line 111
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->validatePassword(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/password?type=1"

    .line 114
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "from"

    const-string v2, "from_listen_mode"

    .line 116
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ListenModeManager$1;->this$0:Lcom/alibaba/ailabs/childmode/ListenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ListenModeManager;->access$000(Lcom/alibaba/ailabs/childmode/ListenModeManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
