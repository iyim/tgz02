.class public abstract Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseLazyLoadFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment$MyOnScrollListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_BaseLazyLoadFragment"


# instance fields
.field protected isSelected:Z

.field protected isViewInitiated:Z

.field protected mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field private mListener:Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;

.field private mReceiver:Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 101
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$BaseLazyLoadFragment$A6w_xZQhWaVxARcBYYqPYw1LuI8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$BaseLazyLoadFragment$A6w_xZQhWaVxARcBYYqPYw1LuI8;-><init>(Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->mListener:Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;

    return-void
.end method

.method private prepareRequestData()V
    .locals 2

    .line 86
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

    const-string v1, "contacts_BaseLazyLoadFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->requestData()V

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 91
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->mListener:Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;-><init>(Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->mReceiver:Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->mReceiver:Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterReciver()V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->mReceiver:Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public getCheckPackageData(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBean;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$new$48$BaseLazyLoadFragment(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 103
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$BaseLazyLoadFragment$bWuRyHQqT2uZalsSWUYspTncKXQ;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$BaseLazyLoadFragment$bWuRyHQqT2uZalsSWUYspTncKXQ;-><init>(Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public synthetic lambda$null$47$BaseLazyLoadFragment()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->prepareRequestData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 39
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

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 70
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->unRegisterReciver()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResume()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->isViewInitiated:Z

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

    .line 52
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "contacts_BaseLazyLoadFragment"

    const-string p2, "onViewCreated: "

    .line 53
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->registerReceiver()V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->isViewInitiated:Z

    .line 56
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->isSelected:Z

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->prepareRequestData()V

    :cond_0
    return-void
.end method

.method public abstract requestData()V
.end method

.method public setHandler(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isViewInitiated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->isViewInitiated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_BaseLazyLoadFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->isSelected:Z

    if-eqz p1, :cond_0

    .line 76
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->isViewInitiated:Z

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/fragment/BaseLazyLoadFragment;->prepareRequestData()V

    :cond_0
    return-void
.end method
