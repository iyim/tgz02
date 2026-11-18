.class public Lcom/alibaba/genie/shopping/activity/BaseFragment;
.super Landroid/app/Fragment;
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

    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initVariable()V
    .locals 2

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFirstVisible:Z

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFragmentVisible:Z

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->rootView:Landroid/view/View;

    .line 95
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isReuseView:Z

    return-void
.end method


# virtual methods
.method protected isFragmentVisible()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFragmentVisible:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/BaseFragment;->initVariable()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 88
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/BaseFragment;->initVariable()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroyView()V
    .locals 0

    .line 82
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

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

    .line 66
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 67
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->rootView:Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/BaseFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFirstVisible:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/BaseFragment;->onFragmentFirstVisible()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFirstVisible:Z

    :cond_0
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/BaseFragment;->onFragmentVisibleChange(Z)V

    .line 74
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFragmentVisible:Z

    .line 77
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isReuseView:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->rootView:Landroid/view/View;

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected reuseView(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isReuseView:Z

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 37
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFirstVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/BaseFragment;->onFragmentFirstVisible()V

    .line 42
    iput-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFirstVisible:Z

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/BaseFragment;->onFragmentVisibleChange(Z)V

    .line 46
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFragmentVisible:Z

    return-void

    .line 49
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFragmentVisible:Z

    if-eqz p1, :cond_3

    .line 50
    iput-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/BaseFragment;->isFragmentVisible:Z

    .line 51
    invoke-virtual {p0, v1}, Lcom/alibaba/genie/shopping/activity/BaseFragment;->onFragmentVisibleChange(Z)V

    :cond_3
    return-void
.end method
