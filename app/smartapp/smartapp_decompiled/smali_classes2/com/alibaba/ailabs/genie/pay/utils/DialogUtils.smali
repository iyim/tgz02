.class public Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;,
        Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$NewContentLayoutMessageDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static showCommonMessageDialog(Landroid/app/Activity;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$1;

    invoke-direct {v0, p0, p7, p8}, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$1;-><init>(Landroid/content/Context;ILcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;)V

    const/4 p8, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 85
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setMessage(I)Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    move-result-object p2

    .line 86
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setTitle(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 87
    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setLeftText(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/pay/R$style;->payTextAppearance_BaseDialog_Button_Neutral:I

    .line 88
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setLeftTextAppearance(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 89
    invoke-virtual {p1, p4}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setRightText(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/pay/R$style;->payTextAppearance_BaseDialog_Button:I

    .line 90
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setRightTextAppearanceId(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 91
    invoke-virtual {p1, p5}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setLeftListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 92
    invoke-virtual {p1, p6}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setRightListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 93
    invoke-virtual {p1, p8}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setCancelable(Z)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setMessage(I)Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setLeftText(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/pay/R$style;->payTextAppearance_BaseDialog_Button_Neutral:I

    .line 98
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setLeftTextAppearance(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 99
    invoke-virtual {p1, p4}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setRightText(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/pay/R$style;->payTextAppearance_BaseDialog_Button:I

    .line 100
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setRightTextAppearanceId(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 101
    invoke-virtual {p1, p5}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setLeftListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 102
    invoke-virtual {p1, p6}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setRightListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 103
    invoke-virtual {p1, p8}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setCancelable(Z)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    .line 106
    :goto_0
    invoke-virtual {v0, p7}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->build(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->isPendingExec()Z

    move-result p2

    if-nez p2, :cond_1

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "commonMessageDialog"

    invoke-virtual {p1, p0, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public static showCommonMessageDialog(Landroid/app/Activity;Ljava/lang/String;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$2;

    invoke-direct {v0, p0, p7, p8}, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils$2;-><init>(Landroid/content/Context;ILcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;)V

    .line 132
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setMessage(I)Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    move-result-object p2

    .line 133
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 134
    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setLeftText(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/pay/R$style;->payTextAppearance_BaseDialog_Button_Neutral:I

    .line 135
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setLeftTextAppearance(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 136
    invoke-virtual {p1, p4}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setRightText(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/pay/R$style;->payTextAppearance_BaseDialog_Button:I

    .line 137
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setRightTextAppearanceId(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 138
    invoke-virtual {p1, p5}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setLeftListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 139
    invoke-virtual {p1, p6}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setRightListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    const/4 p2, 0x1

    .line 140
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setCancelable(Z)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    .line 142
    invoke-virtual {v0, p7}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->build(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->isPendingExec()Z

    move-result p2

    if-nez p2, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "commonMessageDialog"

    invoke-virtual {p1, p0, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public static showOneButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/pay/R$style;->payTextAppearance_BaseDialog_Button_PayNeutral:I

    .line 28
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setNeutralTextAppearance(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/pay/R$string;->va_i_know:I

    .line 29
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setNeutralText(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    .line 30
    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setNeutralListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;

    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->setCancelable(Z)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog$Builder;

    .line 32
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/MessageDialog$Builder;->build(I)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->isPendingExec()Z

    move-result p2

    if-nez p2, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "NeuralDialog"

    invoke-virtual {p1, p0, p2}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
