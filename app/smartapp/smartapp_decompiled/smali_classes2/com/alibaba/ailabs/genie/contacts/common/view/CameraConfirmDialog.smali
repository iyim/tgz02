.class public Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;
.source "CameraConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;,
        Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;
    }
.end annotation


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

.field private mNegativeClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

.field private mPositiveClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->putTitle(Landroid/os/Bundle;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->putMessage(Landroid/os/Bundle;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Landroid/os/Bundle;Z)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->putCancelable(Landroid/os/Bundle;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Landroid/os/Bundle;Z)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->putCancelableOutside(Landroid/os/Bundle;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mPositiveClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mNegativeClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

    return-object p1
.end method

.method private init()V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 127
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 129
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 130
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 131
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 132
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$83$CameraConfirmDialog(Landroid/view/View;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mPositiveClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

    if-eqz p1, :cond_0

    .line 113
    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;->onClick(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$84$CameraConfirmDialog(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mNegativeClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;->onClick(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 101
    sget p3, Lcom/alibaba/ailabs/genie/contacts/R$layout;->contacts_camera_confirm_dialog:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mIsCancelableOutside:Z

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->init()V

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mTitle:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mTitle:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;->tvTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;->tvTitle:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;->conTvMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;->tvOk:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "ok"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;->tvOk:Landroid/widget/TextView;

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$CameraConfirmDialog$9_G1S-0kHwoAtINLi1A3teuZYXs;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$CameraConfirmDialog$9_G1S-0kHwoAtINLi1A3teuZYXs;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;->conTvCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "cancel"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;->conTvCancel:Landroid/widget/TextView;

    new-instance p2, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$CameraConfirmDialog$ZdsPt1FuBgdC9zl_8Oih-BKnmJU;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$CameraConfirmDialog$ZdsPt1FuBgdC9zl_8Oih-BKnmJU;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
