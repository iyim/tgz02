.class public Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;
.super Landroid/app/DialogFragment;
.source "ShoppingProtocalDialog.java"


# instance fields
.field private good_qrcode:Ljava/lang/String;

.field img_close_dialog:Landroid/widget/ImageView;

.field img_taobao_qrcode:Landroid/widget/ImageView;

.field private mBuyClickListener:Landroid/view/View$OnClickListener;

.field private mPendingExec:Z

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
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->mPendingExec:Z

    return-void
.end method

.method private initData()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 63
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->img_close_dialog:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->img_close_dialog:Landroid/widget/ImageView;

    .line 64
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->img_close_dialog:Landroid/widget/ImageView;

    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public isPendingExec()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->mPendingExec:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->mPendingExec:Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 92
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

    .line 32
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->setStyle(II)V

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

    .line 39
    sget p3, Lcom/alibaba/ailabs/genie/shopping/R$layout;->shopping_protocal_dialog_fragment:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStart()V
    .locals 5

    .line 51
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->initView(Landroid/view/View;)V

    .line 45
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->initData()V

    .line 46
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

    .line 152
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 148
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->mPendingExec:Z

    .line 103
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
