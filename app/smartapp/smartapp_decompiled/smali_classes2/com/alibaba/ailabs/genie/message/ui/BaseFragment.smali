.class public Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field private isFirstVisible:Z

.field private isFragmentVisible:Z

.field private isReuseView:Z

.field private rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initVariable()V
    .locals 2

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFirstVisible:Z

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFragmentVisible:Z

    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->rootView:Landroid/view/View;

    .line 93
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isReuseView:Z

    return-void
.end method


# virtual methods
.method protected isFragmentVisible()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFragmentVisible:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->initVariable()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 0

    .line 85
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 86
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->initVariable()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroyView()V
    .locals 0

    .line 80
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onFragmentFirstVisible()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onFragmentVisibleChange(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->rootView:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFirstVisible:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->onFragmentFirstVisible()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFirstVisible:Z

    :cond_0
    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->onFragmentVisibleChange(Z)V

    .line 72
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFragmentVisible:Z

    .line 75
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isReuseView:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->rootView:Landroid/view/View;

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected reuseView(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isReuseView:Z

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFirstVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->onFragmentFirstVisible()V

    .line 40
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFirstVisible:Z

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->onFragmentVisibleChange(Z)V

    .line 44
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFragmentVisible:Z

    return-void

    .line 47
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFragmentVisible:Z

    if-eqz p1, :cond_3

    .line 48
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->isFragmentVisible:Z

    .line 49
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/ui/BaseFragment;->onFragmentVisibleChange(Z)V

    :cond_3
    return-void
.end method
