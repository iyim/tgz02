.class public abstract Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
.super Ljava/lang/Object;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLeftButtonListener:Landroid/view/View$OnClickListener;

.field protected mNeutralButtonListener:Landroid/view/View$OnClickListener;

.field protected mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field protected mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

.field protected mRightButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mContext:Landroid/content/Context;

    .line 304
    new-instance p1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;-><init>()V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    return-void
.end method


# virtual methods
.method public build(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;
    .locals 4

    .line 421
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->createDialog()Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    move-result-object v0

    .line 423
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 424
    iget-object v2, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    const-string v3, "key_build_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "contentViewGroupLayoutId"

    .line 425
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 429
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 430
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 432
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mLeftButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setLeftListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mNeutralButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setNeutralListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mRightButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setRightListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-boolean p1, p1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->cancelable:Z

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setCancelable(Z)V

    return-object v0
.end method

.method protected abstract createDialog()Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;
.end method

.method public setBackground(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->backgroundResId:I

    return-object p0
.end method

.method public setBackgroundColorResId(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->backgroundColorResId:I

    return-object p0
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")TT;"
        }
    .end annotation

    .line 406
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput-boolean p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->cancelable:Z

    return-object p0
.end method

.method public setLeftListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mLeftButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setLeftText(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->setLeftText(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLeftText(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput-object p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->leftText:Ljava/lang/CharSequence;

    .line 384
    iget-boolean p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->isNeutralDialog:Z

    return-object p0
.end method

.method public setLeftTextAppearance(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->leftTextAppearance:I

    return-object p0
.end method

.method public setLeftTextColor(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->leftTextColor:I

    return-object p0
.end method

.method public setNeutralListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mNeutralButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setNeutralText(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->setNeutralText(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralText(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput-object p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->neutralText:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 359
    iput-boolean p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->isNeutralDialog:Z

    return-object p0
.end method

.method public setNeutralTextAppearance(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->neutralTextAppearance:I

    return-object p0
.end method

.method public setNeutralTextColor(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->neutralTextColor:I

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ")TT;"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setRightListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mRightButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setRightText(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->setRightText(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRightText(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput-object p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->rightText:Ljava/lang/CharSequence;

    .line 327
    iget-boolean p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->isNeutralDialog:Z

    return-object p0
.end method

.method public setRightTextAppearanceId(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->rightTextAppearance:I

    return-object p0
.end method

.method public setRightTextColor(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->rightTextColor:I

    return-object p0
.end method

.method public setTitle(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput-object p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->title:Ljava/lang/CharSequence;

    return-object p0
.end method
