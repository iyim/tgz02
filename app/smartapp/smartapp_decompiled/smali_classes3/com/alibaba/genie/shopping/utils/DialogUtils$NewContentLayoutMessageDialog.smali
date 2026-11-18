.class public Lcom/alibaba/genie/shopping/utils/DialogUtils$NewContentLayoutMessageDialog;
.super Lcom/alibaba/genie/shopping/view/dialog/MessageDialog;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/utils/DialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewContentLayoutMessageDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected bindView(Landroid/view/View;)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/utils/DialogUtils$NewContentLayoutMessageDialog;->getLayoutRes()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->tg_shopping_base_dialog_fragment:I

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/utils/DialogUtils$NewContentLayoutMessageDialog;->bindDefaultView(Landroid/view/View;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/utils/DialogUtils$NewContentLayoutMessageDialog;->mOnBindContentView:Lcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/alibaba/genie/shopping/utils/DialogUtils$NewContentLayoutMessageDialog;->mOnBindContentView:Lcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;->onBind(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected modifyContentView(Landroid/view/View;)V
    .locals 3

    .line 41
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tg_dialog_panel_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/utils/DialogUtils$NewContentLayoutMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "contentViewGroupLayoutId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 45
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog;->modifyContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
