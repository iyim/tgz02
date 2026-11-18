.class public abstract Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;
.super Landroid/app/DialogFragment;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
    }
.end annotation


# static fields
.field private static final KEY_BUILD_PARAMS:Ljava/lang/String; = "key_build_params"

.field public static final KEY_CONTENT_LAYOUT_ID:Ljava/lang/String; = "contentViewGroupLayoutId"


# instance fields
.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field mButtonLeft:Landroid/widget/Button;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonRight:Landroid/widget/Button;

.field protected mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

.field private mPendingExec:Z

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private onLeftListener:Landroid/view/View$OnClickListener;

.field private onNeutralListener:Landroid/view/View$OnClickListener;

.field private onRightListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mPendingExec:Z

    .line 50
    new-instance v0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$1;-><init>(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->onLeftListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->onRightListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->onNeutralListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private setTextAppearance(Landroid/widget/TextView;I)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 213
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 214
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bindDefaultView(Landroid/view/View;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    if-eqz v0, :cond_c

    .line 140
    iget v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->backgroundResId:I

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget v1, v1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->backgroundResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->backgroundColorResId:I

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget v1, v1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->backgroundColorResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tg_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 157
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-object v1, v1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-object v1, v1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-boolean v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->noButton:Z

    if-eqz v0, :cond_3

    .line 163
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->view_one_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-boolean v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->isNeutralDialog:Z

    if-eqz v0, :cond_6

    .line 170
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tg_dialog_neutral_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    .line 171
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    if-eqz p1, :cond_c

    .line 172
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->neutralText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 173
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->neutralText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget p1, p1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->neutralTextColor:I

    if-eqz p1, :cond_5

    .line 176
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->neutralTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 178
    :cond_5
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->neutralTextAppearance:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setTextAppearance(Landroid/widget/TextView;I)V

    goto/16 :goto_0

    .line 182
    :cond_6
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tg_dialog_right_button_smartapp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 184
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->rightText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 185
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-object v1, v1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->rightText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_7
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->rightTextColor:I

    if-eqz v0, :cond_8

    .line 188
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget v1, v1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->rightTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget v1, v1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->rightTextAppearance:I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 194
    :cond_9
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tg_dialog_left_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    .line 195
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    if-eqz p1, :cond_c

    .line 196
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->leftText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 197
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->leftText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_a
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget p1, p1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->leftTextColor:I

    if-eqz p1, :cond_b

    .line 200
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->leftTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 202
    :cond_b
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->leftTextAppearance:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_c
    :goto_0
    return-void
.end method

.method protected bindView(Landroid/view/View;)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->getLayoutRes()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->tg_shopping_base_dialog_fragment:I

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->bindDefaultView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 113
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$layout;->tg_shopping_base_dialog_fragment:I

    return v0
.end method

.method public getParams()Lcom/alibaba/genie/shopping/view/dialog/BuildParams;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    return-object v0
.end method

.method public isPendingExec()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mPendingExec:Z

    return v0
.end method

.method protected abstract modifyContentView(Landroid/view/View;)V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 260
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 261
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mPendingExec:Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 230
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 232
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

    .line 72
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->setStyle(II)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_build_params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "contentViewGroupLayoutId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

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

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->getLayoutRes()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tg_dialog_button_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 88
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->noButton:Z

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iget-boolean v1, v1, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->isNeutralDialog:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->tg_shopping_base_dialog_fragment_button_one:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->tg_shopping_dialog_fragment_button_two:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 94
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->modifyContentView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->bindView(Landroid/view/View;)V

    .line 96
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setLeftListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 280
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->onLeftListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setNeutralListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 284
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->onNeutralListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 276
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 272
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setRightListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 288
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->onRightListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mPendingExec:Z

    .line 243
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showAllowingStateLossExt(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->mPendingExec:Z

    .line 253
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 254
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 255
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
