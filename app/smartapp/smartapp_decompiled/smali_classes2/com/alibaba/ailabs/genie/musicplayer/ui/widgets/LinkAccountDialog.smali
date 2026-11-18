.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;
.super Landroid/app/Dialog;
.source "LinkAccountDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog$ButtonCallBack;
    }
.end annotation


# instance fields
.field private bindBtn:Landroid/widget/Button;

.field private callBack:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog$ButtonCallBack;

.field private cancelBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initView()V
    .locals 2

    .line 59
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->bindBtn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->bindBtn:Landroid/widget/Button;

    .line 60
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->cancelBtn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->cancelBtn:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->bindBtn:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/-$$Lambda$LinkAccountDialog$2BeOFN00lqgb4dBuQurjSnX2cRg;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/-$$Lambda$LinkAccountDialog$2BeOFN00lqgb4dBuQurjSnX2cRg;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->cancelBtn:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/-$$Lambda$LinkAccountDialog$K1crl8uHmRawH7csJKxripP3daU;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/-$$Lambda$LinkAccountDialog$K1crl8uHmRawH7csJKxripP3daU;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$34$LinkAccountDialog(Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->dismiss()V

    .line 64
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->callBack:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog$ButtonCallBack;

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog$ButtonCallBack;->OnConfirm()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$35$LinkAccountDialog(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->dismiss()V

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->callBack:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog$ButtonCallBack;

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog$ButtonCallBack;->OnCancel()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->dialog_link_account:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 37
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 38
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->mContext:Landroid/content/Context;

    const/high16 v2, 0x44110000    # 580.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 39
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->mContext:Landroid/content/Context;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->initView()V

    return-void
.end method

.method public setCallBack(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog$ButtonCallBack;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog;->callBack:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/LinkAccountDialog$ButtonCallBack;

    return-void
.end method
