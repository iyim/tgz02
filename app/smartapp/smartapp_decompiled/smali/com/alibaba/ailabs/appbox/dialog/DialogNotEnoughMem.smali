.class public Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogNotEnoughMem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private desc:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->init()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->title:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->desc:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 22
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_not_enough_mem:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public initViewAndAction()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_msg_big_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_to_delete_storage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_sure_storage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_dialog_mem_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_dialog_mem_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 54
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_msg_big_bg:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_to_delete_storage:I

    if-ne p1, v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->dismiss()V

    .line 57
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openCleaner()V

    goto :goto_0

    .line 58
    :cond_1
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_sure_storage:I

    if-ne p1, v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogNotEnoughMem;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
