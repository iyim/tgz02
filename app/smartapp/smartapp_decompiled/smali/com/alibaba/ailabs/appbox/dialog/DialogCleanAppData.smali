.class public Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogCleanAppData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field callback:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;

.field desc:Ljava/lang/String;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->text:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->desc:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->callback:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;

    .line 21
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_clean_app:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->setContentView(Landroid/view/View;)V

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public initViewAndAction()V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_msg_big_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_to_delete_storage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_clean_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_content_clean:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_sure_storage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_msg_big_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 43
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_msg_big_bg:I

    if-ne p1, v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->dismiss()V

    goto :goto_0

    .line 45
    :cond_0
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_to_delete_storage:I

    if-ne p1, v0, :cond_2

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->callback:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;

    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;->onCancel()V

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->dismiss()V

    goto :goto_0

    .line 50
    :cond_2
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_sure_storage:I

    if-ne p1, v0, :cond_4

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->callback:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;

    if-eqz p1, :cond_3

    .line 52
    invoke-interface {p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;->onConfirm()V

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogCleanAppData;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
