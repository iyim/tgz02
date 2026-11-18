.class public Lcom/alibaba/genie/tradepay/view/CancelPayDialog;
.super Landroid/app/DialogFragment;
.source "CancelPayDialog.java"


# instance fields
.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field tv_giveup:Landroid/widget/TextView;

.field tv_retry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/genie/tradepay/view/CancelPayDialog;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/tradepay/view/CancelPayDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$style;->shoppingCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->setStyle(II)V

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

    .line 40
    sget p3, Lcom/alibaba/ailabs/genie/shoppingsdk/R$layout;->tradepay_cancel_layout:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 29
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    sget v0, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->tv_giveup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->tv_giveup:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->tv_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->tv_retry:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->dialog_ordercode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8ba2\u5355\u5df2\u521b\u5efa\u6210\u529f\uff0c\u8ba2\u5355\u53f7\u662f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    sget v0, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->dialog_nickname:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u53d6\u6d88\u540e\u60a8\u4e5f\u53ef\u4ee5\u524d\u5f80 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u7684"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->tv_giveup:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/tradepay/view/CancelPayDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog$1;-><init>(Lcom/alibaba/genie/tradepay/view/CancelPayDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->tv_retry:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/tradepay/view/CancelPayDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog$2;-><init>(Lcom/alibaba/genie/tradepay/view/CancelPayDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
