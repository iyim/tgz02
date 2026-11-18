.class public Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;
.super Landroid/app/DialogFragment;
.source "VoicePrintOpenFailureDialog.java"


# instance fields
.field private mBuyClickListener:Landroid/view/View$OnClickListener;

.field private mPendingExec:Z

.field private name:Ljava/lang/String;

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field tv_giveup:Landroid/widget/TextView;

.field tv_retry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->mPendingExec:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->name:Ljava/lang/String;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->tv_giveup:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$1;-><init>(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->tv_retry:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog$2;-><init>(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 72
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_giveup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->tv_giveup:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->tv_retry:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public isPendingExec()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->mPendingExec:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 177
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->mPendingExec:Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 155
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

    .line 43
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->setStyle(II)V

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->name:Ljava/lang/String;

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

    .line 61
    sget p3, Lcom/alibaba/ailabs/genie/shopping/R$layout;->voiceprint_pay_failure_dialog_fragment:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 140
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 50
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

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

    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->initView(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->initData()V

    .line 68
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setBuyClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 196
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->mBuyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 192
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->mPendingExec:Z

    .line 168
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
