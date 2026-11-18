.class public Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;
.super Landroid/app/Dialog;
.source "SubDialog.java"


# static fields
.field private static final SHOW_ONE:I = 0x1

.field private static final SHOW_TWO:I = 0x2


# instance fields
.field private buttonCancel:Ljava/lang/String;

.field private buttonConfirm:Ljava/lang/String;

.field private cancelClickListener:Landroid/view/View$OnClickListener;

.field private confirmClickListener:Landroid/view/View$OnClickListener;

.field private content:Ljava/lang/String;

.field private show:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    sget v0, Lcom/alibaba/ailabs/genie/message/R$style;->dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->show:I

    .line 56
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->title:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->content:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->buttonConfirm:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->buttonCancel:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->confirmClickListener:Landroid/view/View$OnClickListener;

    .line 61
    iput-object p5, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 62
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->show:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 33
    sget v0, Lcom/alibaba/ailabs/genie/message/R$style;->dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->show:I

    .line 34
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->title:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->content:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->buttonConfirm:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->confirmClickListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->show:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1

    .line 44
    sget v0, Lcom/alibaba/ailabs/genie/message/R$style;->dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->show:I

    .line 45
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->title:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->content:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->buttonConfirm:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->buttonCancel:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->confirmClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 67
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget p1, Lcom/alibaba/ailabs/genie/message/R$layout;->sub_dialog_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->setContentView(I)V

    .line 69
    sget p1, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_title:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 70
    sget v0, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    sget v1, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    sget v2, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_cancel:I

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    sget v3, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_line:I

    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->content:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v4, 0x8

    if-nez p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->buttonConfirm:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 84
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->buttonConfirm:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->buttonCancel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->buttonCancel:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    .line 89
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->show:I

    if-ne p1, v0, :cond_5

    .line 90
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->confirmClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_4

    .line 93
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_4
    sget p1, Lcom/alibaba/ailabs/genie/message/R$drawable;->back_text_selector:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 97
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->confirmClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_6

    .line 98
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->cancelClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_7

    .line 101
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 103
    :cond_7
    new-instance p1, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public setCanotBackPress()V
    .locals 1

    .line 115
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method
