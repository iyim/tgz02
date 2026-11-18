.class public Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;
.super Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;
    }
.end annotation


# instance fields
.field protected mOnBindContentView:Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;->mOnBindContentView:Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->bindView(Landroid/view/View;)V

    .line 36
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->tg_dialog_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->message:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->message:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected modifyContentView(Landroid/view/View;)V
    .locals 1

    .line 28
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->tg_dialog_panel_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 29
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_tg_pay_dialog_panel_message:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method public setOnBindContentViewListener(Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;->mOnBindContentView:Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;

    return-void
.end method
