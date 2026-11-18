.class public Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;
.super Landroid/app/Dialog;
.source "CameraConfirmDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraConfirmDialog"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    sget v0, Lcom/alibaba/ailabs/genie/setting/R$style;->dialog_bottom_full:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    move-result v1

    .line 36
    sget v2, Lcom/alibaba/ailabs/genie/setting/R$layout;->camera_confirm_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;->setContentView(Landroid/view/View;)V

    .line 39
    sget v2, Lcom/alibaba/ailabs/genie/setting/R$id;->confirm:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 40
    sget v3, Lcom/alibaba/ailabs/genie/setting/R$id;->cancel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    new-instance v3, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v2, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog$2;-><init>(Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog$3;-><init>(Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz v1, :cond_0

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/CameraConfirmDialog;->init()V

    return-void
.end method
