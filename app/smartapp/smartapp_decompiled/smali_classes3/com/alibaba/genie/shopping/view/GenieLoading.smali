.class public final Lcom/alibaba/genie/shopping/view/GenieLoading;
.super Landroid/app/DialogFragment;
.source "GenieLoading.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieLoading"


# instance fields
.field private isShown:Z

.field private mLoading:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private isActivityLiving(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 107
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

.method private isShowProgress()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieLoading;->mLoading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieLoading;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public dismiss(Landroid/app/Activity;)V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/GenieLoading;->isShown:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/GenieLoading;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/GenieLoading;->isShowProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/view/GenieLoading;->isActivityLiving(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 75
    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/GenieLoading;->isShown:Z

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/GenieLoading;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$style;->LoadingDialogStyle:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/shopping/view/GenieLoading;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 41
    sget p3, Lcom/alibaba/ailabs/genie/shopping/R$layout;->layout_genie_loading_default:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v0, 0x0

    .line 91
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/GenieLoading;->isShown:Z

    .line 92
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/GenieLoading;->isShowProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieLoading;->mLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 53
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 55
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/GenieLoading;->isShowProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/GenieLoading;->mLoading:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$id;->loading_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/GenieLoading;->mLoading:Landroid/widget/ProgressBar;

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/GenieLoading;->isShown:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/GenieLoading;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/GenieLoading;->isShowProgress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/view/GenieLoading;->isActivityLiving(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/GenieLoading;->isShown:Z

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "GenieLoading"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/genie/shopping/view/GenieLoading;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
