.class final Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$1;
.super Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils;->showCommonMessageDialog(Landroid/app/Activity;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentViewGroupLayoutId:I

.field final synthetic val$onBindContentView:Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;)V
    .locals 0

    .line 69
    iput p2, p0, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$1;->val$contentViewGroupLayoutId:I

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$1;->val$onBindContentView:Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDialog()Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$1;->createDialog()Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createDialog()Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;
    .locals 2

    .line 73
    iget v0, p0, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$1;->val$contentViewGroupLayoutId:I

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$NewContentLayoutMessageDialog;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$NewContentLayoutMessageDialog;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$1;->val$onBindContentView:Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;->setOnBindContentViewListener(Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog;-><init>()V

    :goto_0
    return-object v0
.end method
