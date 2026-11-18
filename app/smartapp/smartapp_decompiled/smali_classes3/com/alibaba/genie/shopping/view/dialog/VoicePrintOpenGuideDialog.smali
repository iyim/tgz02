.class public Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;
.super Landroid/app/DialogFragment;
.source "VoicePrintOpenGuideDialog.java"


# instance fields
.field private mBuyClickListener:Landroid/view/View$OnClickListener;

.field private mComeFrom:Ljava/lang/String;

.field private mPendingExec:Z

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field tv_open_start:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->mPendingExec:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->mComeFrom:Ljava/lang/String;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->tv_open_start:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$2;-><init>(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 73
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_open_start:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->tv_open_start:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_open_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 75
    new-instance v0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog$1;-><init>(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public isPendingExec()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->mPendingExec:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->mPendingExec:Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 119
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

    .line 38
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 62
    sget p3, Lcom/alibaba/ailabs/genie/shopping/R$layout;->voice_print_shopping_open_guide_dialog_fragment:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 104
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 111
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
    .locals 3

    .line 49
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 55
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->initView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->initData()V

    .line 69
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setComeFrom(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->mComeFrom:Ljava/lang/String;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 174
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 170
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->mPendingExec:Z

    .line 130
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
