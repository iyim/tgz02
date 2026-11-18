.class public abstract Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;
.super Landroid/app/DialogFragment;
.source "PayBaseDialog.java"


# static fields
.field private static final KEY_BUILD_PARAMS:Ljava/lang/String; = "key_build_params"

.field public static final KEY_CONTENT_LAYOUT_ID:Ljava/lang/String; = "contentViewGroupLayoutId"


# instance fields
.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field mButtonLeft:Landroid/widget/Button;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonRight:Landroid/widget/Button;

.field private mPendingExec:Z

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private onLeftListener:Landroid/view/View$OnClickListener;

.field private onNeutralListener:Landroid/view/View$OnClickListener;

.field private onRightListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mPendingExec:Z

    .line 42
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;-><init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->onLeftListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->onRightListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->onNeutralListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;)V
.end method

.method protected abstract getLayoutRes()I
.end method

.method public isPendingExec()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mPendingExec:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mPendingExec:Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 141
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

    .line 64
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$style;->payCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    .line 89
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 90
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 93
    invoke-virtual {p3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->getLayoutRes()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 113
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 72
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->bindView(Landroid/view/View;)V

    .line 108
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setLeftListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->onLeftListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setNeutralListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->onNeutralListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 185
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 181
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setRightListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->onRightListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mPendingExec:Z

    .line 152
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showAllowingStateLossExt(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mPendingExec:Z

    .line 162
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 163
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 164
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
