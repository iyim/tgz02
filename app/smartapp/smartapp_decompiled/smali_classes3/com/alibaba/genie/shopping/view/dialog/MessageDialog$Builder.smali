.class public Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;
.super Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/view/dialog/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder<",
        "Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog$Builder;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected bridge synthetic createDialog()Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->createDialog()Lcom/alibaba/genie/shopping/view/dialog/MessageDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createDialog()Lcom/alibaba/genie/shopping/view/dialog/MessageDialog;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 63
    new-instance v0, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog;-><init>()V

    return-object v0
.end method

.method public setMessage(I)Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 57
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/MessageDialog$Builder;->mParams:Lcom/alibaba/genie/shopping/view/dialog/BuildParams;

    iput-object p1, v0, Lcom/alibaba/genie/shopping/view/dialog/BuildParams;->message:Ljava/lang/CharSequence;

    return-object p0
.end method
