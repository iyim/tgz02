.class public Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogAppInstalled.java"


# instance fields
.field bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 24
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_app_installed:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->setContentView(Landroid/view/View;)V

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_install_dialog_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

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

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    :goto_0
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method public initViewAndAction()V
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$1;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->iv_app_installed_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 37
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBgPic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->bg_install_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBgPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_app_installed_tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_installed_open:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_installed_know:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$2;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_installed_open:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$3;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 66
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_install_dialog_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/appbox/R$anim;->install_dialog_show:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled$4;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppInstalled;)V

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method
