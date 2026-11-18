.class public Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lcom/alibaba/ailabs/genie/authservice/mvp/view/IBaseView;",
        ">",
        "Landroid/app/Activity;"
    }
.end annotation


# instance fields
.field protected dialogFragmentFactory:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/DialogFragmentFactory;

.field protected mBaseDialogFragment:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

.field protected mRequestPermissionPresenter:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected createRequestPresenter(Ljava/lang/String;)V
    .locals 2

    .line 26
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->mRequestPermissionPresenter:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    .line 28
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->mRequestPermissionPresenter:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    move-object v0, p0

    check-cast v0, Lcom/alibaba/ailabs/genie/authservice/mvp/view/IBaseView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->attachView(Lcom/alibaba/ailabs/genie/authservice/mvp/view/IBaseView;)V

    return-void
.end method

.method protected initDialoFragment(I)V
    .locals 1

    .line 34
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/DialogFragmentFactory;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/DialogFragmentFactory;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->dialogFragmentFactory:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/DialogFragmentFactory;

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->dialogFragmentFactory:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/DialogFragmentFactory;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/DialogFragmentFactory;->getDialogFragment(I)Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->mBaseDialogFragment:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDestroy()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->mBaseDialogFragment:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    .line 45
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->mRequestPermissionPresenter:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->detachView()V

    .line 48
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->mRequestPermissionPresenter:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->breakReference()V

    .line 49
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->mRequestPermissionPresenter:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    .line 52
    :cond_0
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->dialogFragmentFactory:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/DialogFragmentFactory;

    return-void
.end method
