.class public Lcom/alibaba/genie/shopping/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;,
        Lcom/alibaba/genie/shopping/utils/DialogUtils$NewContentLayoutMessageDialog;
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

.method public static showCommonMessageDialog(Landroid/app/Activity;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;
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

    .line 68
    new-instance v0, Lcom/alibaba/genie/shopping/utils/DialogUtils$1;

    invoke-direct {v0, p0, p7, p8}, Lcom/alibaba/genie/shopping/utils/DialogUtils$1;-><init>(Landroid/content/Context;ILcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;)V

    const/4 p8, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 84
    invoke-virtual {v0, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setMessage(I)Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    move-result-object p2

    .line 85
    invoke-virtual {p2, p1}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setTitle(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 86
    invoke-virtual {p1, p3}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setLeftText(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingTextAppearance_BaseDialog_Button_Neutral:I

    .line 87
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setLeftTextAppearance(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 88
    invoke-virtual {p1, p4}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setRightText(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingTextAppearance_BaseDialog_Button:I

    .line 89
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setRightTextAppearanceId(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 90
    invoke-virtual {p1, p5}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setLeftListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 91
    invoke-virtual {p1, p6}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setRightListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 92
    invoke-virtual {p1, p8}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setCancelable(Z)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setMessage(I)Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p3}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setLeftText(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingTextAppearance_BaseDialog_Button_Neutral:I

    .line 97
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setLeftTextAppearance(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 98
    invoke-virtual {p1, p4}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setRightText(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingTextAppearance_BaseDialog_Button:I

    .line 99
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setRightTextAppearanceId(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 100
    invoke-virtual {p1, p5}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setLeftListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 101
    invoke-virtual {p1, p6}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setRightListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 102
    invoke-virtual {p1, p8}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setCancelable(Z)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    .line 105
    :goto_0
    invoke-virtual {v0, p7}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->build(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->isPendingExec()Z

    move-result p2

    if-nez p2, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "commonMessageDialog"

    invoke-virtual {p1, p0, p2}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public static showCommonMessageDialog(Landroid/app/Activity;Ljava/lang/String;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;
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

    .line 116
    new-instance v0, Lcom/alibaba/genie/shopping/utils/DialogUtils$2;

    invoke-direct {v0, p0, p7, p8}, Lcom/alibaba/genie/shopping/utils/DialogUtils$2;-><init>(Landroid/content/Context;ILcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;)V

    .line 131
    invoke-virtual {v0, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setMessage(I)Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    move-result-object p2

    .line 132
    invoke-virtual {p2, p1}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 133
    invoke-virtual {p1, p3}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setLeftText(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingTextAppearance_BaseDialog_Button_Neutral:I

    .line 134
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setLeftTextAppearance(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 135
    invoke-virtual {p1, p4}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setRightText(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingTextAppearance_BaseDialog_Button:I

    .line 136
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setRightTextAppearanceId(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 137
    invoke-virtual {p1, p5}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setLeftListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 138
    invoke-virtual {p1, p6}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setRightListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    const/4 p2, 0x1

    .line 139
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setCancelable(Z)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    .line 141
    invoke-virtual {v0, p7}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->build(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->isPendingExec()Z

    move-result p2

    if-nez p2, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "commonMessageDialog"

    invoke-virtual {p1, p0, p2}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public static showOneButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    new-instance v0, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p1}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$string;->va_sure:I

    .line 28
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setNeutralText(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingTextAppearance_BaseDialog_Button_Neutral:I

    .line 29
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setNeutralTextAppearance(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    .line 30
    invoke-virtual {p1, p3}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setNeutralListener(Landroid/view/View$OnClickListener;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setCancelable(Z)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;

    const/4 p1, 0x0

    .line 32
    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->build(I)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->isPendingExec()Z

    move-result p2

    if-nez p2, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "NeuralDialog"

    invoke-virtual {p1, p0, p2}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
