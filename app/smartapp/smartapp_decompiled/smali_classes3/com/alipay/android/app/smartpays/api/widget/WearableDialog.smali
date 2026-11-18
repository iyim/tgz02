.class public Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;
.super Ljava/lang/Object;
.source "WearableDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;,
        Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x0

.field public static final ACTION_TO_PWD:I = 0x2


# instance fields
.field private btnDivider:Landroid/view/View;

.field private btnSpliter:Landroid/view/View;

.field private cancel:Landroid/widget/Button;

.field private loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

.field private mDialog:Landroid/app/Dialog;

.field private mIsExit:Z

.field private mListener:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

.field private mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

.field private mVertifyEnum:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

.field private tips:Landroid/widget/TextView;

.field private toPwd:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mIsExit:Z

    .line 51
    sget-object v0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;->VERIFY:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mVertifyEnum:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)Landroid/app/Dialog;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mIsExit:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mListener:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->cancel:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->toPwd:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnSpliter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnDivider:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Landroid/app/Dialog;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/smartpays/res/provider/ResourceProvider;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;

    invoke-direct {p1, v0}, Lcom/alipay/android/app/smartpays/res/loader/ResourceLoader;-><init>(Lcom/alipay/android/app/smartpays/api/IResourceProvider;)V

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    return-object p1
.end method

.method private showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 83
    :cond_0
    iput-object p3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mListener:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    const/4 p3, 0x0

    .line 84
    iput-boolean p3, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mIsExit:Z

    .line 85
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    .line 87
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 88
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v2

    const-string v3, "safepay_wear_dialog_layout"

    invoke-interface {v2, v3}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 90
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocusFromTouch()Z

    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v1

    const-string v2, "safepay_wear_dialog_tips"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    .line 92
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v1

    const-string v2, "safepay_wear_dialog_loading"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    .line 94
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v1

    const-string v2, "safepay_wear_dialog_spliter"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnSpliter:Landroid/view/View;

    .line 95
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v1

    const-string v2, "safepay_wear_dialog_divider"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnDivider:Landroid/view/View;

    .line 97
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v1

    const-string v2, "safepay_wear_dialog_cancel"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->cancel:Landroid/widget/Button;

    .line 98
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->cancel:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$2;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$2;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object v1

    const-string v2, "safepay_wear_dialog_pwd"

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->toPwd:Landroid/widget/Button;

    .line 113
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->toPwd:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$3;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$3;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mVertifyEnum:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    sget-object v2, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;->VERIFY:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    if-ne v1, v2, :cond_1

    .line 129
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->toPwd:Landroid/widget/Button;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnDivider:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    invoke-virtual {v1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->spin()V

    .line 134
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    invoke-virtual {v1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->start()V

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->getResourceLoader(Landroid/content/Context;)Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    move-result-object p1

    const-string v2, "safepay_wear_verifying"

    invoke-interface {p1, v2}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 143
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 144
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 145
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    new-instance p3, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$4;

    invoke-direct {p3, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$4;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 156
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    new-instance p3, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$5;

    invoke-direct {p3, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$5;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 167
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 169
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p3

    const-string v0, "WearV1"

    const-string v1, "ShowWearDialogEx"

    invoke-virtual {p3, v0, v1, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WearableDialog msg:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WearableDialog::showDialog"

    invoke-virtual {p1, p3, p2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mIsExit:Z

    .line 193
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismiss(I)V
    .locals 4

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mIsExit:Z

    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$9;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAllButtonsGone()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->cancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->toPwd:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnSpliter:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->btnDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 229
    new-instance v1, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$8;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setResourceLoader(Lcom/alipay/android/app/smartpays/res/IResourceLoader;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mResourceLoader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    return-void
.end method

.method public showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$1;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showLoadingSuccess()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->loading:Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    if-eqz v0, :cond_0

    .line 207
    new-instance v1, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$7;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$7;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateMsg(Ljava/lang/String;II)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->tips:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$6;-><init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;Ljava/lang/String;I)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
