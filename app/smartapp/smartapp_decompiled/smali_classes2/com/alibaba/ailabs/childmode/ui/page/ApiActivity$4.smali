.class Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;
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

    .line 207
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ApiActivity"

    const-string v1, "FlowTaskManager mGotoLauncherFlow begin"

    .line 210
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->access$000(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildMode(Landroid/content/Context;Z)V

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->access$000(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)Z

    move-result v0

    const-string v1, "com.alibaba.ailabs.genie.children"

    const/4 v2, 0x0

    const-string v3, "Kids_desktop"

    if-eqz v0, :cond_1

    .line 214
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isMrGreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->killProcessByPackagename(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "child_home_enter"

    const-string v1, "a1z3lt.b9135188.c1595902561572.d1595902561572"

    .line 218
    invoke-static {v0, v3, v1, v2}, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.alibaba.ailabs.genie.launcher"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->killProcessByPackagename(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->access$100(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V

    const-string v0, "child_home_exit"

    const-string v4, "a1z3lt.b9135188.c1595902613998.d1595902613998"

    .line 224
    invoke-static {v0, v3, v4, v2}, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->killProcessByPackagename(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$4;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->access$000(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    goto :goto_1

    :cond_2
    const-string v1, "0"

    :goto_1
    const-string v2, "com.alibaba.ailabs.genie.datacenter"

    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/GenieRouter;->toHome(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    return-void
.end method
