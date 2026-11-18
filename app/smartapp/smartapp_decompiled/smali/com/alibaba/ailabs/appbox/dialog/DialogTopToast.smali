.class public Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogTopToast.java"


# instance fields
.field toast:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;->toast:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_app_top_toast:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;->setContentView(Landroid/view/View;)V

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->cv_toast_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/appbox/R$anim;->install_dialog_hide:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method public initViewAndAction()V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_toast_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;->toast:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->cv_toast_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/appbox/R$anim;->install_dialog_show:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast$1;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogTopToast;)V

    const-wide/16 v1, 0x640

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method
