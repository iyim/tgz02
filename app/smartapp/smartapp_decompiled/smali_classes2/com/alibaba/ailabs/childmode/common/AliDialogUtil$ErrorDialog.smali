.class public Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;
.super Landroid/app/Dialog;
.source "AliDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# instance fields
.field private mErrorInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 482
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$style;->DialogFullscreen:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;-><init>(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 486
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 487
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 491
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$style;->DialogFullscreen:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;-><init>(Landroid/content/Context;I)V

    .line 492
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->setInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2

    .line 496
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    move-result v0

    .line 497
    sget v1, Lcom/alibaba/ailabs/genie/setting/R$layout;->dialog_error:I

    invoke-super {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 498
    sget v1, Lcom/alibaba/ailabs/genie/setting/R$id;->tv_error_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->mErrorInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 500
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    :cond_0
    const/4 v0, 0x1

    .line 502
    invoke-super {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public setInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 506
    invoke-super {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$string;->page_error:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->mErrorInfo:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    .line 512
    sget p1, Lcom/alibaba/ailabs/genie/setting/R$drawable;->error:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 514
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$ErrorDialog;->mErrorInfo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
