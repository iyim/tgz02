.class public Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;
.super Ljava/lang/Object;
.source "CameraConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activity:Landroid/support/v4/app/FragmentActivity;

.field private bundle:Landroid/os/Bundle;

.field private cancelClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

.field private okClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->bundle:Landroid/os/Bundle;

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->activity:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public setCancelable(Z)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->bundle:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->access$200(Landroid/os/Bundle;Z)V

    return-object p0
.end method

.method public setCancelableOutside(Z)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->bundle:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->access$300(Landroid/os/Bundle;Z)V

    return-object p0
.end method

.method public setMessage(I)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->bundle:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->access$100(Landroid/os/Bundle;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNegativeButton(ILcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->bundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cancel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->cancelClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->bundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ok"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->okClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

    return-object p0
.end method

.method public setTitle(I)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->bundle:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->access$000(Landroid/os/Bundle;Ljava/lang/String;)V

    return-object p0
.end method

.method public show()Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;
    .locals 3

    .line 87
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 89
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->okClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->access$402(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

    .line 90
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->cancelClickListener:Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->access$502(Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;

    .line 91
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method
