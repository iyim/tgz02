.class public abstract Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;
.super Landroid/app/DialogFragment;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;
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

.field protected mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

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
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mPendingExec:Z

    .line 50
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$1;-><init>(Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->onLeftListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->onRightListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->onNeutralListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private setTextAppearance(Landroid/widget/TextView;I)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 214
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 215
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bindDefaultView(Landroid/view/View;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    if-eqz v0, :cond_c

    .line 141
    iget v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->backgroundResId:I

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget v1, v1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->backgroundResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->backgroundColorResId:I

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget v1, v1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->backgroundColorResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->tg_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 158
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->noButton:Z

    if-eqz v0, :cond_3

    .line 164
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->view_one_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->isNeutralDialog:Z

    if-eqz v0, :cond_6

    .line 171
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->tg_dialog_neutral_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    .line 172
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    if-eqz p1, :cond_c

    .line 173
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->neutralText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 174
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->neutralText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget p1, p1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->neutralTextColor:I

    if-eqz p1, :cond_5

    .line 177
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->neutralTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 179
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonNeutral:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->neutralTextAppearance:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->setTextAppearance(Landroid/widget/TextView;I)V

    goto/16 :goto_0

    .line 183
    :cond_6
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->tg_dialog_right_button_smartapp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->rightText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->rightText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->rightTextColor:I

    if-eqz v0, :cond_8

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget v1, v1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->rightTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 191
    :cond_8
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget v1, v1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->rightTextAppearance:I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 195
    :cond_9
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->tg_dialog_left_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    .line 196
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    if-eqz p1, :cond_c

    .line 197
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->leftText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 198
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->leftText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_a
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget p1, p1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->leftTextColor:I

    if-eqz p1, :cond_b

    .line 201
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->leftTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 203
    :cond_b
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mButtonLeft:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget v0, v0, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->leftTextAppearance:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_c
    :goto_0
    return-void
.end method

.method protected bindView(Landroid/view/View;)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->getLayoutRes()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_tg_pay_base_dialog_fragment:I

    if-ne v0, v1, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->bindDefaultView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 114
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_tg_pay_base_dialog_fragment:I

    return v0
.end method

.method public getParams()Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    return-object v0
.end method

.method public isPendingExec()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mPendingExec:Z

    return v0
.end method

.method protected abstract modifyContentView(Landroid/view/View;)V
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 261
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mPendingExec:Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 231
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 233
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
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$style;->GeniePayCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->setStyle(II)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_build_params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->getArguments()Landroid/os/Bundle;

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
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->getLayoutRes()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 223
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 225
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
    sget v0, Lcom/alibaba/ailabs/genie/pay/R$id;->tg_dialog_button_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 88
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->noButton:Z

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mParams:Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;

    iget-boolean v1, v1, Lcom/alibaba/ailabs/genie/pay/dialog/BuildParams;->isNeutralDialog:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_tg_pay_base_dialog_fragment_button_one:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_tg_pay_dialog_fragment_button_two:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 92
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 95
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->modifyContentView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->bindView(Landroid/view/View;)V

    .line 97
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setLeftListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 281
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->onLeftListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setNeutralListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 285
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->onNeutralListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 277
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 273
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setRightListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 289
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->onRightListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mPendingExec:Z

    .line 244
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showAllowingStateLossExt(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->mPendingExec:Z

    .line 254
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 255
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 256
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
