.class Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$3;
.super Ljava/lang/Object;
.source "DialogAppInstalledStr.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->initViewAndAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 65
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->actionValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->icon:Ljava/lang/String;

    const-string v3, "dialog_app_installed_"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->openBySchemaOrPkgName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$3;->this$0:Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->pkgName:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1, p1, v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->playAppOrAppletOpenTTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
