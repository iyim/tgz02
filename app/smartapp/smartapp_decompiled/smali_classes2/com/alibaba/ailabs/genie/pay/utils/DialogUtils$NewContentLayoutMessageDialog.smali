.class public Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$NewContentLayoutMessageDialog;
.super Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewContentLayoutMessageDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected bindView(Landroid/view/View;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$NewContentLayoutMessageDialog;->getLayoutRes()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_tg_pay_base_dialog_fragment:I

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$NewContentLayoutMessageDialog;->bindDefaultView(Landroid/view/View;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$NewContentLayoutMessageDialog;->mOnBindContentView:Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$NewContentLayoutMessageDialog;->mOnBindContentView:Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;->onBind(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected modifyContentView(Landroid/view/View;)V
    .locals 3

    .line 42
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->tg_dialog_panel_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$NewContentLayoutMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "contentViewGroupLayoutId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 46
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;->modifyContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
