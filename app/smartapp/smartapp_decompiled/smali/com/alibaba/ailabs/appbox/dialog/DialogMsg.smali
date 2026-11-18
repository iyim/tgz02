.class public Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field callback:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;

.field msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;->msg:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_msg_to_user:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;->setContentView(Landroid/view/View;)V

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public initViewAndAction()V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_market_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_msg_big_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_msg_sure_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 37
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_msg_big_bg:I

    if-ne p1, v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;->dismiss()V

    goto :goto_0

    .line 39
    :cond_0
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_msg_sure_btn:I

    if-ne p1, v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogMsg;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
