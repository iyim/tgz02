.class public abstract Lcom/alibaba/ailabs/appbox/fragment/BaseLazyLoadFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseLazyLoadFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseLazyLoadFragment"


# instance fields
.field protected isViewInitiated:Z

.field protected isVisibleToUser:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private prepareRequestData()V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareRequestData() called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseLazyLoadFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseLazyLoadFragment;->requestData()V

    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/fragment/BaseLazyLoadFragment;->bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResume()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseLazyLoadFragment;->isViewInitiated:Z

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
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 41
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "BaseLazyLoadFragment"

    const-string p2, "onViewCreated: "

    .line 42
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseLazyLoadFragment;->isViewInitiated:Z

    .line 45
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseLazyLoadFragment;->isVisibleToUser:Z

    if-eqz p1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseLazyLoadFragment;->prepareRequestData()V

    :cond_0
    return-void
.end method

.method public abstract requestData()V
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setUserVisibleHint() called with: isVisibleToUser = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseLazyLoadFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 67
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseLazyLoadFragment;->isVisibleToUser:Z

    if-eqz p1, :cond_0

    .line 68
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/fragment/BaseLazyLoadFragment;->isViewInitiated:Z

    if-eqz p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/fragment/BaseLazyLoadFragment;->prepareRequestData()V

    :cond_0
    return-void
.end method
