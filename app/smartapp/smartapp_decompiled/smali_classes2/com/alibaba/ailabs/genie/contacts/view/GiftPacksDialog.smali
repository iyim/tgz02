.class public Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;
.super Landroid/app/Dialog;
.source "GiftPacksDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog$GiftCallback;
    }
.end annotation


# instance fields
.field private blurring_view:Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;

.field private iv_close:Landroid/widget/ImageView;

.field private iv_gift:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mGiftCallback:Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog$GiftCallback;

.field private mMainView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->dialog_gift_packs:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->mMainView:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->blurring_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->blurring_view:Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->iv_gift:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->iv_gift:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->iv_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->iv_close:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->iv_gift:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/view/-$$Lambda$GiftPacksDialog$aIcYCaDospe_iykj45mlTAeiHcY;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/view/-$$Lambda$GiftPacksDialog$aIcYCaDospe_iykj45mlTAeiHcY;-><init>(Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->iv_close:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/view/-$$Lambda$GiftPacksDialog$qnwNqdXO82ulHARKy6kItXmIWSw;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/view/-$$Lambda$GiftPacksDialog$qnwNqdXO82ulHARKy6kItXmIWSw;-><init>(Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$71$GiftPacksDialog(Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->mGiftCallback:Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog$GiftCallback;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog$GiftCallback;->onGiftClick(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$init$72$GiftPacksDialog(Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->dismiss()V

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->mGiftCallback:Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog$GiftCallback;

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog$GiftCallback;->onClose()V

    :cond_0
    return-void
.end method

.method public setGiftCallback(Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog$GiftCallback;)Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->mGiftCallback:Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog$GiftCallback;

    return-object p0
.end method

.method public setRadius(I)Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->blurring_view:Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->setBlurRadius(I)V

    :cond_0
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->blurring_view:Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->setBlurredView(Landroid/view/View;)V

    .line 42
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/GiftPacksDialog;->blurring_view:Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/view/BlurringView;->invalidate()V

    :cond_0
    return-object p0
.end method
