.class public abstract Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field private isFirstIn:Z

.field protected isFragmentVisibleToUser:Z

.field protected mFragmentRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->isFirstIn:Z

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->isFragmentVisibleToUser:Z

    return-void
.end method


# virtual methods
.method public abstract doOlnyOnceAtAfterStart()V
.end method

.method public abstract getLayoutId()I
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 26
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->mFragmentRootView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->mFragmentRootView:Landroid/view/View;

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->mFragmentRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 37
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->mFragmentRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->mFragmentRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPageSelect()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->isFragmentVisibleToUser:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->isFragmentVisibleToUser:Z

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 46
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->isFirstIn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->isFirstIn:Z

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseFragment;->doOlnyOnceAtAfterStart()V

    :cond_0
    return-void
.end method
