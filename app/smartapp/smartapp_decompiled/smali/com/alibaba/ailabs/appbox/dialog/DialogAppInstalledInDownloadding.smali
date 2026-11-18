.class public Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogAppInstalledInDownloadding.java"


# instance fields
.field bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field rg_app_installed_prog:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 22
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_app_installed_downing:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;->setContentView(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_install_dialog_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/appbox/R$anim;->install_dialog_hide:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public initViewAndAction()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setProgress(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public show()V
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_install_dialog_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/appbox/R$anim;->install_dialog_show:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding$1;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledInDownloadding;)V

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method
