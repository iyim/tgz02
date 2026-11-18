.class final Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$1;
.super Lcom/alibaba/ailabs/genie/commonpay/dialog/MessageDialog$Builder;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils;->showCommonMessageDialog(Landroid/app/Activity;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentViewGroupLayoutId:I

.field final synthetic val$onBindContentView:Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$OnBindContentView;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$OnBindContentView;)V
    .locals 0

    .line 68
    iput p2, p0, Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$1;->val$contentViewGroupLayoutId:I

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$1;->val$onBindContentView:Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$OnBindContentView;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDialog()Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$1;->createDialog()Lcom/alibaba/ailabs/genie/commonpay/dialog/MessageDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createDialog()Lcom/alibaba/ailabs/genie/commonpay/dialog/MessageDialog;
    .locals 2

    .line 72
    iget v0, p0, Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$1;->val$contentViewGroupLayoutId:I

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$NewContentLayoutMessageDialog;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$NewContentLayoutMessageDialog;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$1;->val$onBindContentView:Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$OnBindContentView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/commonpay/dialog/MessageDialog;->setOnBindContentViewListener(Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$OnBindContentView;)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/dialog/MessageDialog;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/commonpay/dialog/MessageDialog;-><init>()V

    :goto_0
    return-object v0
.end method
