.class Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$2;
.super Ljava/lang/Object;
.source "ApiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ApiActivity"

    const-string v1, "FlowTaskManager mSetPasswordFlow begin"

    .line 186
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->needSetSecret(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "No password found, start set password 2012 page"

    .line 189
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/password?type=3"

    .line 190
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 191
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "No need set password, skip this flow "

    .line 195
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->skipShowConfigDialog()V

    .line 197
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    :goto_0
    return-void
.end method
