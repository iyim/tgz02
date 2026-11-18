.class public Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# instance fields
.field public isForceground:Z

.field public isInstallDataChangeAtBackground:Z

.field progressDialog:Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->progressDialog:Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->isForceground:Z

    return-void
.end method


# virtual methods
.method public finishLoadingView()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->finishLoadingDialog()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->addActivity(Landroid/support/v4/app/FragmentActivity;)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->requestWindowFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 63
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->finishActivity(Landroid/app/Activity;)V

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->finishLoadingView()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->isForceground:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->isForceground:Z

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->showLoadingDialog(Landroid/content/Context;)V

    return-void
.end method

.method public showLoadingView(Z)V
    .locals 2

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->showLoadingDialog(Landroid/content/Context;Z)V

    return-void
.end method
