.class public abstract Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseLazyLoadFragment.java"

# interfaces
.implements Lcom/ut/mini/IUTPageTrack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment$MyOnScrollListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_home"


# instance fields
.field protected isSelected:Z

.field protected isViewInitiated:Z

.field protected mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private prepareRequestData()V
    .locals 2

    .line 85
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

    const-string v1, "contacts_home"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->requestData()V

    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->getUtPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromtype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->getUtPageSpm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "spm-cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->addDefaultProperties(Ljava/util/Map;)V

    return-object v0
.end method

.method public getReferPage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getUtPageName()Ljava/lang/String;
.end method

.method public abstract getUtPageSpm()Ljava/lang/String;
.end method

.method public abstract isOpenUt()Z
.end method

.method public synthetic lambda$onResume$2$BaseLazyLoadFragment()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->getPageProperties()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 37
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

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->bindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResume()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->isViewInitiated:Z

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->isOpenUt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/main/-$$Lambda$BaseLazyLoadFragment$n07keOoIJexomRM0WrXpf7pod7k;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/-$$Lambda$BaseLazyLoadFragment$n07keOoIJexomRM0WrXpf7pod7k;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

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
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 50
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "contacts_home"

    const-string p2, "onViewCreated: "

    .line 51
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->isViewInitiated:Z

    .line 53
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->isSelected:Z

    if-eqz p1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->prepareRequestData()V

    :cond_0
    return-void
.end method

.method public abstract requestData()V
.end method

.method public setHandler(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isViewInitiated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->isViewInitiated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts_home"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->isSelected:Z

    if-eqz p1, :cond_0

    .line 75
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->isViewInitiated:Z

    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/BaseLazyLoadFragment;->prepareRequestData()V

    :cond_0
    return-void
.end method
