.class public Lb/k/d/b;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public X:Landroid/os/Handler;

.field public Y:Ljava/lang/Runnable;

.field public Z:Landroid/content/DialogInterface$OnCancelListener;

.field public a0:Landroid/content/DialogInterface$OnDismissListener;

.field public b0:I

.field public c0:I

.field public d0:Z

.field public e0:Z

.field public f0:I

.field public g0:Z

.field public h0:Landroid/app/Dialog;

.field public i0:Z

.field public j0:Z

.field public k0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lb/k/d/b$a;

    invoke-direct {v0, p0}, Lb/k/d/b$a;-><init>(Lb/k/d/b;)V

    iput-object v0, p0, Lb/k/d/b;->Y:Ljava/lang/Runnable;

    new-instance v0, Lb/k/d/b$b;

    invoke-direct {v0, p0}, Lb/k/d/b$b;-><init>(Lb/k/d/b;)V

    iput-object v0, p0, Lb/k/d/b;->Z:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lb/k/d/b$c;

    invoke-direct {v0, p0}, Lb/k/d/b$c;-><init>(Lb/k/d/b;)V

    iput-object v0, p0, Lb/k/d/b;->a0:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput v0, p0, Lb/k/d/b;->b0:I

    iput v0, p0, Lb/k/d/b;->c0:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/d/b;->d0:Z

    iput-boolean v0, p0, Lb/k/d/b;->e0:Z

    const/4 v0, -0x1

    iput v0, p0, Lb/k/d/b;->f0:I

    return-void
.end method


# virtual methods
.method public D0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lb/k/d/b;->a(ZZ)V

    return-void
.end method

.method public E0()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    return-object v0
.end method

.method public F0()I
    .locals 1

    iget v0, p0, Lb/k/d/b;->c0:I

    return v0
.end method

.method public final G0()Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Lb/k/d/b;->E0()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/app/Dialog;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    iget-boolean p1, p0, Lb/k/d/b;->k0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/k/d/b;->j0:Z

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lb/k/d/b;->e0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g()Lb/k/d/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3
    iget-object v0, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    iget-boolean v1, p0, Lb/k/d/b;->d0:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    iget-object v1, p0, Lb/k/d/b;->Z:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    iget-object v1, p0, Lb/k/d/b;->a0:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public a(Lb/k/d/p;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/d/b;->j0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/k/d/b;->k0:Z

    invoke-virtual {p1}, Lb/k/d/p;->a()Lb/k/d/v;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0, p0, p2, v1}, Lb/k/d/v;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p1}, Lb/k/d/v;->a()I

    return-void
.end method

.method public final a(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lb/k/d/b;->j0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/d/b;->j0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/k/d/b;->k0:Z

    iget-object v1, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Lb/k/d/b;->X:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Lb/k/d/b;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lb/k/d/b;->X:Landroid/os/Handler;

    iget-object v1, p0, Lb/k/d/b;->Y:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lb/k/d/b;->i0:Z

    iget p2, p0, Lb/k/d/b;->f0:I

    if-ltz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object p1

    iget p2, p0, Lb/k/d/b;->f0:I

    invoke-virtual {p1, p2, v0}, Lb/k/d/p;->a(II)V

    const/4 p1, -0x1

    iput p1, p0, Lb/k/d/b;->f0:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->y()Lb/k/d/p;

    move-result-object p2

    invoke-virtual {p2}, Lb/k/d/p;->a()Lb/k/d/v;

    move-result-object p2

    invoke-virtual {p2, p0}, Lb/k/d/v;->a(Landroidx/fragment/app/Fragment;)Lb/k/d/v;

    if-eqz p1, :cond_4

    check-cast p2, Lb/k/d/a;

    .line 1
    invoke-virtual {p2, v0}, Lb/k/d/a;->b(Z)I

    goto :goto_1

    .line 2
    :cond_4
    invoke-virtual {p2}, Lb/k/d/v;->a()I

    :goto_1
    return-void
.end method

.method public a0()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    .line 2
    iget-object v1, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lb/k/d/b;->i0:Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v1, p0, Lb/k/d/b;->j0:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Lb/k/d/b;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v0, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lb/k/d/b;->X:Landroid/os/Handler;

    iget v0, p0, Landroidx/fragment/app/Fragment;->x:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lb/k/d/b;->e0:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lb/k/d/b;->b0:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lb/k/d/b;->c0:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lb/k/d/b;->d0:Z

    iget-boolean v0, p0, Lb/k/d/b;->e0:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lb/k/d/b;->e0:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lb/k/d/b;->f0:I

    :cond_1
    return-void
.end method

.method public b0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->b0()V

    iget-boolean v0, p0, Lb/k/d/b;->k0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lb/k/d/b;->j0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/d/b;->j0:Z

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lb/k/d/b;->e0:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lb/k/d/b;->g0:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Lb/k/d/b;->g0:Z

    invoke-virtual {p0, p1}, Lb/k/d/b;->l(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    iget-object p1, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    iget v1, p0, Lb/k/d/b;->b0:I

    invoke-virtual {p0, p1, v1}, Lb/k/d/b;->a(Landroid/app/Dialog;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lb/k/d/b;->g0:Z

    invoke-virtual {p0}, Lb/k/d/b;->G0()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v2, p0, Lb/k/d/b;->g0:Z

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lb/k/d/b;->b0:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lb/k/d/b;->c0:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lb/k/d/b;->d0:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Lb/k/d/b;->e0:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Lb/k/d/b;->f0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public l(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lb/k/d/b;->F0()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public m0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->m0()V

    iget-object v0, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/k/d/b;->i0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public n0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    iget-object v0, p0, Lb/k/d/b;->h0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Lb/k/d/b;->i0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lb/k/d/b;->a(ZZ)V

    :cond_0
    return-void
.end method
