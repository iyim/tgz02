.class public Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogAppInstalledStr.java"


# instance fields
.field actionValue:Ljava/lang/String;

.field bg:Ljava/lang/String;

.field icon:Ljava/lang/String;

.field name:Ljava/lang/String;

.field pkgName:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 27
    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->bg:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->icon:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->title:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->actionValue:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->pkgName:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->name:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_app_installed:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->setContentView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_install_dialog_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/appbox/R$anim;->install_dialog_hide:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    :goto_0
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method public initViewAndAction()V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$1;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->iv_app_installed_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->bg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->bg_install_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 50
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->bg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_app_installed_tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_installed_open:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_installed_know:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$2;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_installed_open:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$3;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 75
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_install_dialog_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/appbox/R$anim;->install_dialog_show:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr$4;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalledStr;)V

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method
