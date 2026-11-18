.class public abstract Lcom/alibaba/ailabs/base/activity/BaseActivity;
.super Lcom/alibaba/ailabs/base/activity/InitActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;",
        ">",
        "Lcom/alibaba/ailabs/base/activity/InitActivity;",
        "Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;"
    }
.end annotation


# instance fields
.field protected mLoaddingView:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

.field protected mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alibaba/ailabs/base/activity/InitActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkPresenterIsNull()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please init mPresenter in initPresenter() method "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hideLoaddingview()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mLoaddingView:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->dismiss()V

    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected abstract initPresenter()V
.end method

.method protected initSome(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/ailabs/base/activity/BaseActivity;->initPresenter()V

    .line 25
    invoke-direct {p0}, Lcom/alibaba/ailabs/base/activity/BaseActivity;->checkPresenterIsNull()V

    .line 26
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/base/activity/InitActivity;->initSome(Landroid/os/Bundle;)V

    return-void
.end method

.method protected initView()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/base/activity/InitActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    invoke-interface {p1}, Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;->onCreate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/alibaba/ailabs/base/activity/InitActivity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mLoaddingView:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->dismiss()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    invoke-interface {v0}, Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;->onDestroy()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/alibaba/ailabs/base/activity/InitActivity;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    invoke-interface {v0}, Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/alibaba/ailabs/base/activity/InitActivity;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    invoke-interface {v0}, Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;->onResume()V

    return-void
.end method

.method public showLoaddingView()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mLoaddingView:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    iget-object v1, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mLoaddingView:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/base/activity/BaseActivity;->mLoaddingView:Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->show()V

    return-void
.end method
