.class public abstract Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected abstract initValues()V
.end method

.method protected abstract initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method protected abstract onActivityCreated()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->onActivityCreated()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->initValues()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public thisFragment()Lcom/alibaba/ailabs/genie/contacts/common/base/BaseFragment;
    .locals 0

    return-object p0
.end method
