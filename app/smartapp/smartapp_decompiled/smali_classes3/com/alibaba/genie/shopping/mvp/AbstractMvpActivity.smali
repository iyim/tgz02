.class public abstract Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AbstractMvpActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/alibaba/genie/shopping/mvp/IMvpView;",
        "P:",
        "Lcom/alibaba/genie/shopping/mvp/IMvpPresenter<",
        "TV;>;>",
        "Landroid/support/v4/app/FragmentActivity;"
    }
.end annotation


# instance fields
.field private mPresenter:Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected abstract createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->mPresenter:Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iget-object p1, p0, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->mPresenter:Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->mPresenter:Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->mPresenter:Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    if-eqz p1, :cond_1

    .line 33
    move-object v0, p0

    check-cast v0, Lcom/alibaba/genie/shopping/mvp/IMvpView;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;->attachMvpView(Lcom/alibaba/genie/shopping/mvp/IMvpView;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 41
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/AbstractMvpActivity;->mPresenter:Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;->detachMvpView()V

    :cond_0
    return-void
.end method
