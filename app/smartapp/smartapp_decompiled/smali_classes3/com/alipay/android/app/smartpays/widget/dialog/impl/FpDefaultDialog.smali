.class public Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;
.super Ljava/lang/Object;
.source "FpDefaultDialog.java"

# interfaces
.implements Lcom/alipay/android/app/smartpays/widget/dialog/IHardwarePayDialog;


# instance fields
.field private btnDivider:Landroid/view/View;

.field private btnSpliter:Landroid/view/View;

.field private cancel:Landroid/widget/Button;

.field private img:Landroid/widget/ImageView;

.field private mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

.field private mIsExit:Z

.field private mListener:Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

.field private mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

.field private mVerifyEnum:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

.field private tips:Landroid/widget/TextView;

.field private toPwd:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mIsExit:Z

    .line 48
    sget-object v0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;->OPEN:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mVerifyEnum:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mIsExit:Z

    .line 52
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mVerifyEnum:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)Landroid/app/Dialog;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mIsExit:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mListener:Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->tips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Landroid/widget/Button;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->cancel:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Landroid/widget/Button;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->toPwd:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->btnSpliter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->btnDivider:Landroid/view/View;

    return-object p0
.end method

.method private showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 80
    :cond_0
    iput-object p3, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mListener:Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;

    const/4 p3, 0x0

    .line 81
    iput-boolean p3, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mIsExit:Z

    .line 82
    new-instance v1, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    invoke-direct {v1, p1}, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    .line 84
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v3, "safepay_fp_dialog_layout"

    invoke-interface {v2, v3}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 87
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocusFromTouch()Z

    .line 88
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fp_dialog_tips"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->tips:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fp_dialog_icon"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->img:Landroid/widget/ImageView;

    .line 91
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fp_dialog_spliter"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->btnSpliter:Landroid/view/View;

    .line 92
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fp_dialog_divider"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->btnDivider:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fp_dialog_cancel"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->cancel:Landroid/widget/Button;

    .line 95
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->cancel:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$2;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fp_dialog_pwd"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->toPwd:Landroid/widget/Button;

    .line 109
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->toPwd:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$3;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$3;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mVerifyEnum:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

    sget-object v1, Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;->OPEN:Lcom/alipay/android/app/smartpays/widget/dialog/impl/VerifyEnum;

    if-ne p1, v1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->toPwd:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->btnDivider:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->toPwd:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->btnDivider:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 132
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string v2, "safepay_fp_open"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->tips:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_1
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;->requestWindowFeature(I)Z

    .line 138
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;->setContentView(Landroid/view/View;)V

    .line 139
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    invoke-virtual {p1, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;->setCancelable(Z)V

    .line 140
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    new-instance p3, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$4;

    invoke-direct {p3, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$4;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)V

    invoke-virtual {p1, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 151
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    new-instance p3, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$5;

    invoke-direct {p3, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$5;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)V

    invoke-virtual {p1, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 162
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 164
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p3

    const-string v0, "fpV1"

    const-string v1, "ShowFpDialogEx"

    invoke-virtual {p3, v0, v1, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :goto_2
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HardwarePayValidateDialog msg:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HardwarePayValidateDialog::showDialog"

    invoke-virtual {p1, p3, p2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    return-object p1
.end method


# virtual methods
.method public dismiss(I)V
    .locals 4

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mIsExit:Z

    .line 243
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->tips:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$9;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public dismiss(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mIsExit:Z

    .line 185
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    new-instance p1, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$7;

    invoke-direct {p1, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$7;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAllButtonsGone()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mDialog:Lcom/alipay/android/app/smartpays/widget/dialog/DismissCatchDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->cancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->toPwd:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->btnSpliter:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->btnDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 228
    new-instance v1, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$8;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$8;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    return-void
.end method

.method public showAnimation()V
    .locals 11

    .line 208
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 210
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/high16 v4, -0x41000000    # -0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x3c

    .line 216
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v2, 0x2

    .line 217
    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 218
    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 221
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V
    .locals 1

    .line 64
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$1;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/widget/dialog/IDialogActionListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateMsg(Ljava/lang/String;II)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->tips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;->tips:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog$6;-><init>(Lcom/alipay/android/app/smartpays/widget/dialog/impl/FpDefaultDialog;Ljava/lang/String;I)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
