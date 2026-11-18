.class public Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;
.super Landroid/app/DialogFragment;
.source "VoicePrintPayProcalDialog.java"


# instance fields
.field img_close:Landroid/widget/ImageView;

.field private mBuyClickListener:Landroid/view/View$OnClickListener;

.field private mPendingExec:Z

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private progressBar:Landroid/widget/ProgressBar;

.field private protocal_content:Ljava/lang/String;

.field private protocal_title:Ljava/lang/String;

.field tv_protol_content:Landroid/widget/TextView;

.field tv_protol_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->mPendingExec:Z

    return-void
.end method

.method private initData()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->protocal_title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->tv_protol_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->protocal_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->protocal_content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->tv_protol_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->protocal_content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->img_close:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog$1;-><init>(Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 83
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_protol_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->tv_protol_title:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_protol_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->tv_protol_content:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->tv_protol_content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 89
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->img_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->img_close:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public isPendingExec()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->mPendingExec:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->mPendingExec:Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 141
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 143
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

    .line 52
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->setStyle(II)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "protocal_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->protocal_title:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "protocal_content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->protocal_content:Ljava/lang/String;

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

    .line 72
    sget p3, Lcom/alibaba/ailabs/genie/shopping/R$layout;->voiceprint_protcal_dialog_fragment:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 125
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 60
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
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

    .line 77
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->initView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->initData()V

    .line 79
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

    .line 179
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->mBuyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 175
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 171
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayProcalDialog;->mPendingExec:Z

    .line 154
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
