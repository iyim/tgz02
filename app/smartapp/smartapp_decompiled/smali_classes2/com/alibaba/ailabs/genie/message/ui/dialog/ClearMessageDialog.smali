.class public Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;
.super Landroid/app/Dialog;
.source "ClearMessageDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    sget v0, Lcom/alibaba/ailabs/genie/message/R$style;->dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget p1, Lcom/alibaba/ailabs/genie/message/R$layout;->clear_unread_message_dialog_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;->setContentView(I)V

    .line 28
    sget p1, Lcom/alibaba/ailabs/genie/message/R$id;->dialog_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 29
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
