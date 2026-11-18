.class Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$12;
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

    .line 304
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$12;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ApiActivity"

    const-string v1, "FlowTaskManager mValidatePasswordFlow begin"

    .line 307
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "debug.genie.pwd"

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/password?type=1"

    .line 313
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 314
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$12;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 311
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->validatePassword(Z)V

    :goto_1
    return-void
.end method
