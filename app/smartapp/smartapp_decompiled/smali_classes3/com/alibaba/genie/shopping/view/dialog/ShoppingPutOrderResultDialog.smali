.class public Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;
.super Landroid/app/DialogFragment;
.source "ShoppingPutOrderResultDialog.java"


# instance fields
.field private good_qrcode:Ljava/lang/String;

.field img_close_dialog:Landroid/widget/ImageView;

.field img_taobao_qrcode:Landroid/widget/ImageView;

.field private mBuyClickListener:Landroid/view/View$OnClickListener;

.field private mPendingExec:Z

.field private mResultInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field tv_info_txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->mPendingExec:Z

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->mResultInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    return-void
.end method

.method private initData()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->mResultInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    const/4 v1, 0x1

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->good_qrcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;

    iget-object v5, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->img_taobao_qrcode:Landroid/widget/ImageView;

    invoke-direct {v0, v5}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;-><init>(Landroid/view/View;)V

    .line 75
    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    iget-object v2, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->good_qrcode:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->tv_info_txt:Landroid/widget/TextView;

    sget v5, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_sku_tips_error:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->good_qrcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;

    iget-object v5, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->img_taobao_qrcode:Landroid/widget/ImageView;

    invoke-direct {v0, v5}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;-><init>(Landroid/view/View;)V

    .line 81
    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    iget-object v2, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->good_qrcode:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 53
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->img_taobao_qrcode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->img_taobao_qrcode:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_info_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->tv_info_txt:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->img_close_dialog:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->img_close_dialog:Landroid/widget/ImageView;

    .line 56
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->img_close_dialog:Landroid/widget/ImageView;

    new-instance v0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog$1;-><init>(Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public isPendingExec()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->mPendingExec:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->mPendingExec:Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->setStyle(II)V

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "put_order_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->mResultInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "good_qrcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->good_qrcode:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 42
    sget p3, Lcom/alibaba/ailabs/genie/shopping/R$layout;->put_order_result_dialog_fragment:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 88
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->initView(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->initData()V

    .line 49
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 131
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->mPendingExec:Z

    .line 114
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
