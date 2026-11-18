.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$4;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->initView()V
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

    .line 702
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const-string p1, "persist.sys.adb.enabled"

    .line 705
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 706
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "DevEnable"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "true and can open devloper Activity"

    .line 707
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    const-class v1, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 709
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$4;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "false and can\'t open devloper Activity"

    .line 712
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
