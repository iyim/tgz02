.class public final Lcom/alibaba/genie/shopping/view/GenieProgressDialog;
.super Ljava/lang/Object;
.source "GenieProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation build Landroid/support/annotation/UiThread;
.end annotation


# static fields
.field private static final PROGRESS_STYLE_DEFAULT:I = 0x2


# instance fields
.field private isShown:Z

.field private mHostActivity:Landroid/app/Activity;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressStyle:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mHostActivity:Landroid/app/Activity;

    .line 26
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressStyle:I

    .line 28
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressStyle:I

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 29
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mHostActivity:Landroid/app/Activity;

    .line 34
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x2

    .line 35
    iput p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressStyle:I

    .line 36
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressStyle:I

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 37
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private isActivityLiving(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->isShown:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mHostActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->isActivityLiving(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 76
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->isShown:Z

    .line 77
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public getProgressStyle()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressStyle:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 85
    iget-boolean p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->isShown:Z

    if-eqz p1, :cond_0

    .line 87
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->isShown:Z

    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 1

    .line 49
    iput p1, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressStyle:I

    .line 50
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->isShown:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mHostActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->isActivityLiving(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 65
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->isShown:Z

    .line 66
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
