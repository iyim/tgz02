.class public Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogDeleteApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field callback:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->title:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->callback:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;

    .line 19
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_delete_app:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->setContentView(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public initViewAndAction()V
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_msg_big_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_to_delete_storage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_oom_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u786e\u8ba4\u79fb\u9664 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_sure_storage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_msg_big_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 40
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_msg_big_bg:I

    if-ne p1, v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->dismiss()V

    goto :goto_0

    .line 42
    :cond_0
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_to_delete_storage:I

    if-ne p1, v0, :cond_2

    .line 43
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->callback:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;

    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;->onCancel()V

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->dismiss()V

    goto :goto_0

    .line 47
    :cond_2
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_sure_storage:I

    if-ne p1, v0, :cond_4

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->callback:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;

    if-eqz p1, :cond_3

    .line 49
    invoke-interface {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;->onConfirm()V

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
