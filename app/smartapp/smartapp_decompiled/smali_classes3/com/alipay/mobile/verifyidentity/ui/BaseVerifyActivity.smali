.class public abstract Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;
.super Lcom/alipay/mobile/verifyidentity/ui/AdapterActivity;
.source "BaseVerifyActivity.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/ActivityResponsable;


# instance fields
.field private a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

.field protected mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

.field protected mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/AdapterActivity;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->whenModuleIsNull()Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->finish()V

    .line 60
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->canTaskContinue(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity\u6240\u5c5eTask\u5df2\u7ecf\u8fc7\u671f\uff0c\u76f4\u63a5\u9500\u6bc1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->finish()V

    :cond_2
    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Bundle;)V
    .locals 8

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Bundle;)V

    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 8

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->dismissProgressDialog()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->finish()V

    .line 81
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/AdapterActivity;->finish()V

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0, v0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getDialogHelper()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->getDialogHelper()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    move-result-object v0

    return-object v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->getDialogHelper()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->isDialogShowing()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$style;->VITranslucentBaseTheme:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->setTheme(I)V

    .line 41
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/AdapterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance p1, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    .line 43
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->getModule()Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 44
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->mMicroModuleContext:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/AdapterActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/AdapterActivity;->onPause()V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/AdapterActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->onResume()V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method public toast(Ljava/lang/String;II)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->a:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;->toast(Ljava/lang/String;II)V

    return-void
.end method
