.class public final Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;
.super Landroid/support/v4/app/DialogFragment;
.source "GenieCompatLoading.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieCompatLoading"


# instance fields
.field private isShown:Z

.field private mLoading:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private isActivityLiving(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 87
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

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->mLoading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->mLoading:Landroid/widget/ProgressBar;

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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget p1, Lcom/alibaba/ailabs/genie/widget/R$style;->LoadingDialogStyle:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->setStyle(II)V

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

    .line 46
    sget p3, Lcom/alibaba/ailabs/genie/widget/R$layout;->layout_genie_loading_default:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->isShown:Z

    .line 75
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->isShowProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->mLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 60
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->isShowProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->mLoading:Landroid/widget/ProgressBar;

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

    .line 51
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    sget p2, Lcom/alibaba/ailabs/genie/widget/R$id;->loading_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->mLoading:Landroid/widget/ProgressBar;

    return-void
.end method

.method public show(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->isShown:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->isShowProgress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->isActivityLiving(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->isShown:Z

    .line 69
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "GenieCompatLoading"

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/widget/GenieCompatLoading;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
