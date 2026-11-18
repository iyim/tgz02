.class Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;
.super Ljava/lang/Object;
.source "DialogAppInstalled.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->initViewAndAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIcon()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dialog_app_installed_"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->openBySchemaOrPkgName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTtsGuide()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->playAppOrAppletOpenTTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
