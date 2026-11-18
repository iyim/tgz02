.class public Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BaseDialogFragment.java"


# static fields
.field private static final DIALOG_CANELABLE:Ljava/lang/String; = "dialog_cancelable"

.field private static final DIALOG_CANELABLE_OUTSIDE:Ljava/lang/String; = "dialog_cancelable_outside"

.field private static final DIALOG_ID:Ljava/lang/String; = "dialog_id"

.field private static final DIALOG_MESSAGE:Ljava/lang/String; = "dialog_message"

.field private static final DIALOG_TITLE:Ljava/lang/String; = "dialog_title"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mDialogId:I

.field protected mIsCancelable:Z

.field protected mIsCancelableOutside:Z

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected static putCancelable(Landroid/os/Bundle;Z)V
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "dialog_cancelable"

    .line 48
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected static putCancelableOutside(Landroid/os/Bundle;Z)V
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "dialog_cancelable_outside"

    .line 53
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected static putId(Landroid/os/Bundle;I)V
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "dialog_id"

    .line 38
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected static putMessage(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "dialog_message"

    .line 58
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static putTitle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "dialog_title"

    .line 43
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getMessage()Ljava/lang/String;
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "dialog_message"

    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;->parseArgs(Landroid/os/Bundle;)V

    .line 74
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;->mIsCancelable:Z

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method protected parseArgs(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "dialog_id"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;->mDialogId:I

    const-string v0, "dialog_title"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;->mTitle:Ljava/lang/String;

    const-string v0, "dialog_cancelable"

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;->mIsCancelable:Z

    const-string v0, "dialog_cancelable_outside"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseDialogFragment;->mIsCancelableOutside:Z

    :cond_0
    return-void
.end method
