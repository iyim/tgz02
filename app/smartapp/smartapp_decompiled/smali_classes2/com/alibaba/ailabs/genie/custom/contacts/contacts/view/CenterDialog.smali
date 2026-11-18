.class public Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;
.super Landroid/app/Dialog;
.source "CenterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog$OnCenterItemClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listenedItems:[I

.field private listener:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog$OnCenterItemClickListener;

.field private position:I

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[I)V
    .locals 1

    .line 34
    sget v0, Lcom/alibaba/ailabs/genie/custom/contacts/R$style;->custom_dialog_custom:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->context:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->listenedItems:[I

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->rootView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->position:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->dismiss()V

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->listener:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog$OnCenterItemClickListener;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog$OnCenterItemClickListener;->OnCenterItemClick(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 45
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->listenedItems:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 57
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog$OnCenterItemClickListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->listener:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog$OnCenterItemClickListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/view/CenterDialog;->position:I

    return-void
.end method
